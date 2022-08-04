from copy import copy
from turtle import title
from django.http import JsonResponse
# Create your views here.
from rest_framework.generics import ListCreateAPIView, RetrieveUpdateDestroyAPIView
from blog.serializers import AppendixSerializer, CitationSerializer, PostSerializer, TextSerializer, CommentSerializer, TagSerializer
from django.http import HttpResponse, JsonResponse
from django.views.decorators.csrf import csrf_exempt
from rest_framework.parsers import JSONParser
from django.shortcuts import get_object_or_404, render
from .models import Post, Text, Appendix, Citation, Comment, Tag, Relationship
# from .forms import ImageForm
import distance
import numpy as np


def list_to_queryset(model, data):
    from django.db.models.base import ModelBase

    if not isinstance(model, ModelBase):
        raise ValueError(
            "%s must be Model" % model
        )
    if not isinstance(data, list):
        raise ValueError(
            "%s must be List Object" % data
        )

    pk_list = [obj.pk for obj in data]
    return model.objects.filter(pk__in=pk_list)


def Nmaxelements(list1, N, elements):
    posts = list(elements)
    final_list = []
    list2 = copy(list1)
    eles = []
    final_list = list(np.array(sorted(list1))[0:N])
    # print(list1)
    # print(final_list)
    for item in final_list:
        eles.append(posts[list2.index(item)])

    ps = list_to_queryset(Post, eles)
    return ps


def get_search_list(posts=[], key=""):
    distances = []
    search_list = []
    for post in posts:
        # print(post.title)
        distances.append(distance.levenshtein(
            key.lower().split(" "), post.title.lower().split(" ")))
    search_list = Nmaxelements(distances, 2, posts)
    return search_list


class PostList(ListCreateAPIView):
    model = Post
    serializer_class = PostSerializer

    def get_queryset(self):
        return Post.objects.all()


@ csrf_exempt
def post_list_relevent(request):
    if request.method == 'GET':
        posts = Post.objects.order_by('-total_visited')[:5]
        serializer_post = PostSerializer(posts, many=True)
        return JsonResponse(serializer_post.data, safe=False)


@ csrf_exempt
def post_list_recent(request):
    if request.method == 'GET':
        posts = Post.objects.order_by('-created_on')[:5]
        serializer_post = PostSerializer(posts, many=True)
        return JsonResponse(serializer_post.data, safe=False)


@ csrf_exempt
def post_list_tag(request, tag):
    if request.method == 'GET':
        posts = Post.objects.filter(tag=tag)[:5]
        serializer_post = PostSerializer(posts, many=True)
        return JsonResponse(serializer_post.data, safe=False)


@ csrf_exempt
def post_list_relative(request, slug):
    """
    Retrieve, update or delete a code snippet.
    """
    if request.method == 'GET' or request.method == 'POST':
        p = Post.objects.filter(slug=slug)[0]
        relationships = p.relationship.all()
        # print(relationships.values_list('tag_id', flat=True))
        # relative = Relationship.objects.raw(
        #     'SELECT * FROM blog_relationship WHERE tag_id = %s', relationships.values_list('tag_id', flat=True))
        # if len(relative) == 0:
        #     return JsonResponse([], safe=False)
        # posts = Post.objects.raw('SELECT * FROM blog_post WHERE id = %s',
        #                          relative[0].post_id)
        # for r in relative:
        #     posts = Post.objects.raw('SELECT * FROM blog_post WHERE id = %s',
        #                              r.post_id) | posts

        posts = Post.objects.raw('SELECT p.id, p.title, p.slug FROM blog_post p, blog_relationship r, blog_tag t WHERE p.id = r.post_id AND r.tag_id=%s ORDER BY p.total_visited DESC',
                                 relationships.values_list('tag_id', flat=True))
        # if len(tags) == 0 or tags is None:
        #     return JsonResponse([])

        # # t = Tag.objects.filter(title=tags[0])
        # # print(t)
        # r = Relationship.objects.filter(tag=tags[0])
        # posts = Post.objects.filter(pk=r.values_list("post_id"))
        # print(posts)

        # if len(tags) > 1:
        #     for t in tags:
        #         r = Relationship.objects.filter(tag=t)
        #         relative = Post.objects.filter(pk=r.values_list("post_id"))
        #         posts = posts | relative
        # # print(tags[0])
        selected = posts[:5]
        serializer_post = PostSerializer(selected, many=True)
        return JsonResponse(serializer_post.data, safe=False)
        # return JsonResponse([], safe=False)


