# Generated by Django 4.0.2 on 2023-10-09 14:17

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0002_post_ava_post_features_post_modellink_post_topic_and_more'),
    ]

    operations = [
        migrations.AddField(
            model_name='post',
            name='static',
            field=models.IntegerField(default=0),
        ),
    ]
