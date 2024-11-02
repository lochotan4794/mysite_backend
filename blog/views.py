from copy import copy
import json
from time import time
from django.http import JsonResponse
# Create your views here.
from rest_framework.generics import ListCreateAPIView
from blog.serializers import AppendixSerializer, CitationSerializer, Post1Serializer, PostSerializer, TextSerializer, CommentSerializer, StyleSerializer, TagSerializer, HTMLSerializer, ImageSerializer, UpdateSerializer
from django.http import HttpResponse, JsonResponse
from django.views.decorators.csrf import csrf_exempt
from django.shortcuts import get_object_or_404, render
from .models import Post, Relationship, Style, Text, Appendix, Citation, Comment, Tag, Image, HTML, Update
# from .forms import ImageForm
import distance
from django.contrib.auth.models import User
from rest_framework.decorators import api_view
import datetime
from django.db.models import Q
from django.template.defaultfilters import slugify
from django.db.models import CharField
# from django.db.models.functions import Search
import numpy as np
from django.db import connection
from collections import namedtuple
import json


def namedtuplefetchall(cursor):
    """
    Return all rows from a cursor as a namedtuple.
    Assume the column names are unique.
    """
    desc = cursor.description
    nt_result = namedtuple("Result", [col[0] for col in desc])
    return [nt_result(*row) for row in cursor.fetchall()]

# CharField.register_lookup(Search)


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
        distances.append(distance.levenshtein(
            key.lower().split(" "), post.abstract.lower().split(" ")))
    search_list = Nmaxelements(distances, 5, posts)
    return search_list


class PostList(ListCreateAPIView):
    model = Post
    serializer_class = PostSerializer

    def get_queryset(self):
        return Post.objects.exclude(static=1)


@ csrf_exempt
def post_list_relevent(request):
    if request.method == 'GET':
        posts = Post.objects.exclude(title="Dummy").order_by('-total_visited')
        if posts.count() < 10:
            serializer_post = PostSerializer(posts, many=True)
        else:
            serializer_post = PostSerializer(posts[0:9], many=True)
        return JsonResponse(serializer_post.data, safe=False)


@ csrf_exempt
def post_list_recent(request):
    if request.method == 'GET':
        posts = Post.objects.exclude(title="Dummy").order_by('-created_on')
        if posts.count() < 10:
            serializer_post = PostSerializer(posts, many=True)
        else:
            serializer_post = PostSerializer(posts[0:9], many=True)
        return JsonResponse(serializer_post.data, safe=False)


@ csrf_exempt
def post_list_tag(request, t):
    if request.method == 'GET':
        tag = get_object_or_404(Tag, title=t)
        relationship = get_object_or_404(Relationship, tag=tag)
        posts = Post.objects.filter(pk=relationship.post.id)
        # print(posts)
        serializer_post = PostSerializer(posts, many=True)
        tags = Tag.objects.all()
        serializer_tag = TagSerializer(tags, many=True)
        response = {"tags": serializer_tag.data, "post": serializer_post.data}
        return JsonResponse(response)


@ csrf_exempt
def post_list_relative(request, slug):
    """
    Retrieve, update or delete a code snippet.
    """
    print(slug)
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
        try:
            posts = Post.objects.raw('SELECT  p.id, p.title, p.slug FROM blog_post p, blog_relationship r WHERE p.id = r.post_id AND r.tag_id=%s ORDER BY p.total_visited DESC',
                                    relationships.values_list('tag', flat=True))

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
            selected = posts

            if len(list(selected)) == 0:
                return JsonResponse({200:"ok"}, safe=False)
            if len(list(selected)) > 5:
                selected = selected[0:4]
            serializer_post = PostSerializer(selected, many=True)
            return JsonResponse(serializer_post.data, safe=False)
        except Post.DoesNotExist:
            return JsonResponse([], safe=False)


@ csrf_exempt
def post_list(request):
    if request.method == 'POST':
        posts = Post.objects.all().exclude(title="Dummy")
        tags = Tag.objects.all()
        # tags = []
        # for pos in posts:
        #     try:
        #         t = Relationship.objects.filter(post=pos)
        #     except Relationship.DoesNotExist:
        #         t = None
        #     tags.append(t)
        serializer_post = PostSerializer(posts, many=True)
        # rel = [r for r in serializer_post.data.relationship]
        # print(rel)
        serializer_tag = TagSerializer(tags, many=True)
        response = {"tags": serializer_tag.data, "post": serializer_post.data}
        return JsonResponse(response)


