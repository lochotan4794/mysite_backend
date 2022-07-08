from django.urls import path
from . import views

app_name = 'blog'

urlpatterns = [
    # path('', views.PostList.as_view(), name='home'),
    path('<slug:slug>/', views.post_detail, name='post_detail'),
    path('<slug:slug>/comments/', views.comments_post, name='post_detail'),
    path('search/default/', view=views.search_default, name='default_list'),
    # path('search/<key:key>/', view=views.search_default, name='keyword_list'),
    path('get/slug/all/', view=views.get_all_slugs,name='slug_list' ),
    path('list/all/', view=views.post_list,name='list_post' ),
    path('upload/image/', views.image_upload_view, name='upload')
]   