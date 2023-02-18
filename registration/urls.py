from django.urls import path  
from . import views
from registration.views import UserLogIn


urlpatterns = [  
    path('', views.home, name = 'home'),  
    path('register/', views.register_user, name = 'index'),  
    # path('register/', views.UserCreate.as_view(), name = 'index'),  
    path("login_user", views.login_user, name="login_user"),
    # path('login_user', UserLogIn.as_view()),
    path("edit_user", views.edit_profile, name="login_user"),
    path('activate/(?P<uidb64>[0-9A-Za-z_\-]+)/(?P<token>[0-9A-Za-z]{1,13}-[0-9A-Za-z]{1,20})/',  
        views.activate, name='activate'),  
]  