@ csrf_exempt
def post_list_for_page(request):
    if request.method == 'POST':
        print(request.POST)
        currentPage =  int(request.POST['currentPage'][0])
        numberPerPage = int(request.POST['numberPerPage'][0])
        
        cursor = connection.cursor()
        # try:
        cursor.execute(r"SELECT  p.id, p.title, p.abstract, p.slug, p.ava, p.ver, p.created_on, t.title FROM blog_post p, blog_relationship r, blog_tag t "\
                       r"WHERE p.id = r.post_id AND t.id=r.tag_id ORDER BY p.created_on DESC ")
        
        data = cursor.fetchall()
        result = {}
        print(data)
        for item in data:
            key = item[0]
            value = item[7]
            if key in result:
                result[key].append(value)
            else:
                result[key] = [value]            
              #  json.append([item[0], item[1], item[2]])
        jjson = {}
        for item in data:
            key = item[0]
            if key in jjson:
                next
            else:
                jjson[key] = {'post_id': item[0], 'post_title': item[1], 'post_abstract': item[2], 'slug': item[3], 'ava': item[4], 'ver': str(item[5]), 'created_on': item[6], 'tags': result[key]}  
        ret =  []
        vs = list(jjson.values())
        count = len(vs)
        numberPerPage = 10
        for idx in range((currentPage - 1)*numberPerPage, currentPage * numberPerPage):
            if idx < count:
                ret.append(vs[idx])

        return JsonResponse({"data": vs, "count": count}, safe=False)


@ csrf_exempt
def post_all(request):
    if request.method == 'POST' or request.method == 'GET':
        posts = Post.objects.all().exclude(title="Dummy")
        tags = []
        for pos in posts:
            try:
                r = Relationship.objects.get(post=pos)                    
                t = Tag.objects.get(title=r.tag).title
                i = pos.id 
                tags.append({"id": i, 'title': t})
            except Relationship.DoesNotExist:
                r = None
        serializer_post = Post1Serializer(posts, many=True)
        # serializer_tag = TagSerializer(tags, many=True)
        response = {"tags": tags, "post": serializer_post.data}
        return JsonResponse(response)


@ csrf_exempt
def post_list_for_key(request):
    if request.method == 'POST' or request.method == 'GET':
        # key = request.POST['key']
        # key = request.POST.get('key', False)
        # print(request.body)
        key = request.POST['key']
        print("123")
        # key = json.loads(request.body)['key']
        # key = 'Minimal'
        posts = Post.objects.all().filter(~Q(title="Dummy") & (Q(title__icontains=key) | Q(abstract__icontains=key)))
        selected_posts = get_search_list(posts, key=key)
        print(selected_posts)
        tags = Tag.objects.all()
        serializer_tag = TagSerializer(tags, many=True)
        serializer_post = PostSerializer(selected_posts, many=True)
        response = {"tags": serializer_tag.data, "post": serializer_post.data}
        return JsonResponse(response)


@ csrf_exempt
def admin_dummy(request):
    try:
        post = Post.objects.filter(title="Dummy")
    except Post.DoesNotExist:
        post = Post.create(title="Dummy", slug="Dummy", thumnail=None, abstract="Dummny", updated_on=datetime.datetime.now(
        ), created_on=datetime.datetime.now(), status="CRAFT", total_visited=0, eng_ver=None, lang="ENG")
        post.save()
    serializer_app = AppendixSerializer(post, many=False)
    return JsonResponse(serializer_app.data)


@ csrf_exempt
def admin_removetag(request):
    slug = request.POST['slug']
    tag_t = request.POST['tag']
    post = get_object_or_404(Post, slug=slug)
    relas = Relationship.objects.filter(post=post)
    tag_list = []
    for r in relas:
        r_t = r.tag.title
        if tag_t == r_t:
            r.delete()
        else:
            tag_list.append(r.tag.id)
    new_query = Tag.objects.filter(pk__in=tag_list)
    new_tag_list = TagSerializer(new_query, many=True)
    return JsonResponse(new_tag_list.data, safe=False)

@ csrf_exempt
def admin_setnext(request):
    slug = request.POST['slug']      
    next_slug = request.POST['nextSlug']
    post = get_object_or_404(Post, slug=slug)
    next = get_object_or_404(Post, slug=next_slug)
    post.next_post = next
    post.save()
    json_response = {"result": "ok"}
    return JsonResponse(json_response, safe=False)

@ csrf_exempt
def admin_setprevious(request):
    slug = request.POST['slug']
    pre_slug = request.POST['preSlug']
    post = get_object_or_404(Post, slug=slug)
    pre = get_object_or_404(Post, slug=pre_slug)
    post.previous_post = pre
    post.save()
    json_response = {"result": "ok"}
    return JsonResponse(json_response, safe=False)

