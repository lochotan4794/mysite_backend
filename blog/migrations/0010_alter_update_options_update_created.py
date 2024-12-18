# Generated by Django 4.0.2 on 2024-04-26 17:04

from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0009_alter_update_content'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='update',
            options={'ordering': ['created']},
        ),
        migrations.AddField(
            model_name='update',
            name='created',
            field=models.DateTimeField(auto_now_add=True, default=django.utils.timezone.now),
            preserve_default=False,
        ),
    ]
