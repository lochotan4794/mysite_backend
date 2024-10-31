from django.shortcuts import redirect
from django.views.generic import CreateView
from .forms import *
from .models import *
from django.shortcuts import render
from django.urls import reverse_lazy
from django.contrib.auth.forms import UserCreationForm
from django.views.generic.edit import CreateView
from django.views.decorators.csrf import csrf_exempt
from django.contrib.auth.models import User, auth
from django.http import HttpResponse, JsonResponse
from .serializers import UserProfileSerializer, UserSerializer

# Create your views here.
@csrf_exempt
def edit_profile(request):
    if request.method == "POST":
        email = request.POST['email']
        # print(email)
        #user = get_object_or_404(User, email=email)
        user = User.objects.get(email=email)
        try:
            profile = UserProfile.objects.get(user_name=user)
        except UserProfile.DoesNotExist:
            profile = UserProfile.create(user_name=user, phone=None, avatar=None, accept=False)
        user.email = email
        for key in request.POST.keys():
            if key == "phone_number" or key == "avatar":
                setattr(profile, key,  request.POST[key])
            if key == "accept_email":
                if  request.POST[key] == "true":
                    setattr(profile, key,  True)
                else:
                    setattr(profile, key,  False)
            else:
                if request.POST[key] != "undefined":
                    setattr(user, key,  request.POST[key])
        user.save()
        profile.save()
        data = UserSerializer(user).data
        return JsonResponse(data, safe=False)

def home(request):
    return render(request, "users/home.html")


class SignUp(CreateView):
    form_class = UserCreationForm
    success_url = reverse_lazy("login")
    template_name = "registration/signup.html"


@csrf_exempt
def load_profile(request):
    if request.method == 'POST':
        email = request.POST['email']
        try:
            user = User.objects.get(username=email)
            data = UserSerializer(user).data
            return JsonResponse(data, safe=False)
        except User.DoesNotExist:
            # return HttpResponse(status=500)
            user = User.objects.create_user(username=request.POST['username'],
                                 email=request.POST['email'])
            user.save()
            data = UserSerializer(user).data
            return JsonResponse(data, safe=False)

# class AddUser(CreateView):
#     form_class = AddUserMultiForm
#     template_name = "add-user.html"
#     success_url = '/your-url-after-user-created'

#     def form_valid(self, form):
#         user = form['user'].save()
#         profile = form['profile'].save(commit=False)
#         profile.user_name = User.objects.get(username=user.username)
#         profile.save()
#         return redirect(self.success_url)