@ csrf_exempt
def admin_taglist(request):
    tags = Tag.objects.all()
    data = TagSerializer(tags)
    return JsonResponse(data=data.data, safe=False)


@ csrf_exempt
def admin_add(request):
    slug = request.POST['slug']
    print("Slug here")
    print(slug)
    # if slug == "Dummy":
    #     slug = slugify(request.POST['title']).lower()
    post = get_object_or_404(Post, slug=slug)
    type = request.POST['type']
    previous = None
    if 'tags' in request.POST:
        for t in request.POST['tags']:
            try:
                tag = tag.object.filter(title=t)
            except Tag.DoesNotExist:
                tag = Tag.create(post=post, title=t)
            rel = Relationship.create(tag, post=post)
            rel.save()

    if (type == "text"):
        content = request.POST['content']
        link = request.POST['link']
        if 'image' in request.FILES:
            image = request.FILES['image']
        else:
            image = None
        cssId = request.POST['cssId']
        role = request.POST['role']
        text = Text.create(post, previous, content, link, role, image, cssId)
        text.save()
        serializer_text = TextSerializer(text, many=False)
        return JsonResponse(serializer_text.data)
    if (type == "citation"):
        text = request.POST['text']
        citation = Citation.create(post, previous, text)
        citation.save()
        serializer_citation = CitationSerializer(citation, many=False)
        return JsonResponse(serializer_citation.data)
    if (type == "appendix"):
        indentLevel = request.POST['indentLevel']
        link = request.POST['link']
        text = request.POST['text']
        app = Appendix.create(previous, text, indentLevel, link, post)
        app.save()
        serializer_app = AppendixSerializer(app, many=False)
        return JsonResponse(serializer_app.data)


@ csrf_exempt
def admin_update(request):
    type = request.POST['type']
    id = request.POST['id']
    if (type == "text"):
        text = Text.objects.get(id=id)
        content = request.POST['content']
        link = request.POST['link']
        if 'image' in request.FILES:
            image = request.FILES['image']
        else:
            image = None
        cssId = request.POST['cssId']
        role = request.POST['role']
        text.role = role
        text.content = content
        text.link = link
        text.image = image
        text.cssId = cssId
        text.save()
    if (type == "citation"):
        text = request.POST['text']
        citation = Citation.objects.get(id=id)
        citation.text = text
        citation.save()
    if (type == "appendix"):
        indentLevel = request.POST['indentLevel']
        link = request.POST['link']
        text = request.POST['text']
        app = Appendix.objects.get(id=id)
        app.indentLevel = indentLevel
        app.link = link
        app.text = text
        app.save()
    jsondata = {"result": "ok"}
    return JsonResponse(jsondata)


@ csrf_exempt
def admin_delete(request):
    type = request.POST['type']
    id = request.POST['id']
    if (type == "text"):
        try:
            curr = Text.objects.get(id=id)
        except Text.DoesNotExist:
            curr = None
        try:
            next = Text.objects.get(previous=id)
        except Text.DoesNotExist:
            next = None
        if next is not None:
            if curr.previous is None:
                next.previous = None
                curr.delete()
                next.save()
            else:
                next.previous = curr.previous
                nodes = []
                nodes.append(next)
                # Because delete cascade so need to store, if not all next node be deleted
                while(hasattr(next, 'next')):
                    nodes.append(next.next)
                    next = next.next
                curr.delete()
                for node in nodes:
                    node.save()
        else: 
            if curr is not None:
                curr.delete()
    if (type == "citation"):
        try:
            curr = Citation.objects.get(id=id)
        except Citation.DoesNotExist:
            curr = None
        try:
            next = Citation.objects.get(previous=id)
        except Citation.DoesNotExist:
            next = None
        if next is not None:
            if curr.previous is None:
                next.previous = None
                curr.delete()
                next.save()
            else:
                next.previous = curr.previous
                nodes = []
                nodes.append(next)
                # Because delete cascade so need to store, if not all next node be deleted
                while(hasattr(next, 'next')):
                    nodes.append(next.next)
                    next = next.next
                curr.delete()
                for node in nodes:
                    node.save()
        else: 
            if curr is not None:
                curr.delete()
    if (type == "appendix"):
        try:
            curr = Appendix.objects.get(id=id)
        except Appendix.DoesNotExist:
            curr = None
        try:
            next = Appendix.objects.get(previous=id)
        except Appendix.DoesNotExist:
            next = None
        if next is not None:
            if curr.previous is None:
                next.previous = None
                curr.delete()
                next.save()
            else:
                next.previous = curr.previous
                nodes = []
                nodes.append(next)
                # Because delete cascade so need to store, if not all next node be deleted
                while(hasattr(next, 'next')):
                    nodes.append(next.next)
                    next = next.next
                curr.delete()
                for node in nodes:
                    node.save()
        else: 
            if curr is not None:
                curr.delete()

    jsondata = {"result": "ok"}
    return JsonResponse(jsondata)


