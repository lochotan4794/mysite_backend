from django.urls import path  
from . import views

urlpatterns = [  
    path('', views.home, name = 'home'),  
    path('register/', views.register_user, name = 'index'),  
    path("login_user", views.login_user, name="login_user"),
    path("edit_user", views.edit_profile, name="login_user"),
    path('activate/(?P<uidb64>[0-9A-Za-z_\-]+)/(?P<token>[0-9A-Za-z]{1,13}-[0-9A-Za-z]{1,20})/',  
        views.activate, name='activate'),  
]  