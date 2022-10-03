from django.db import models
from mysite.blog.models import Post

# Create your models here.
class Index(models.Model):
    post = models.ForeignKey(
        Post, on_delete=models.CASCADE, related_name='index')
    