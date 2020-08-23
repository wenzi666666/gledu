from django.shortcuts import render,redirect
from django.views.generic.base import View
from django.contrib.auth.models import User
from .models import UserProfile, BannerInfo
from .forms import UserRegisterForm,UserLoginForm
from courses.models import CourseInfo
from orgs.models import OrgInfo
from django.db.models import Q
from django.urls import reverse
from django.contrib.auth import authenticate, logout, login
from django.contrib.auth.decorators import login_required
# Create your views here.

def index(request):
    all_banners = BannerInfo.objects.all().order_by('-add_time')[:5]
    banner_courses = CourseInfo.objects.filter(is_banner=True)[:3]
    all_courses = CourseInfo.objects.filter(is_banner=False)[:6]
    all_orgs = OrgInfo.objects.all()[:15]

    context = {
        'all_banners': all_banners,
        'banner_courses': banner_courses,
        'all_courses': all_courses,
        'all_orgs': all_orgs
    }
    return render(request, 'index.html',context=context)


def user_register(request):
    if request.method == 'GET':
        return render(request, 'user/register.html')
    else:
        user_register_form = UserRegisterForm(request.POST)
        if user_register_form.is_valid():
            email = user_register_form.cleaned_data['email']
            password = user_register_form.cleaned_data['password']

            user_list = UserProfile.objects.filter(Q(username=email) |Q(email=email))
            if user_list:
                return render(request, 'user/register.html', {
                    'msg': '用户已经存在'
                })
            else:
                a = UserProfile()
                a.username = email
                a.set_password(password)
                a.email = email
                a.save()
                return redirect(reverse('index'))
        else:
            return render(request, 'user/register.html', {
                'user_register_form': user_register_form
            })


def user_login(request):
    if request.method == "GET":
        return render(request, 'user/login.html')
    else:
        user_login_form = UserLoginForm(request.POST)
        if user_login_form.is_valid():
            email = user_login_form.cleaned_data['email']
            password = user_login_form.cleaned_data['password']

            user = authenticate(username=email,password=password)
            if user:
                login(request,user)
                return redirect(reverse('index'))
            else:
                return render(request, 'user/login.html', {
                    'msg': '邮箱或者密码有误'
                })
        else:
            return render(request, 'user/login.html', {
                'user_login_form': user_login_form
            })


def user_logout(request):
    logout(request)
    return redirect(reverse('index'))


# class IndexView(View):
#
#     def get(self,request):
#         all_banners = BannerInfo.objects.all().order_by('index')[:5]
#         return render(request,'index.html',{
#             'all_banners': all_banners,
#         })
#
# class LoginView(View):
#     def get(self,request):
#         return render(request, "login.html", {})
#     def post(self,request):
#         user_name = request.GET.get("username", "")
#         pass_word = request.GET.get("password", "")
#         user = authenticate(username=user_name, password=pass_word)
#         if user is not None:
#             login(request, user)
#             return render(request, "index2.html")
#         else:
#             return render(request, "login.html", {"msg":"用户名或密码错误"})


class LoginoutView(View):
    def get(self,request):
        logout(request)
        return redirect(reverse('index'))
