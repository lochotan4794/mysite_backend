from turtle import back, title
from django.db import models
from numpy import require
from django.contrib.auth import get_user_model
from django.contrib.auth.models import User

# Create your models here.
# from django.contrib.auth.models import User


STATUS = (
    (0, "Draft"),
    (1, "Publish")
)

TEXT_DECORATION = (
    (0, "Normal"),
    (1, "Bold"),
    (2, "Underline"),
    (3, "Italic")
)

TEXT_FUNCTIONAL = (
    (0, "image"),
    (1, "paragraph"),
    (2, "header"),
    (3, "link")
)


class Post(models.Model):
    title = models.CharField(max_length=200, unique=True)
    slug = models.SlugField(max_length=200, unique=True)
    thumnail = models.ImageField(upload_to='images', blank=True)
    abstract = models.CharField(max_length=200, unique=True, blank=True)
    # author = models.ForeignKey(User, on_delete= models.CASCADE,related_name='blog_posts')
    updated_on = models.DateTimeField(auto_now=True)
    # content = models.TextField()
    created_on = models.DateTimeField(auto_now_add=True)
    status = models.IntegerField(choices=STATUS, default=0)
    total_visited = models.IntegerField(default=0)

    class Meta:
        ordering = ['-created_on']

    def __str__(self):
        return self.title


class Text(models.Model):
    post = models.ForeignKey(
        Post,
        on_delete=models.CASCADE,
        related_name="text",
        related_query_name="text",
    )
    title = models.CharField(max_length=200, unique=True, blank=True)
    content = models.TextField(blank=True)
    link = models.CharField(max_length=200, blank=True)
    fontSize = models.IntegerField(default=24)
    indent = models.IntegerField(default=0)
    decor = models.IntegerField(choices=TEXT_DECORATION, default=0)
    type = models.IntegerField(choices=TEXT_FUNCTIONAL, default=0)
    cssId = models.CharField(max_length=200, blank=True)
    image = models.ImageField(upload_to='images', blank=True)

    class Meta:
        ordering = ['title']

    def __str__(self):
        return self.title


class Tag(models.Model):
    post = models.ForeignKey(
        Post, on_delete=models.CASCADE, related_name='tag')
    title = models.CharField(max_length=200, blank=True)
    # id = models.AutoField(primary_key=True)

    class Meta:
        ordering = ['title']

    def __str__(self):
        return self.title

    def __eq__(self, other):
        if not isinstance(other, Tag):
            return NotImplemented
        if self._meta.concrete_model != other._meta.concrete_model:
            return False
        title = self.title
        if title is None:
            return self is other
        return title == other.title


# class Membership(models.Model):
#     post = models.ForeignKey(Post, on_delete=models.CASCADE)
#     tag = models.ForeignKey(Tag, on_delete=models.CASCADE)


class Relationship(models.Model):
    post = models.ForeignKey(
        Post, on_delete=models.CASCADE, related_name='relationship')
    tag = models.ForeignKey(Tag, on_delete=models.CASCADE,
                            related_name='relationship')


class Appendix(models.Model):
    text = models.CharField(max_length=200, default="")
    indentLevel = models.IntegerField(default=0)
    link = models.CharField(max_length=200, default="")
    post = models.ForeignKey(
        Post,
        on_delete=models.CASCADE,
        related_name="appendix",
        related_query_name="appendix",
    )

    def __str__(self):
        return self.text


class Citation(models.Model):
    text = models.CharField(max_length=200, default="")
    post = models.ForeignKey(
        Post,
        on_delete=models.CASCADE,
        related_name="citation",
        related_query_name="citation",
    )

    def __str__(self):
        return self.text


class PublishedManager(models.Manager):
    def get_queryset(self):
        return super(PublishedManager, self).get_queryset().filter(status='published')


class Comment(models.Model):
    post = models.ForeignKey(
        Post, on_delete=models.CASCADE, related_name='comments')
    user = models.ForeignKey(
        User, on_delete=models.CASCADE, related_name='comments', default=1)
    reply_to = models.ForeignKey(
        'self', on_delete=models.CASCADE, related_name='replies', null=True, blank=True)
    name = models.CharField(max_length=80)
    email = models.EmailField()
    body = models.TextField()
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)
    active = models.BooleanField(default=True)

    class Meta:
        ordering = ('created',)

    def __str__(self):
        return 'Comment by {} on {}'.format(self.name, self.post)


# class Image(models.Model):
#     title = models.CharField(max_length=200)
#     image = models.ImageField(upload_to='images', blank=True)
#     text = models.ForeignKey(
#         Text,
#         on_delete=models.CASCADE,
#         related_name="image",
#         related_query_name="image",
#         blank=True
#     )

#     def __str__(self):
#         return self.title