@ csrf_exempt
def admin_delete_post(request):
    slug = request.POST['slug']
    post = Post.objects.get(slug=slug)
    rel = Relationship.objects.filter(post=post)
    rel.delete()
    post.delete()
    response = {"result": "ok"}
    return JsonResponse(response)


@ csrf_exempt
def admin_search_post(request):
    key_search = request.POST["key"]
    posts = Post.objects.filter(title__icontains=key_search)
    tags = Tag.objects.all()
    serializer_post = PostSerializer(posts, many=True)
    serializer_tag = TagSerializer(tags, many=True)
    response = {"tags": serializer_tag.data, "post": serializer_post.data}
    return JsonResponse(response)

@ csrf_exempt
def admin_saveModel(request):
    slug = request.POST['slug']
    post = Post.objects.get(slug=slug)

    if request.method == 'POST':
        if 'modelLink' in request.POST:
            post.modelLink = request.POST['modelLink']
        if 'features' in request.POST:
            post.features = str(request.POST['features'])
        post.save()
        jsondata = {"slug": slug}
        return JsonResponse(jsondata)
    
@ csrf_exempt
def admin_side(request):
    slug = request.POST['slug']
    print(slug)
    if slug == "Dummy":
        slug = slugify(request.POST['title']).lower()

    try:
        post = Post.objects.get(slug=slug)
    except Post.DoesNotExist:
        post = Post.create(title="Dummy", slug=slug, thumnail=None, abstract="Dummy", updated_on=datetime.datetime.now(
        ), created_on=datetime.datetime.now(), status=0, total_visited=0, eng_ver=None, lang=0, static=0, ver=1.0)

    post.title = request.POST['title']
    post.slug = slug

    print(request.POST)
    print(request.POST['staticValue'])


    if request.method == 'POST':
        post.abstract = request.POST['abstract']
        if 'status' in request.POST:
            post.status = request.POST['status']
        if 'staticValue' in request.POST:
            post.static = request.POST['staticValue']
        if 'thumnail' in request.FILES:
            post.thumnail = request.FILES['thumnail']
        if 'ava' in request.POST:
            post.ava = request.POST['ava']
        if 'tag' in request.POST:
            tag_data = request.POST['tag']
        if 'pdf' in request.FILES:
            post.pdf = request.FILES['pdf']
        if 'video' in request.POST:
            post.video = request.POST['video']
        if 'topic' in request.POST:
            post.topic = request.POST['topic']
        if 'ver' in request.POST :
            # print(request.POST['ver'])
            try:
                post.ver = float(request.POST['ver'])
            except:
                post.ver = 1.0

        tags = json.loads(tag_data)
        for t in tags["data"]:
            try:
                t_obj = Tag.objects.get(title=t)
                try:
                    r = Relationship.objects.get(tag=t_obj, post=post)
                except Relationship.DoesNotExist:
                    r = Relationship.create(tag=t_obj, post=post)
                    r.save()
            except Tag.DoesNotExist:
                t_obj = Tag.create(title=t)
                t_obj.save()
                try:
                    r = Relationship.objects.get(tag=t_obj, post=post)
                except Relationship.DoesNotExist:
                    r = Relationship.create(tag=t_obj, post=post)
                    r.save()

        if 'lang' in request.POST:
            post.lang = request.POST['lang']

        if 'eng_ver' in request.POST:
            try:
                eng_ver = Post.objects.get(slug=request.POST['eng_ver'])
            except Post.DoesNotExist:
                eng_ver = None
            post.eng_ver = eng_ver
        post.save()
        jsondata = {"slug": slug}
        return JsonResponse(jsondata)


