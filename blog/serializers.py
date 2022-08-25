from rest_framework import serializers
from blog.models import Post, Text, Appendix, Citation, Comment, Tag, Style


class StyleSerializer(serializers.ModelSerializer):
    class Meta:
        model = Style
        fields = ('name', 'indentLevel', 'fontSize', 'decor')


class TextSerializer(serializers.ModelSerializer):
    # style = StyleSerializer()
    class Meta:
        model = Text
        fields = ( 'link', 'content',
                   'image', 'type', 'cssId')


class AppendixSerializer(serializers.ModelSerializer):
    class Meta:
        model = Appendix
        fields = ('indentLevel', 'text', 'link')


class CitationSerializer(serializers.ModelSerializer):
    class Meta:
        model = Citation
        fields = ('text',)


class TagSerializer(serializers.ModelSerializer):
    title = serializers.CharField(max_length=200)

    class Meta:
        model = Tag
        fields = ('title',)


class PostSerializer(serializers.ModelSerializer):
    tag = TagSerializer(many=True)

    class Meta:
        model = Post
        fields = ('title', 'slug', 'updated_on', 'created_on',
                  'status', 'thumnail', 'abstract', 'total_visited', 'tag', 'eng_ver', 'lang')


class CommentSerializer(serializers.ModelSerializer):
    class Meta:
        fields = ('post', 'reply_to', 'name', 'email',
                  'body', 'created', 'updated', 'active', 'user', 'id')
        model = Comment
