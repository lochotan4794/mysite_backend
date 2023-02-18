from django.db import models
# https://viblo.asia/p/authentication-voi-django-rest-framework-924lJ3x65PM
from django.conf import settings
from django.dispatch import receiver
from django.db.models.signals import post_save
from rest_framework.authtoken.models import Token
from django.contrib.auth.models import User
from django.contrib.auth.models import User
from rest_framework.authtoken.models import Token


@receiver(post_save, sender=settings.AUTH_USER_MODEL)
def create_auth_token(sender, instance=None, created=False, **kwargs):
    """ When a user is created create an authorization token for them """
    if created:
        Token.objects.create(user=instance)



