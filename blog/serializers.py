from rest_framework import serializers
from blog.models import Post, Relationship, Text, Appendix, Citation, Comment, Tag, Style


class StyleSerializer(serializers.ModelSerializer):
    class Meta:
        model = Style
        fields = ('name', 'indentLevel', 'fontSize', 'decor', 'fontWeight')

class TextSerializer(serializers.ModelSerializer):
    # style = StyleSerializer()
    image = serializers.ImageField(max_length=None, use_url=True, allow_null=True, required=False)
    class Meta:
        model = Text
        fields = ( 'link', 'content',
                   'image', 'role', 'cssId', 'id')

class AppendixSerializer(serializers.ModelSerializer):
    class Meta:
        model = Appendix
        fields = ('indentLevel', 'text', 'link', 'id')


class CitationSerializer(serializers.ModelSerializer):
    class Meta:
        model = Citation
        fields = ('text', 'id')


class TagSerializer(serializers.ModelSerializer):
    title = serializers.CharField(max_length=200)
    class Meta:
        model = Tag
        fields = ('title', 'id')

class RelationshipSerializer(serializers.ModelSerializer):
    # tag = TagSerializer(many=True)
    class Meta:
        model = Relationship
        fields = ('tag', 'post')

class RelatedPostSerializer(serializers.ModelSerializer):
    class Meta:
        model = Post
        fields = ('slug', 'title')


class PostSerializer(serializers.ModelSerializer):
    # tag = TagSerializer(many=True)
    relationship = RelationshipSerializer(many=True)
    previous_post = RelatedPostSerializer()
    next_post = RelatedPostSerializer()

    class Meta:
        model = Post
        fields = ('title', 'slug', 'updated_on', 'created_on',
                  'status', 'thumnail', 'abstract', 'total_visited', 'eng_ver', 'lang', 'relationship', 'video', 'pdf', 'previous_post', 'next_post', 'topic')

        # def get_related_field(self, model_field):
        #     return PostSerializer()


class CommentSerializer(serializers.ModelSerializer):
    class Meta:
        fields = ('post', 'reply_to', 'name', 'email',
                  'body', 'created', 'updated', 'active', 'user', 'id')
        model = Comment
