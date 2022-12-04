from django.urls import path
from . import views

app_name = 'blog'

urlpatterns = [
    # path('', views.PostList.as_view(), name='home'),
    path('<slug:slug>/', views.post_detail, name='post_detail'),
    path('post/find/', views.post_detail_id, name='post_detail_id'),
    path('post/story/', views.get_stories, name='view_story'),
    path('<slug:slug>/comments/', views.comments_post, name='post_detail'),
    path('<slug:slug>/delete/comments/',
         views.delete_comment, name='delete_comment'),
    path('<slug:slug>/update/comments/',
         views.update_comment, name='delete_comment'),
    path('<slug:slug>/create/comments/',
         views.create_comment, name='delete_comment'),
    path('search/default/', view=views.search_default, name='default_list'),
    # path('search/<key:key>/', view=views.search_default, name='keyword_list'),
    path('get/slug/all/', view=views.get_all_slugs, name='slug_list'),
    path('list/all/', view=views.post_list, name='list_post'),
    path('list/relevent/', view=views.post_list_relevent, name='list_relevent'),
    path('list/recent/', view=views.post_list_recent, name='list_recent'),
    path('<str:t>/list/tag/',
         views.post_list_tag, name='post_relative'),
    path('<slug:slug>/list/relative/',
         views.post_list_relative, name='post_relative'),
    path('search', view=views.post_list_for_key,
         name='list_post_for_key'),
    path('upload/image/', views.image_upload_view, name='upload'),
    path('admin/update/', views.admin_update, name='update'),
    path('admin/delete/', views.admin_delete, name='delete'),
    path('admin/add/', views.admin_add, name='add'),
    path('admin/insert/', views.admin_insert, name='insert'),
    path('admin/side/', views.admin_side, name='side'),
    path('admin/dummy/', views.admin_dummy, name='side'),
    path('admin/removetag/', views.admin_removetag, name='side'),
    path('admin/taglist/', views.admin_taglist, name='side'),
    path('admin/deletepost/', views.admin_delete_post, name="deletepost"),
    path('admin/searchpost/', views.admin_search_post, name="searchpost"),
    path('admin/setnext/', views.admin_setnext, name="setnext"),
    path('admin/setprevious/', views.admin_setprevious, name="setprevious")
]
 