from __future__ import unicode_literals
from django.db import models
from django.db.models.signals import *
from django.contrib.auth.models import User

STATUS = (
    (0, "YES"),
    (1, "NO")
)


class UserProfile(models.Model):

    user_name = models.OneToOneField(
        User, on_delete=models.CASCADE, related_name='profile')
    phone_number = models.CharField(max_length=100)
    avatar = models.ImageField(upload_to='images', blank=True)
    accept_email = models.IntegerField(choices=STATUS, default=1)

    # class Meta:
    #     ordering = ['user_name']

    def __str__(self):
        return self.title

    def __unicode__(self):  # __str__
        return unicode(self.user_name)
