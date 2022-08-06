from __future__ import unicode_literals
from django.db import models
from django.db.models.signals import *
from django.contrib.auth.models import User


class UserProfile(models.Model):

    user_name = models.OneToOneField(
        User, on_delete=models.CASCADE, related_name='profile')
    phone_number = models.CharField(max_length=100)
    avatar = models.ImageField(upload_to='images', blank=True)

    def __unicode__(self):  # __str__
        return unicode(self.user_name)
