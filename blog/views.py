from django.http import JsonResponse
# Create your views here.
from rest_framework.generics import ListCreateAPIView, RetrieveUpdateDestroyAPIView
from blog.serializers import AppendixSerializer, CitationSerializer, PostSerializer, TextSerializer, CommentSerializer
from django.http import HttpResponse, JsonResponse
from django.views.decorators.csrf import csrf_exempt
from rest_framework.parsers import JSONParser
from django.shortcuts import get_object_or_404, render
from .models import Post, Text, Appendix, Citation, Comment
from .forms import ImageForm

class PostList(ListCreateAPIView):
    # queryset = Post.objects.filter(status=1).order_by('-created_on')
    # template_name = 'index.html'
    model = Post
    serializer_class = PostSerializer

    def get_queryset(self):
        return Post.objects.all()

@csrf_exempt
def post_list(request):
    if request.method == 'GET':
        posts = Post.objects.all()
        serializer_post = PostSerializer(posts, many=True)
        return JsonResponse(serializer_post.data,safe=False)

@csrf_exempt
def post_detail(request, slug):
    """
    Retrieve, update or delete a code snippet.
    """
    post = get_object_or_404(Post, slug=slug)
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
    # post = get_object_or_404(Post, slug=slug)
    # if request.method == 'GET':
    #     postSerializer = PostSerializer(post, many=True)
    #     return JsonResponse(postSerializer.data,False)
    # post = get_object_or_404(Post, slug="zero-shot-learning")
    # try:
    #     text = Text.objects.filter(post=post)
    #     appendist = Appendix.objects.filter(post=post)
    #     citation = Citation.objects.filter(post=post)
    # except Post.DoesNotExist:
    #     return HttpResponse(status=404)

    if request.method == 'GET':
        # serializer_post = PostSerializer(post)
        # serializer_appendist = AppendixSerializer(appendist, many=True)
        # serializer_text = TextSerializer(text, many=True)
        # serializer_citation = CitationSerializer(citation, many=True)
        # data = {'post': serializer_post.data, 'appendix': serializer_appendist.data,
        #     'text': serializer_text.data, 'citation': serializer_citation.data}
        return JsonResponse({"data":"data"})

    # elif request.method == 'PUT':
    #     data = JSONParser().parse(request)
    #     serializer = PostSerializer(post, data=data)
    #     if serializer.is_valid():
    #         serializer.save()
    #         return JsonResponse(serializer.data)
    #     return JsonResponse(serializer.errors, status=400)

    # elif request.method == 'DELETE':
    #     post.delete()
    #     return HttpResponse(status=204)
@csrf_exempt
def get_all_slugs(request):
    posts = list(PostList().get_queryset().values_list('slug', flat=True))
    if request.method == 'GET':
        return JsonResponse({"slugs" : posts},safe=False)


@csrf_exempt
def comments_post(request, slug):
    post = get_object_or_404(Post, slug=slug)
    try:
        comment = Comment.objects.filter(post=post)
    except Post.DoesNotExist:
        return HttpResponse(status=404)
    
    if request.method == 'GET':
        commentSerializer = CommentSerializer(comment, many=True)
        return JsonResponse(commentSerializer.data,safe=False)
        
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