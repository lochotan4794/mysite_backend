from rest_framework import serializers
from blog.models import Post, Text, Appendix, Citation, Comment


class TextSerializer(serializers.ModelSerializer):
    class Meta: 
        model = Text
        fields = ('title', 'link', 'content', 'fontSize', 'indent', 'decor', 'cssId')

class AppendixSerializer(serializers.ModelSerializer):
    class Meta: 
        model = Appendix
        fields = ('indentLevel', 'text', 'link')

class CitationSerializer(serializers.ModelSerializer):
    class Meta: 
        model = Citation
        fields = ('text',)

class PostSerializer(serializers.ModelSerializer):
    # title = serializers.CharField(max_length=200)
    # slug = serializers.SlugField(max_length=200)
    # updated_on = serializers.DateTimeField()
    # created_on = serializers.DateTimeField()
    # status = serializers.IntegerField()

    # appendix = AppendixSerializer(many=True)  # A nested list of 'edit' items.
    # text = TextSerializer(many=True)
    # citation = CitationSerializer(many=True)
    # content = serializers.CharField(max_length=200)
    # created = serializers.DateTimeField()
    class Meta: 
        model = Post
        fields = ('title', 'slug', 'updated_on', 'created_on', 'status')

class CommentSerializer(serializers.ModelSerializer):
    # CommentPost = PostSerializer()
    class Meta: 
        fields = ('post', 'reply_to', 'name', 'email', 'body', 'created', 'updated', 'active')
        model = Comment
    