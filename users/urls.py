from . import views
from django.urls import path

app_name = 'users'

urlpatterns = [
    path('', views.home, name="home"),
    path('signup/', views.SignUp.as_view(), name="signup"),
]
