"""guliedu URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path,include
from .views import course_list, course_detail, course_video, video

app_name = 'courses'

urlpatterns = [
    path('course_list/', course_list, name='course_list'),
    path('course_detail/<int:course_id>/', course_detail, name='course_detail'),
    path('course_video/<int:course_id>/', course_video, name='course_video'),
    path('video/<int:video_id>/', video, name='video'),
]
