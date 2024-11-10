from rest_framework import serializers
from blog.models import Post, Relationship, Text, Appendix, Citation, Comment, Tag, Style, Image, HTML, Update
from rest_framework.fields import ListField


class StyleSerializer(serializers.ModelSerializer):
    class Meta:
        model = Style
        fields = ('name', 'indentLevel', 'fontSize', 'decor', 'fontWeight')

class HTMLSerializer(serializers.ModelSerializer):
    class Meta:
        model = HTML
        fields = ('slug', 'abstract', 'content')
        
class UpdateSerializer(serializers.ModelSerializer):
    class Meta:
        model = Update
        fields = ('heading', 'day', 'content')


class TextSerializer(serializers.ModelSerializer):
    # style = StyleSerializer()
    image = serializers.ImageField(
        max_length=None, use_url=True, allow_null=True, required=False)

    class Meta:
        model = Text
        fields = ('link', 'content',
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
    class Meta:
        model = Tag
        fields = ('id', 'title')


class RelationshipSerializer(serializers.ModelSerializer):
    # tag = TagSerializer(many=True)
    class Meta:
        model = Relationship
        fields = ('tag', 'post')


class RelatedPostSerializer(serializers.ModelSerializer):
    class Meta:
        model = Post
        fields = ('slug', 'title')


class StringArrayField(ListField):
    """
    String representation of an array field.
    """

    def to_representation(self, obj):
        obj = super().to_representation(obj)
        # convert list to string
        print(obj)
        return ",".join([str(element) for element in obj])

    def to_internal_value(self, data):
        data = data.split(",")  # convert string to list
        return super().to_internal_value(self, data)

class PostSerializer(serializers.ModelSerializer):
    # tag = TagSerializer(many=True)
    relationship = RelationshipSerializer(many=True)
    previous_post = RelatedPostSerializer()
    next_post = RelatedPostSerializer()
    created_on = serializers.DateTimeField(format="%Y/%m/%d")
    authors = serializers.ListField(child=serializers.CharField())
    # authors = StringArrayField()

    class Meta: 
        model = Post
        fields = ('title', 'slug', 'updated_on', 'created_on',
                  'status', 'thumnail', 'abstract', 'total_visited', 'eng_ver', 'lang', 'relationship', 'video', 'pdf', 'previous_post', 'next_post', 'topic', 'ava', 'modelLink', 'features', 'static', 'currVer', 'authors')

        # def get_related_field(self, model_field):
        #     return PostSerializer()


class ImageSerializer(serializers.ModelSerializer):

    class Meta:
        model = Image
        fields = ('image',)

class Post1Serializer(serializers.ModelSerializer):
    # tag = TagSerializer(many=True)
    relationship = RelationshipSerializer(many=True)
    previous_post = RelatedPostSerializer()
    next_post = RelatedPostSerializer()
    created_on = serializers.DateTimeField(format="%Y/%m/%d")
    authors = serializers.ListField(child=serializers.CharField())


    class Meta:
        model = Post
        fields = ('id', 'title', 'slug', 'updated_on', 'created_on',
                  'status', 'thumnail', 'abstract', 'total_visited', 'eng_ver', 'lang', 'relationship', 'video', 'pdf', 'previous_post', 'next_post', 'topic', 'ava', 'static', 'currVer', 'authors')

        # def get_related_field(self, model_field):
        #     return PostSerializer()

class CommentSerializer(serializers.ModelSerializer):
    class Meta:
        fields = ('post', 'reply_to', 'name', 'email',
                  'body', 'created', 'updated', 'active', 'user', 'id')
        model = Comment
