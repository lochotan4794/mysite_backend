from . import views
from django.urls import path
from .views import *

app_name = 'users'

urlpatterns = [
    path('', views.home, name="home"),
    path('signup/', views.SignUp.as_view(), name="signup"),
    path('load_profile/', views.load_profile, name="signup"),
    path("edit_user", views.edit_profile, name="login_user"),
    path("phone_auth", views.start, name="phone_auth"),
    path("phone_check", views.check, name="phone_check"),
    path('send-notification/<str:fcm_notification_device_key>' , send_notification),
    path('firebase-messaging-sw.js',showFirebaseJS,name="show_firebase_js"),
    path('send-notification-device' , send_notification_to_device),
]