@ csrf_exempt
def post_list(request):
    if request.method == 'GET':
        posts = Post.objects.all()
        serializer_post = PostSerializer(posts, many=True)
        return JsonResponse(serializer_post.data, safe=False)


@ csrf_exempt
def post_list_for_key(request):
    if request.method == 'POST':
        key = request.POST['key']
        posts = Post.objects.all()
        selected_posts = get_search_list(posts, key=key)
        serializer_post = PostSerializer(selected_posts, many=True)
        return JsonResponse(serializer_post.data, safe=False)


@ csrf_exempt
def post_detail(request, slug):
    """
    Retrieve, update or delete a code snippet.
    """
    post = get_object_or_404(Post, slug=slug)
    vs = post.total_visited
    post.total_visited = vs + 1
    post.save()
    # _ = Post.objects.raw("UPDATE blog_post SET total_visited = %s WHERE id = %s", [
    #     post.total_visited + 1, post.id])
    try:
        text = Text.objects.filter(post=post)
        appendist = Appendix.objects.filter(post=post)
        citation = Citation.objects.filter(post=post)
    except Post.DoesNotExist:
        return HttpResponse(status=404)

    if request.method == 'GET':
        serializer_post = PostSerializer(post)
        serializer_appendist = AppendixSerializer(appendist, many=True)
        serializer_text = TextSerializer(text, many=True)
        serializer_citation = CitationSerializer(citation, many=True)
        data = {'post': serializer_post.data, 'appendix': serializer_appendist.data,
                'text': serializer_text.data, 'citation': serializer_citation.data}
        return JsonResponse(data)


csrf_exempt


def search_default(request):
    if request.method == 'GET':
        return JsonResponse({"data": "data"})


@ csrf_exempt
def get_all_slugs(request):
    posts = list(PostList().get_queryset().values_list('slug', flat=True))
    if request.method == 'GET':
        return JsonResponse({"slugs": posts}, safe=False)


@ csrf_exempt
def comments_post(request, slug):
    post = get_object_or_404(Post, slug=slug)
    try:
        comment = Comment.objects.filter(post=post)
    except Post.DoesNotExist:
        return HttpResponse(status=404)

    if request.method == 'GET':
        commentSerializer = CommentSerializer(comment, many=True)
        return JsonResponse(commentSerializer.data, safe=False)

# class BlogDetail(DetailView):
#     template_name= 'detail.html'
#     model= Blog

#     def get_context_data(self , **kwargs):
#         data = super().get_context_data(**kwargs)
#         connected_comments = Comment.objects.filter(CommentPost=self.get_object())
#         number_of_comments = connected_comments.count()
#         data['comments'] = connected_comments
#         data['no_of_comments'] = number_of_comments
#         data['comment_form'] = CommentForm()
#         return data

#     def post(self , request , *args , **kwargs):
#         if self.request.method == 'POST':
#             print('-------------------------------------------------------------------------------Reached here')
#             comment_form = CommentForm(self.request.POST)
#             if comment_form.is_valid():
#                 content = comment_form.cleaned_data['content']
#                 try:
#                     parent = comment_form.cleaned_data['parent']
#                 except:
#                     parent=None

#             new_comment = Comment(content=content , author = self.request.user , CommentPost=self.get_object() , parent=parent)
#             new_comment.save()
#             return redirect(self.request.path_info)


def image_upload_view(request):
    """Process images uploaded by users"""
    if request.method == 'POST':
        form = ImageForm(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            # Get the current instance object to display in the template
            img_obj = form.instance
            return render(request, 'blog/index.html', {'form': form, 'img_obj': img_obj})
    else:
        form = ImageForm()
    return render(request, 'blog/index.html', {'form': form})