@ csrf_exempt
def admin_insert(request):
    slug = request.POST['slug']
    post = get_object_or_404(Post, slug=slug)
    type = request.POST['type']
    id = request.POST['id']
    if (type == "text"):
        previous = Text.objects.get(id=id)
        content = request.POST['content']
        link = request.POST['link']
        if 'image' in request.FILES:
            image = request.FILES['image']
        else:
            image = None
        cssId = request.POST['cssId']
        role = request.POST['role']
        try:
            next = Text.objects.get(previous=id)
        except Text.DoesNotExist:
            next = None
        if next is not None:
            next.previous = None
            next.save()
        text = Text.create(post, previous, content, link, role, image, cssId)
        text.save()
        if next is not None and next.id != text.id:
            next.previous = text
            next.save()
        serializer_app = TextSerializer(text, many=False)
        return JsonResponse(serializer_app.data)
    if (type == "citation"):
        previous = Citation.objects.get(id=id)
        text = request.POST['text']
        try:
            next = Citation.objects.get(previous=id)
        except Citation.DoesNotExist:
            next = None
        if next is not None:
            next.previous = None
            next.save()
        citation = Citation.create(post, previous, text)
        citation.save()
        if next is not None and next.id != citation.id:
            next.previous = citation
            next.save()
        serializer_app = CitationSerializer(citation, many=False)
        return JsonResponse(serializer_app.data)
    if (type == "appendix"):
        previous = Appendix.objects.get(id=id)
        indentLevel = request.POST['indentLevel']
        link = request.POST['link']
        text = request.POST['text']
        try:
            next = Appendix.objects.get(previous=id)
        except Appendix.DoesNotExist:
            next = None
        if next is not None:
            next.previous = None
            next.save()
        app = Appendix.create(previous, text, indentLevel, link, post)
        app.save()
        if next is not None and next.id != app.id:
            next.previous = app
            next.save()
        serializer_app = AppendixSerializer(app, many=False)
        return JsonResponse(serializer_app.data)


def checkNext(Model, id):
    try:
        Model.objects.get(previous=id)
        return True
    except Model.DoesNotExist:
        return False

@ csrf_exempt
def post_edit(request, slug):
    """
    Retrieve, update or delete a code snippet.
    """
    # Get Dummy object
    if slug == "Dummy":
        try:
            dummy = Post.objects.get(title="Dummy")
        except Post.DoesNotExist:
            dummy = Post.create(title="Dummy", slug="Dummy", thumnail=None, abstract="Dummy", updated_on=datetime.datetime.now(
            ), created_on=datetime.datetime.now(), status=0, total_visited=0, eng_ver=None, lang=0)
            dummy.save()
        serializer_app = PostSerializer(dummy, many=False)
        data = {'post': serializer_app.data, 'appendix': [],
                'text': [], 'citation': [],
                'styles': []}
        return JsonResponse(data)

    post = get_object_or_404(Post, slug=slug)

    vs = post.total_visited
    post.total_visited = vs + 1
    post.save()
    texts = list()
    appendists = list()
    citations = list()

    relas = Relationship.objects.filter(post=post)
    for r in relas:
        print(r.tag)

    try:
        text = Text.objects.filter(post=post).filter(previous__isnull=True)
        appendist = Appendix.objects.filter(
            post=post).filter(previous__isnull=True)
        citation = Citation.objects.filter(
            post=post).filter(previous__isnull=True)

        relationship = Relationship.objects.filter(post=post)

    except Post.DoesNotExist:
        return HttpResponse(status=404)

    for t in text:
        series_t = list()
        series_t.append(t.id)
        while(hasattr(t, 'next')):
            t = t.next
            series_t.append(t.id)
        texts.append(series_t)

    Rs = []
    for r in relationship:
        Rs.append(r.tag.title)

    for t in appendist:
        series_t = list()
        series_t.append(t.id)
        while(hasattr(t, 'next')):
            t = t.next
            series_t.append(t.id)
        appendists.append(series_t)

    for t in citation:
        series_t = list()
        series_t.append(t.id)
        while(hasattr(t, 'next')):
            t = t.next
            series_t.append(t.id)
        citations.append(series_t)

    styles = []
    styles = Style.objects.all()

    if request.method == 'GET':
        serializer_post = PostSerializer(post)
        t = []
        a = []
        c = []

        if (len(text) > 0):
            for item in texts[0]:
                t.append(Text.objects.get(id=item))
        if (len(appendists) > 0):
            for item in appendists[0]:
                a.append(Appendix.objects.get(id=item))
        if (len(citations) > 0):
            for item in citations[0]:
                c.append(Citation.objects.get(id=item))

        tags = Tag.objects.all()
        serializer_appendist = AppendixSerializer(a, many=True)
        serializer_text = TextSerializer(t, many=True)
        serializer_citation = CitationSerializer(c, many=True)
        data = {'post': serializer_post.data, 'appendix': serializer_appendist.data,
                'text': serializer_text.data, 'citation': serializer_citation.data,
                'styles': StyleSerializer(styles, many=True).data,
                'tags': TagSerializer(tags, many=True).data}

        return JsonResponse(data)

@ csrf_exempt
def updates(request):
    updates = Update.objects.all().reverse()
    serializer_post = UpdateSerializer(updates, many=True)
    return  JsonResponse(serializer_post.data, safe=False)
    

