from rest_framework import serializers
from blog.models import Post, Text, Appendix, Citation, Comment


class TextSerializer(serializers.ModelSerializer):
    class Meta:
        model = Text
        fields = ('title', 'link', 'content',
                  'fontSize', 'indent', 'decor', 'cssId', 'image', 'type')


class AppendixSerializer(serializers.ModelSerializer):
    class Meta:
        model = Appendix
        fields = ('indentLevel', 'text', 'link')


class CitationSerializer(serializers.ModelSerializer):
    class Meta:
        model = Citation
        fields = ('text',)


class PostSerializer(serializers.ModelSerializer):
    class Meta:
        model = Post
        fields = ('title', 'slug', 'updated_on', 'created_on',
                  'status', 'thumnail', 'abstract')


class CommentSerializer(serializers.ModelSerializer):
    class Meta:
        fields = ('post', 'reply_to', 'name', 'email',
                  'body', 'created', 'updated', 'active')
        model = Comment
