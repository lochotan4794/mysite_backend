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
from django.conf import settings
import requests
import json
import argparse
import requests
import google.auth.transport.requests
import os
from dotenv import load_dotenv, find_dotenv
from twilio.rest import Client

load_dotenv(find_dotenv())

# print(os.getenv('PROJECT'))

from google.oauth2 import service_account

# https://github.com/firebase/quickstart-python/blob/2c68e7c5020f4dbb072cca4da03dba389fbbe4ec/messaging/messaging.py#L26-L35
PROJECT_ID = 't-test-700f2'
BASE_URL = 'https://fcm.googleapis.com'
FCM_ENDPOINT = 'v1/projects/' + PROJECT_ID + '/messages:send'
FCM_URL = BASE_URL + '/' + FCM_ENDPOINT
SCOPES = ['https://www.googleapis.com/auth/firebase.messaging']


TWILIO_ACCOUNT_SID = os.getenv('TWILIO_ACCOUNT_SID')
TWILIO_AUTH_TOKEN = os.getenv('TWILIO_AUTH_TOKEN')
VERIFY_SERVICE_SID = os.getenv('VERIFY_SERVICE_SID')

client = Client(TWILIO_ACCOUNT_SID, TWILIO_AUTH_TOKEN)



def _build_common_message():
  """Construct common notifiation message.

  Construct a JSON object that will be used to define the
  common parts of a notification message that will be sent
  to any app instance subscribed to the news topic.
  """
  return {
    'message': {
      'topic': 'news',
      'notification': {
        'title': 'FCM Notification',
        'body': 'Notification from FCM'
      }
    }
  }
  
def _build_specific_device_message():
  """Construct common notifiation message.

  Construct a JSON object that will be used to define the
  common parts of a notification message that will be sent
  to any app instance subscribed to the news topic.
  """
  return {
   "message":{
      "token":"dwgcg_QeXUTCqdiCaWw_9I:APA91bHdf-JT_r9JaCmulnL9NRguhasra-rerrAlpyPK8wAz8Le0VSXRg4aUQRub_dAspOkCHEB1ToKsPRgWzLeC_MdTZztyahEuhUvYQWVAz3LsIxcxGU4",
      "notification":{
        "body":"This is an FCM notification message!",
        "title":"FCM Message"
      }
   }
}

def _build_override_message():
  """Construct common notification message with overrides.

  Constructs a JSON object that will be used to customize
  the messages that are sent to iOS and Android devices.
  """
  fcm_message = _build_common_message()

  apns_override = {
    'payload': {
      'aps': {
        'badge': 1
      }
    },
    'headers': {
      'apns-priority': '10'
    }
  }

  android_override = {
    'notification': {
      'click_action': 'android.intent.action.MAIN'
    }
  }

  fcm_message['message']['android'] = android_override
  fcm_message['message']['apns'] = apns_override

  return fcm_message
# [START retrieve_access_token]
def _get_access_token():
  """Retrieve a valid access token that can be used to authorize requests.

  :return: Access token.
  """
  credentials = service_account.Credentials.from_service_account_file(
    't-test-700f2-firebase-adminsdk-fbsvc-72cb33983a.json', scopes=SCOPES)
  request = google.auth.transport.requests.Request()
  credentials.refresh(request)
  return credentials.token
# [END retrieve_access_token]

def _send_fcm_message(fcm_message):
  """Send HTTP request to FCM with given message.

  Args:
    fcm_message: JSON object that will make up the body of the request.
  """
  # [START use_access_token]
  headers = {
    'Authorization': 'Bearer ' + _get_access_token(),
    'Content-Type': 'application/json; UTF-8',
  }
  # [END use_access_token]
  resp = requests.post(FCM_URL, data=json.dumps(fcm_message), headers=headers)

  if resp.status_code == 200:
    print('Message sent to Firebase for delivery, response:')
    print(resp.text)
  else:
    print('Unable to send message to Firebase')
    print(resp.text)
    
    
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
    
#https://github.com/robinske/verify-server/blob/master/app.py

@csrf_exempt
def start(request):
  if request.method == 'POST':
    TWILIO_ACCOUNT_SID = os.environ.get('TWILIO_ACCOUNT_SID')
    TWILIO_AUTH_TOKEN = os.environ.get('TWILIO_AUTH_TOKEN')
    VERIFY_SERVICE_SID = os.environ.get('VERIFY_SERVICE_SID')

    client = Client(TWILIO_ACCOUNT_SID, TWILIO_AUTH_TOKEN)
    country_code = request.POST['country_code']
    phone_number = request.POST['phone_number']
    full_phone = "+{}{}".format(country_code, phone_number)
    try:
        r = client.verify \
            .services(VERIFY_SERVICE_SID) \
            .verifications \
            .create(to=full_phone, channel='sms')
        response_data = {}
        response_data['result'] = r.status
        response_data['message'] = 'Valid token'
        return JsonResponse(response_data)
    except Exception as e:
        response_data = {}
        response_data['result'] = 'NOT OK'
        response_data['message'] = 'Error checking'
        return JsonResponse(response_data) 
           
