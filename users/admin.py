from django.contrib import admin
from .models import UserProfile
# Register your models here.


@admin.register(UserProfile)
class CustomUserAdmin(admin.ModelAdmin):
    list_display = ("phone_number", "avatar")
