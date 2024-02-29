from enum import unique
from django.db import models
# from django.contrib.auth import get_user_model
from django.contrib.auth.models import User
from django.core.exceptions import ObjectDoesNotExist
from django.contrib.postgres.fields import ArrayField
from django.db.models import JSONField

# Create your models here.
# from django.contrib.auth.models import User


STATUS = (
    (0, "Draft"),
    (1, "Publish")
)

LANG = (
    (0, "VIE"),
    (1, "ENG")
)

TEXT_DECORATION = (
    (0, "Normal"),
    (1, "Bold"),
    (2, "Underline"),
    (3, "Italic")
)

TEXT_FUNCTIONAL = (
    (0, "paragraph"),
    (1, "image"),
    (2, "header"),
    (3, "link"),
    (4, "citation"),
    (5, "appendix"),
    (6, "h1"),
    (7, "h2"),
    (8, "h3"),
    (9, "h4"),
    (10, "code"),
    (11, 'ol'),
    (12, 'video'),
    (13, 'html'),
    (14, 'html_styled'),
    (15, 'math'),
    (16, 'table'),
    (17, 'img_src')
)
# comment
COMPONENT = (
    (0, "Appendix"),
    (1, "Text"),
    (2, "Citation"),
)

TOPIC = (
    (0, "NLP"),
    (1, "ML"),
    (2, "SPEECH"),
    (3, "CV"),
    (4, "EMBED"),
    (5, "OHTER"),
    (6, "CAR"),
    (7, "NET"),
    (8, "STORY")
)

function_to_index = {
    0:  "paragraph",
    1:  "image",
    2: "header",
    3: "link"
}


class Post(models.Model):

    title = models.CharField(max_length=200, unique=True)
    slug = models.SlugField(max_length=200, unique=True)
    thumnail = models.ImageField(upload_to='images', blank=True)
    abstract = models.CharField(max_length=1000, unique=True, blank=True)
    updated_on = models.DateTimeField(auto_now=True)
    created_on = models.DateTimeField(auto_now_add=True)
    status = models.IntegerField(choices=STATUS, default=0)
    total_visited = models.IntegerField(default=0)
    eng_ver = models.ForeignKey(
        'Post', on_delete=models.CASCADE, null=True, blank=True)
    lang = models.IntegerField(choices=LANG, default=0)
    video = models.CharField(max_length=200, blank=True)
    ava = models.CharField(max_length=1000, blank=True)
    pdf = models.FileField(upload_to='pdf', blank=True)
    previous_post = models.ForeignKey(
        'self', unique=False, null=True, blank=True, related_name='previous', on_delete=models.CASCADE)
    next_post = models.ForeignKey(
        'self', unique=False, null=True, blank=True, related_name='next', on_delete=models.CASCADE)
    topic = models.IntegerField(choices=TOPIC, default=0, blank=True)
    modelLink = models.CharField(
        max_length=1000, blank=True, null=True, unique=False)
    features = ArrayField(models.CharField(
        max_length=200), blank=True, unique=False, default=list)
    static = models.IntegerField(default=0)
    currVer = models.FloatField(default=1.0)

    class Meta:
        ordering = ['-created_on']

    def __str__(self):
        return self.title

    @classmethod
    def create(cls, title, slug, thumnail, abstract, updated_on, created_on, status, total_visited, eng_ver, lang, static, currVer):
        post = cls(title=title, slug=slug, thumnail=thumnail, abstract=abstract, updated_on=updated_on,
                   created_on=created_on, status=status, total_visited=total_visited, eng_ver=eng_ver, lang=lang, static=static, currVer=currVer)
        # do something with the book
        return post

    def save(self, *args, **kwargs):
            if getattr(self, 'features_changed', True):
                print(self.features)
            super(Post, self).save(*args, **kwargs)

class Index(models.Model):
    post = models.ForeignKey(
        Post, on_delete=models.CASCADE, related_name='index')
    position = models.IntegerField(default=0)
    type = models.IntegerField(default=0)
    id_type = models.IntegerField(choices=COMPONENT, default=0)
    style_id = models.IntegerField(choices=TEXT_FUNCTIONAL)



class Image(models.Model):
    image = models.ImageField(upload_to='images', blank=True)

    @classmethod
    def create(cls, image=image):
        # do something with the book
        img = cls(image=image)
        return img