@ csrf_exempt
def update_add(request):
    try: 
        day = request.POST['day']
        content = request.POST['content']
        heading = request.POST['heading']
        updates = Update.create(day, heading, content)
        updates.save()
        serializer_post = UpdateSerializer(updates, many=False)
    except Update.DoesNotExist:
        return HttpResponse(status=404)
    return  JsonResponse(serializer_post.data, safe=False)

@ csrf_exempt
def post_detail(request, slug):
    """
    Retrieve, update or delete a code snippet.
    """
    # Get Dummy object
    print(slug)
    print("slug")
    if slug == "Dummy":
        try:
            dummy = Post.objects.get(title="Dummy")
        except Post.DoesNotExist:
            dummy = Post.create(title="Dummy", slug="Dummy", thumnail=None, abstract="Dummy", updated_on=datetime.datetime.now(
            ), created_on=datetime.datetime.now(), status=0, total_visited=0, eng_ver=None, lang=0)
            dummy.save()
        serializer_app = PostSerializer(dummy, many=False)
        data = {'post': serializer_app.data, 'appendix': [],
                'text': [], 'citation': [],
                'styles': []}
        return JsonResponse(data)
     
    post = get_object_or_404(Post, slug=slug)

    if post.static == 2:
        vs = post.total_visited
        post.total_visited = vs + 1
        post.save()
        html = HTML.objects.get(slug=slug)
        serializer_html = HTMLSerializer(html, many=False)
        serializer_post= PostSerializer(post, many=False)
        data = {'post': serializer_post.data, 'html': serializer_html.data}
        return JsonResponse(data)

    vs = post.total_visited
    post.total_visited = vs + 1
    post.save()
    texts = list()
    appendists = list()
    citations = list()

    relas = Relationship.objects.filter(post=post)
    for r in relas:
        print(r.tag)

    try:
        text = Text.objects.filter(post=post).filter(previous__isnull=True)
        appendist = Appendix.objects.filter(
            post=post).filter(previous__isnull=True)
        citation = Citation.objects.filter(
            post=post).filter(previous__isnull=True)

        relationship = Relationship.objects.filter(post=post)

    except Post.DoesNotExist:
        return HttpResponse(status=404)

    for t in text:
        series_t = list()
        series_t.append(t.id)
        while(hasattr(t, 'next')):
            t = t.next
            series_t.append(t.id)
        texts.append(series_t)

    Rs = []
    for r in relationship:
        Rs.append(r.tag.title)

    for t in appendist:
        series_t = list()
        series_t.append(t.id)
        while(hasattr(t, 'next')):
            t = t.next
            series_t.append(t.id)
        appendists.append(series_t)

    for t in citation:
        series_t = list()
        series_t.append(t.id)
        while(hasattr(t, 'next')):
            t = t.next
            series_t.append(t.id)
        citations.append(series_t)

    styles = []
    styles = Style.objects.all()

    if request.method == 'GET':
        serializer_post = PostSerializer(post)
        t = []
        a = []
        c = []

        if (len(text) > 0):
            for item in texts[0]:
                t.append(Text.objects.get(id=item))
        if (len(appendists) > 0):
            for item in appendists[0]:
                a.append(Appendix.objects.get(id=item))
        if (len(citations) > 0):
            for item in citations[0]:
                c.append(Citation.objects.get(id=item))

        tags = Tag.objects.all()
        serializer_appendist = AppendixSerializer(a, many=True)
        serializer_text = TextSerializer(t, many=True)
        serializer_citation = CitationSerializer(c, many=True)
        
        # print(TagSerializer(tags, many=True).data)
        
        data = {'post': serializer_post.data, 'appendix': serializer_appendist.data,
                'text': serializer_text.data, 'citation': serializer_citation.data,
                'styles': StyleSerializer(styles, many=True).data,
                'tags': TagSerializer(tags, many=True).data}

        return JsonResponse(data)
    
    
@ csrf_exempt
@api_view(['GET', 'POST'])
def post_text(request):
    """
    Retrieve, update or delete a code snippet.
    """
    post_id = request.POST.get('post_id')
    post = Post.objects.get(pk=post_id)
    vs = post.total_visited
    post.total_visited = vs + 1
    post.save()
    try:
        text = Text.objects.filter(post=post).order_by('-date_created')
        styles = []
        for item in text.iterator():
            style = Style.objects.filter(name=item.type)[0]
            data = StyleSerializer(style).data
            styles.append(data)
    except Post.DoesNotExist:
        return HttpResponse(status=404)

    if request.method == 'POST':
        serializer_text = TextSerializer(text, many=True)
        data = {'text': serializer_text.data, 'styles': styles}
        return JsonResponse(data)

