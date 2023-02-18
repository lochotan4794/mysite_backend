from django.http import HttpResponse, JsonResponse
from django.shortcuts import render
from .forms import SignupForm
from django.contrib.sites.shortcuts import get_current_site
from django.utils.encoding import force_bytes, force_str
from django.utils.http import urlsafe_base64_encode, urlsafe_base64_decode
from django.template.loader import render_to_string
from .tokens import account_activation_token
from django.core.mail import EmailMessage
from django.contrib.auth import get_user_model
from rest_framework_simplejwt.tokens import RefreshToken
from .serializers import RegisterSerializer, UserSerializer, LoginSerializer
from django.views.decorators.csrf import csrf_exempt
from django.contrib.auth.models import User, auth
from rest_framework import status
from rest_framework.authtoken.models import Token
from rest_framework.views import APIView
from rest_framework.response import Response
#https://iheanyi.com/journal/user-registration-authentication-with-django-django-rest-framework-react-and-redux/
from rest_framework.authtoken.views import ObtainAuthToken
from rest_framework import generics, permissions


# class UserLogIn(ObtainAuthToken):

#     def post(self, request, *args, **kwargs):
#         serializer = self.serializer_class(data=request.data)
#         if serializer.is_valid():
#             user = serializer.validated_data['user']
#             token = Token.objects.get(user=user)
#             return Response({
#                 'token': token.key,
#                 'id': user.pk,
#                 'username': user.username
#             })
#         else:
#             print(serializer.errors)
#             return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

class UserLogIn(generics.GenericAPIView):

    def post(self, request, *args, **kwargs):
        serializer = UserSerializer(data=request.data)
        if serializer.is_valid():
            user = serializer.validated_data['user']
            # token = Token.objects.get(user=user)
            return Response({
                # 'token': token.key,
                'id': user.pk,
                'username': user.username
            })
        else:
            return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

# class CustomAuthToken(ObtainAuthToken):

#     def post(self, request, *args, **kwargs):
#         serializer = self.serializer_class(data=request.data,
#                                            context={'request': request})
#         serializer.is_valid(raise_exception=True)
#         user = serializer.validated_data['user']
#         token, created = Token.objects.get_or_create(user=user)
#         return Response({
#             'token': token.key,
#             'user_id': user.pk,
#             'email': user.email
#         })

class UserCreate(generics.GenericAPIView):
    """ 
    Creates the user. 
    """

    def post(self, request, format='json'):
        serializer = UserSerializer(data=request.data)
        if serializer.is_valid():
            user = serializer.save()
            if user:
                try:
                    token = Token.objects.get(user_id=user.id)
                except Token.DoesNotExist:
                    token = Token.objects.create(user=user)
                json = serializer.data
                json['token'] = token.key
                return Response(json, status=status.HTTP_201_CREATED)

        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)


@csrf_exempt
def edit_profile(request):
    if request.method == "POST":
        email = request.POST['email']
        # print(email)
        #user = get_object_or_404(User, email=email)
        user = User.objects.get(email=email)
        user.email = email
        for key in request.POST.keys():
            if request.POST[key] != "undefined":
                setattr(user, key,  request.POST[key])
        user.save()
        data = UserSerializer(user).data
        return JsonResponse(data, safe=False)


@csrf_exempt
def login_user(request):
    if request.method == 'POST':
        username = request.POST.get('username', None)
        password = request.POST.get('password', None)
        email = request.POST.get('email', None)
        if username is not None:
            user = auth.authenticate(username=username, password=password)
        if email is not None:
            user = User.objects.get(email=email)
            user = auth.authenticate(username=user.username, password=password)
        if user is not None:
            auth.login(request, user)
            uid = User.objects.get(username=user.username)
            data = UserSerializer(uid).data
            return JsonResponse(data, safe=False)
        else:
            return HttpResponse(status=500)


def home(request):
    return HttpResponse('Please confirm your email address to complete the registration')


def index(request):
    return HttpResponse('Please confirm your email address to complete the registration')


@csrf_exempt
def verify_email(request):
    if request.method == 'POST':
        form = SignupForm(request.POST)
        if form.is_valid():
            # save form in the memory not in database
            user = form.save(commit=False)
            user.is_active = False
            user.save(using='users')
            # to get the domain of the current site
            current_site = get_current_site(request)
            mail_subject = 'Activation link has been sent to your email id'
            message = render_to_string('registration/acc_active_email.html', {
                'user': user,
                'domain': current_site.domain,
                'uid': urlsafe_base64_encode(force_bytes(user.pk)),
                'token': account_activation_token.make_token(user),
            })
            to_email = form.cleaned_data.get('email')
            email = EmailMessage(
                mail_subject, message, to=[to_email]
            )
            email.send()
            return HttpResponse('Please confirm your email address to complete the registration')
    else:
        form = SignupForm()
    return render(request, 'registration/signup.html', {'form': form})


def signup(request):
    if request.method == 'POST':
        form = SignupForm(request.POST)
        if form.is_valid():
            # save form in the memory not in database
            user = form.save(commit=False)
            user.is_active = False
            user.save(using="users")
            # to get the domain of the current site
            current_site = get_current_site(request)
            mail_subject = 'Activation link has been sent to your email id'
            message = render_to_string('registration/acc_active_email.html', {
                'user': user,
                'domain': current_site.domain,
                'uid': urlsafe_base64_encode(force_bytes(user.pk)),
                'token': account_activation_token.make_token(user),
            })
            to_email = form.cleaned_data.get('email')
            email = EmailMessage(
                mail_subject, message, to=[to_email]
            )
            email.send()
            return HttpResponse('Please confirm your email address to complete the registration')
    else:
        form = SignupForm()
    return render(request, 'registration/signup.html', {'form': form})


def activate(request, uidb64, token):
    User = get_user_model()
    try:
        uid = force_str(urlsafe_base64_decode(uidb64))
        user = User.objects.get(pk=uid)
    except(TypeError, ValueError, OverflowError, User.DoesNotExist):
        user = None
    if user is not None and account_activation_token.check_token(user, token):
        user.is_active = True
        user.save(using="users")
        return HttpResponse('Thank you for your email confirmation. Now you can login your account.')
    else:
        return HttpResponse('Activation link is invalid!')


@csrf_exempt
def register_user(request):
    if request.method == 'POST':
        serializer = RegisterSerializer(data=request.POST)
        serializer.is_valid(raise_exception=True)
        user = serializer.save(using="users")
        refresh = RefreshToken.for_user(user)
        res = {
            "refresh": str(refresh),
            "access": str(refresh.access_token),
        }

        return JsonResponse({
            "user": serializer.data,
            "refresh": res["refresh"],
            "token": res["access"]
        }, status=status.HTTP_201_CREATED)
