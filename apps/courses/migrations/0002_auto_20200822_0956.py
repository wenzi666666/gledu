# Generated by Django 2.2 on 2020-08-22 09:56

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('courses', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='videoinfo',
            name='url',
            field=models.URLField(default='http://www.atguigu.com', verbose_name='视频链接'),
        ),
    ]
