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
from .serializers import RegisterSerializer, UserSerializer, EditUserSerializer
from django.views.decorators.csrf import csrf_exempt
from django.contrib.auth.models import User, auth
from rest_framework import status
import json

@csrf_exempt
def edit_profile(request):
    if request.method == "POST":
        email = request.POST['email']
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
        response_data = {}
        response_data['result'] = 'error'
        if username is not None:
            user = auth.authenticate(username=username, password=password)
            if user is None:
                response_data['message'] = 'Username or password is not correct'
                return HttpResponse(json.dumps(response_data), content_type="application/json", status=401)
        if email is not None:
            user = User.objects.objects.get(email=email)
            if user is None:
                response_data['message'] = 'Email is not correct'
                return HttpResponse(json.dumps(response_data), content_type="application/json", status=401)
            user = auth.authenticate(username=user.name, password=password)
            if user is None:
                response_data['message'] = 'Password is not correct'
                return HttpResponse(json.dumps(response_data), content_type="application/json", status=401)
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