@csrf_exempt
def check(request):
    if request.method == 'POST':
      country_code = request.POST['country_code']
      phone_number = request.POST['phone_number']
      full_phone = "+{}{}".format(country_code, phone_number)
      code = request.POST['verification_code']
      
      TWILIO_ACCOUNT_SID = os.environ.get('TWILIO_ACCOUNT_SID')
      TWILIO_AUTH_TOKEN = os.environ.get('TWILIO_AUTH_TOKEN')
      VERIFY_SERVICE_SID = os.environ.get('VERIFY_SERVICE_SID')

      client = Client(TWILIO_ACCOUNT_SID, TWILIO_AUTH_TOKEN)

      SERVICE = VERIFY_SERVICE_SID

      try:
          r = client.verify \
              .services(SERVICE) \
              .verification_checks \
              .create(to=full_phone, code=code)

          if r.status == "approved":
              response_data = {}
              response_data['result'] = 'OK'
              response_data['message'] = 'Valid token'
              return JsonResponse(response_data)
          else:
              response_data = {}
              response_data['result'] = 'NOT OK'
              response_data['message'] = 'invalid token'
              return JsonResponse(response_data)
      except Exception as e:
              response_data = {}
              response_data['result'] = 'NOT OK'
              response_data['message'] = 'Error checking'
              return JsonResponse(response_data)

@csrf_exempt
def load_profile(request):
    if request.method == 'POST':
        email = request.POST['email']
        try:
            user = User.objects.get(username=request.POST['username'])
            data = UserSerializer(user).data
            return JsonResponse(data, safe=False)
        except User.DoesNotExist:
            # return HttpResponse(status=500)
            user = User.objects.create_user(username=request.POST['username'],
                                 email=request.POST['email'])
            user.first_name = request.POST['username']
            user.last_name = request.POST['username']
            user.set_password('password')
            user.is_active = True
            user.is_staff = False
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


def send_message(registration_ids , message_title , message_body, message_subtitle):
    # cloud_messaging_api_key = settings.CLOUD_MESSAGING_API_KEY
    cloud_messaging_api_key = os.getenv('CLOUD_MESSAGING_API_KEY')
    url = "https://fcm.googleapis.com/fcm/send"

    headers = {
    "Content-Type":"application/json",
    "Authorization": 'key=' + cloud_messaging_api_key
    }

    payload = {
        "registration_ids" :registration_ids,
        "priority" : "high",
        "notification" : {
            "body" : message_body,
            "title" : message_title,
            "subtitle": message_subtitle
            # "image" : image_link,
            # "icon": icon_link,
        }
    }

    result = requests.post(url,  data=json.dumps(payload), headers=headers )
    print(result)
    # print(result.json())


def index(request):
    # key pair under web configuration
    # vapid_key = settings.PUBLIC_VAPID_KEY
    vapid_key = os.getenv('PUBLIC_VAPID_KEY')
    context = {}
    context['vapid_key'] = vapid_key
    return render(request , 'index.html', context)

def send_notification(request, fcm_notification_device_key):
    device_registration  = [
        fcm_notification_device_key
    ]
    # send_message(device_registration , 'This is the Message Title' , 'This is the Message Body', 'This is the Message Subtitle')
    common_message = _build_specific_device_message()
    _send_fcm_message(common_message)
    return HttpResponse("Sent ")


@csrf_exempt
def send_notification_to_device(request):
    if request.method == 'POST':
      token = request.POST['token']
      message  =  {
          "message":{
              "token": token,
              "notification":{
                "body":"This is an FCM notification message!",
                "title":"FCM Message"
              }
          }
        }
      _send_fcm_message(message)
    return HttpResponse("Sent ") 
        
def showFirebaseJS(request):
    data='importScripts("https://www.gstatic.com/firebasejs/8.2.0/firebase-app.js");' \
         'importScripts("https://www.gstatic.com/firebasejs/8.2.0/firebase-messaging.js"); ' \
         'var firebaseConfig = {' \
         '        apiKey: "AIzaSyCiAdGczVjOPZdfFuFTHlt8wpjYTVQcUqQ",' \
         '        authDomain: "t-test-700f2.firebaseapp.com",' \
         '        projectId: "t-test-700f2",' \
         '        storageBucket: " t-test-700f2.firebasestorage.app",' \
         '        messagingSenderId: "327626225298",' \
         '        appId: "1:327626225298:web:7682abe65275b298aa184b",' \
         '        measurementId: "G-EF7KXQC5MR"' \
         ' };' \
         'firebase.initializeApp(firebaseConfig);' \
         'const messaging=firebase.messaging();' \
         'messaging.setBackgroundMessageHandler(function (payload) {' \
         '    console.log(payload);' \
         '    const notification=JSON.parse(payload);' \
         '    const notificationOption={' \
         '        body:notification.body,' \
         '        icon:notification.icon' \
         '    };' \
         '    return self.registration.showNotification(payload.notification.title,notificationOption);' \
         '});'

    return HttpResponse(data,content_type="text/javascript")
