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


def home(request):
    return render(request, "users/home.html")


class SignUp(CreateView):
    form_class = UserCreationForm
    success_url = reverse_lazy("login")
    template_name = "registration/signup.html"


@csrf_exempt
def load_profile(request):
    if request.method == 'POST':
        username = request.POST['username']
        user = User.objects.get(username=username)
        if user is not None:
            data = UserSerializer(user).data
            return JsonResponse(data, safe=False)
        else:
            return HttpResponse(status=500)

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
