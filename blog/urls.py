from django.urls import path
from . import views

app_name = 'blog'

urlpatterns = [
    # path('', views.PostList.as_view(), name='home'),
    path('<slug:slug>/', views.post_detail, name='post_detail'),
    path('<slug:slug>/comments/', views.comments_post, name='post_detail'),
    path('search/default/', view=views.search_default, name='default_list'),
    # path('search/<key:key>/', view=views.search_default, name='keyword_list'),
    path('get/slug/all/', view=views.get_all_slugs, name='slug_list'),
    path('list/all/', view=views.post_list, name='list_post'),
    path('list/relevent/', view=views.post_list_relevent, name='list_relevent'),
    path('list/recent/', view=views.post_list_recent, name='list_recent'),
    path('<str:tag>/list/tag/',
         views.post_list_tag, name='post_relative'),
    path('<slug:slug>/list/relative/',
         views.post_list_relative, name='post_relative'),
    path('search', view=views.post_list_for_key,
         name='list_post_for_key'),
    path('upload/image/', views.image_upload_view, name='upload')
]
