# Generated by Django 2.2 on 2020-08-23 20:30

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('courses', '0002_auto_20200822_0956'),
    ]

    operations = [
        migrations.AddField(
            model_name='courseinfo',
            name='is_banner',
            field=models.BooleanField(default=False, verbose_name='是否轮播'),
        ),
    ]