@ csrf_exempt
@api_view(['GET', 'POST'])
def get_stories(request):
    # print("call api")
    topic_id = request.POST.get('topic_id')
    try: 
        posts = Post.objects.filter(topic=topic_id)
        serializer_post = PostSerializer(posts, many=True)
    except Post.DoesNotExist:
        return HttpResponse(status=404)
    return  JsonResponse(serializer_post.data, safe=False)


@ csrf_exempt
@api_view(['GET', 'POST'])
def post_detail_id(request):
    """
    Retrieve, update or delete a code snippet.
    """
    post_id = request.POST.get('post_id')

    # data = json.loads(request.body.decode('utf-8'))
    post = Post.objects.get(pk=post_id)
    vs = post.total_visited
    post.total_visited = vs + 1
    post.save()
    # _ = Post.objects.raw("UPDATE blog_post SET total_visited = %s WHERE id = %s", [
    #     post.total_visited + 1, post.id])
    try:
        text = Text.objects.filter(post=post).order_by('-date_created')
        appendist = Appendix.objects.filter(post=post)
        citation = Citation.objects.filter(post=post)
        styles = []
        for item in text.iterator():
            style = Style.objects.filter(name=item.type)[0]
            data = StyleSerializer(style).data
            styles.append(data)
    except Post.DoesNotExist:
        return HttpResponse(status=404)

    if request.method == 'POST':
        serializer_post = PostSerializer(post)
        serializer_appendist = AppendixSerializer(appendist, many=True)
        serializer_text = TextSerializer(text, many=True)
        serializer_citation = CitationSerializer(citation, many=True)
        data = {'post': serializer_post.data, 'appendix': serializer_appendist.data,
                'text': serializer_text.data, 'citation': serializer_citation.data, 'styles': styles}
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


@ csrf_exempt
def delete_comment(request, slug):
    post = get_object_or_404(Post, slug=slug)
    try:
        id = request.POST['id']
        Comment.objects.filter(id=id).delete()
        comment = Comment.objects.filter(post=post)
    except Post.DoesNotExist:
        return HttpResponse(status=404)

    if request.method == 'GET':
        commentSerializer = CommentSerializer(comment, many=True)
        return JsonResponse(commentSerializer.data, safe=False)


@ csrf_exempt
def create_comment(request, slug):
    post = get_object_or_404(Post, slug=slug)
    try:
        text = request.POST['text']
        reply_to = request.POST['reply_to']
        email = request.POST['email']
        if reply_to == 'null' or reply_to == 'undefined':
            reply_to = None
        else:
            reply_to = Comment.objects.get(pk=int(reply_to))
        user = User.objects.get(email__exact=email)
        post = Post.objects.get(slug=slug)
        newcomment = Comment(body=text, reply_to=reply_to,
                             user=user, email=email, post=post, name=user.username)
        newcomment.save()
        n = Comment.objects.filter(pk=newcomment.id)
        if request.method == 'POST':
            commentSerializer = CommentSerializer(n, many=True)
            return JsonResponse(commentSerializer.data, safe=False)

    except Post.DoesNotExist:
        return HttpResponse(status=404)


@ csrf_exempt
def update_comment(request, slug):
    post = get_object_or_404(Post, slug=slug)
    try:
        id = request.POST['id']
        text = request.POST['text']
        update = Comment.objects.filter(id=id)
        update.body = text
        update.save()
        # comment = Comment.objects.filter(post=post)
        comment = Comment.objects.filter(pk=update.id)
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

@ csrf_exempt
@api_view(['GET', 'POST'])
def image_upload_view(request):
    """Process images uploaded by users"""
    if 'file' in request.FILES:
        image = request.FILES['file']
        img = Image.create(image)
        img.save()
        serializer_app = ImageSerializer(img, many=False)
        return JsonResponse(serializer_app.data)
    
@ csrf_exempt
@api_view(['GET', 'POST'])
def html_save(request):
    """Process images uploaded by users"""
    slug = request.POST['slug']
    abstract = request.POST['abstract']
    content = request.POST['content']
    try:
        html = HTML.objects.get(slug=slug)
        html.content = content
        html.abstract = abstract
        html.save()
    except HTML.DoesNotExist:
        html = HTML.create(slug, abstract, content)
        html.save()
    serializer_app = HTMLSerializer(html, many=False)
    return JsonResponse(serializer_app.data)


@ csrf_exempt
@api_view(['GET', 'POST'])
def get_html(request):
    """Process images uploaded by users"""
    slug = request.POST['slug']
    html = HTML.objects.get(slug=slug)
    serializer_app = HTMLSerializer(html, many=False)
    return JsonResponse(serializer_app.data)

