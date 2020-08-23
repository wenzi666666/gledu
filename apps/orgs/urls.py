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

from django.urls import path,include
from .views import org_list, org_detail, org_detail_course, org_detail_desc, org_detail_teacher, teacher_list
app_name = 'orgs'

urlpatterns = [
    path('org_list/', org_list, name='org_list'),
    path('org_detail/<int:org_id>', org_detail, name='org_detail'),
    path('org_detail_course/<int:org_id>', org_detail_course, name='org_detail_course'),
    path('org_detail_desc/<int:org_id>', org_detail_desc, name='org_detail_desc'),
    path('org_detail_teacher/<int:org_id>', org_detail_teacher, name='org_detail_teacher'),

    path('teacher_list/', teacher_list, name='teacher_list'),

]
