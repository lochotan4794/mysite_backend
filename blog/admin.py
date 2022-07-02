from django.contrib import admin

# Register your models here.
from .models import Post, Text, Citation, Appendix, Comment


class TextInline(admin.TabularInline):
    model = Text
    extra = 1

class CitationInline(admin.TabularInline):
    model = Citation
    extra = 1

class AppendixInline(admin.TabularInline):
    model = Appendix
    extra = 1

class PostAdmin(admin.ModelAdmin):
    list_display = ('title', 'slug', 'status','created_on')
    list_filter = ("status",)
    search_fields = ['title']
    prepopulated_fields = {'slug': ('title',)}

    # fieldsets = [
    #     (None,               {'fields': ['question_text']}),
    #     ('Date information', {'fields': ['pub_date'], 'classes': ['collapse']}),
    # ]
    inlines = [AppendixInline, TextInline, CitationInline]

# class Textdmin(admin.ModelAdmin):
#     list_display = ('title', 'content', 'link','fontSize', 'indent', 'decor')
#     list_filter = ("post",)
#     search_fields = ['title', 'content']
#     # prepopulated_fields = {'slug': ('title',)}

class CommentAdmin(admin.ModelAdmin):
	list_display = ('name', 'email', 'post', 'created', 'active')
	list_filter = ('active', 'created', 'updated')
	search_fields = ('name', 'email', 'body')




admin.site.register(Comment, CommentAdmin)
admin.site.register(Post, PostAdmin)
admin.site.register(Text)
admin.site.register(Citation)
admin.site.register(Appendix)