class HTML(models.Model):

    content = models.TextField(blank=True)
    slug = models.CharField(max_length=100, blank=True)
    abstract = models.CharField(max_length=1000, unique=True, blank=True)

    @classmethod
    def create(cls, slug, abstract, content):
        html = cls(slug=slug, abstract=abstract, content=content)
        # do something with the book
        return html

    class Meta:
        ordering = ['content']

    def __str__(self):
        return self.content

class Text(models.Model):
    post = models.ForeignKey(
        Post,
        on_delete=models.CASCADE,
        related_name="text",
        related_query_name="text",
    )
    previous = models.OneToOneField(
        'self', null=True, blank=True, related_name='next', on_delete=models.CASCADE)
    content = models.TextField(blank=True)
    link = models.CharField(max_length=100, blank=True)
    role = models.IntegerField(choices=TEXT_FUNCTIONAL, default=0)
    image = models.ImageField(upload_to='images', blank=True)
    cssId = models.CharField(max_length=100, blank=True)
    # image_src = models.CharField(max_length=100, blank=True)
    # index = models.ForeignKey(
    #     Index,
    #     on_delete=models.CASCADE,
    #     related_name="text",
    #     related_query_name="text",
    # )
    # date_created = models.DateTimeField(default=datetime.now(), blank=True)

    @classmethod
    def create(cls, post, previous, content, link, role, image, cssId):
        text = cls(post=post, previous=previous, content=content,
                   link=link, role=role, image=image, cssId=cssId)
        # do something with the book
        return text

    class Meta:
        ordering = ['content']

    def __str__(self):
        return self.content

    # def save(self, *args, **kwargs):
    #     p = Post.objects.filter(post=self.post)
    #     p.board.append(self.id)
    #     super(Text, self).save(*args, **kwargs)


class Order(models.Model):
    post = models.ForeignKey(
        Post, on_delete=models.CASCADE, related_name='order')
    kind = models.IntegerField(default=0, choices=COMPONENT)
    kind_id = models.IntegerField(default=0)
    order_id = models.IntegerField(default=0)


class Tag(models.Model):
    # post = models.ForeignKey(
    #     Post, on_delete=models.CASCADE, related_name='tag', blank=True)
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

    @classmethod
    def create(cls, title):
        app = cls(title=title)
        # do something with the book
        return app


# class Membership(models.Model):
#     post = models.ForeignKey(Post, on_delete=models.CASCADE)
#     tag = models.ForeignKey(Tag, on_delete=models.CASCADE)


class Relationship(models.Model):
    post = models.ForeignKey(
        Post, on_delete=models.CASCADE, related_name='relationship')
    tag = models.ForeignKey(Tag, on_delete=models.CASCADE,
                            related_name='tag')

    @classmethod
    def create(cls, tag, post):
        app = cls(tag=tag, post=post)
        # do something with the book
        return app


class Style(models.Model):
    # text = models.ForeignKey(
    #     Text,
    #     on_delete=models.CASCADE,
    #     related_name="style",
    #     related_query_name="style",
    # )
    name = models.IntegerField(choices=TEXT_FUNCTIONAL, default=0)
    indentLevel = models.IntegerField(default=0)
    fontSize = models.IntegerField(default=24)
    decor = models.IntegerField(choices=TEXT_DECORATION, default=0)
    fontWeight = models.IntegerField(default=100)

    def __str__(self):
        return str(self.name)

    class Meta:
        ordering = ['name']


class Appendix(models.Model):
    previous = models.OneToOneField('self', null=True, blank=True, related_name='next',
                                    related_query_name='next', on_delete=models.CASCADE, unique=False)
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

    def has_related_object(self):
        return hasattr(self, 'next') and self.next is not None

    @classmethod
    def create(cls, previous, text, indentLevel, link, post):
        app = cls(previous=previous, text=text,
                  indentLevel=indentLevel, link=link, post=post)
        # do something with the book
        return app


class Citation(models.Model):
    previous = models.OneToOneField(
        'self', null=True, blank=True, related_name='next', on_delete=models.CASCADE)
    text = models.CharField(max_length=1000, default="")
    post = models.ForeignKey(
        Post,
        on_delete=models.CASCADE,
        related_name="citation",
        related_query_name="citation",
    )

    def __str__(self):
        return self.text

    @classmethod
    def create(cls, post, previous, text):
        citation = cls(post=post, previous=previous, text=text)
        # do something with the book
        return citation


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