def format_text(text, style):
    if style == 'paragraph':
        return '<p className="post-body-text" >' + text.content.replace('\minus', " - ") + '</p>'
    if style == 'code':
        return '<pre className="pre_in_post"><code className="language-python">' + text.content + '</code></pre>'
    if style == 'image':
        return '<figure className="figure_in_post"><img loading="lazy" className="img_in_post" src="' + text.image.url + '"></img><figcaption className="caption_img_in_post">' + text.content + '</figcaption></figure>'
    if style == 'head1':
        return '<p className="h2_text">' + text.content + '</p>'
    if style == 'head2':
        return '<p className="h2_text">' + text.content + '</p>'
    if style == 'head3':
        return '<p className="h3_text">' + text.content + '</p>'
    if style == "head4":
        return '<p className="h3_text">' + text.content + '</p>'
    if style == 'html':
        return text.content
    if style == 'citation':
        return '<li className="citation">' + text + '</li>'
    if style == 'appendix':
        return '<li className="appendix" ><a>' + text + '</a></li>'
    return str(text)
    
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
    (17, 'img_src'))
    
def map_text_func(text_func):

    if text_func == 0 or text_func == 2 or text_func == 3:
        return 'paragraph'
    if text_func == 4:
        return 'citation'
    if text_func == 5:
        return 'appendix'
    if text_func == 1:
        return 'image'
    if text_func == 10:
        return 'code'
    if text_func == 6:
        return 'head1'
    if text_func == 7:
        return 'head2'
    if text_func == 8:
        return 'head3'
    if text_func == 9:
        return 'head4'
    if text_func == 13:
        return 'html'
    return 'paragraph'
    
@ csrf_exempt
@api_view(['GET', 'POST'])
def to_html(request):
    """
    Retrieve, update or delete a code snippet.
    """
    # # Get Dummy object
    # if slug == "Dummy":
    #     try:
    #         dummy = Post.objects.get(title="Dummy")
    #     except Post.DoesNotExist:
    #         dummy = Post.create(title="Dummy", slug="Dummy", thumnail=None, abstract="Dummy", updated_on=datetime.datetime.now(
    #         ), created_on=datetime.datetime.now(), status=0, total_visited=0, eng_ver=None, lang=0)
    #         dummy.save()
    #     serializer_app = PostSerializer(dummy, many=False)
    #     data = {'post': serializer_app.data, 'appendix': [],
    #             'text': [], 'citation': [],
    #             'styles': []}
    #     return JsonResponse(data)
    slug = request.POST['slug']
    
    post = get_object_or_404(Post, slug=slug)

    # if post.static == 2:
    #     vs = post.total_visited
    #     post.total_visited = vs + 1
    #     post.save()
    #     html = HTML.objects.get(slug=slug)
    #     serializer_app = HTMLSerializer(html, many=False)
    #     return JsonResponse(serializer_app.data)

    # vs = post.total_visited
    # post.total_visited = vs + 1
    # post.save()

    relas = Relationship.objects.filter(post=post)
    for r in relas:
        print(r.tag)

    try:
        text = Text.objects.filter(post=post).filter(previous__isnull=True)
        appendist = Appendix.objects.filter(
            post=post).filter(previous__isnull=True)
        citation = Citation.objects.filter(
            post=post).filter(previous__isnull=True)

        relationship = Relationship.objects.filter(post=post)

    except Post.DoesNotExist:
        return HttpResponse(status=404)
    
    text_sum = ''
    appendix_sum = ''
    citation_sum = '<h3>References</h3>'


    for t in text:
        # series_t = list()
        # series_t.append(t.id)
        text_sum = format_text(t, map_text_func(t.role));
        while(hasattr(t, 'next')):
            t = t.next
            text_sum = text_sum + format_text(t, map_text_func(t.role))

    Rs = []
    for r in relationship:
        Rs.append(r.tag.title)

    for t in appendist:
        # series_t = list()
        # series_t.append(t.id)
        appendix_sum = format_text(t.text, 'appendix')
        while(hasattr(t, 'next')):
            t = t.next
            appendix_sum = appendix_sum + format_text(t.text, 'appendix')

    for t in citation:
        # series_t = list()
        # series_t.append(t.id)
        citation_sum = format_text(t.text, 'citation')
        while(hasattr(t, 'next')):
            t = t.next
            citation_sum = citation_sum + format_text(t.text, 'citation')
    

    content = '<div className="appendix_container">' + appendix_sum + "</div>" + text_sum + citation_sum

    try:
        html = HTML.objects.get(slug=slug)
        html.content = content
        html.save()
    except HTML.DoesNotExist:
        html = HTML.create(slug=slug, abstract=request.POST['slug'], content=content)
        html.save()
    serializer_app = HTMLSerializer(html, many=False)
    return JsonResponse(serializer_app.data)

