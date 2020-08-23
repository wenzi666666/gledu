from django.shortcuts import render
from .models import OrgInfo, CityInfo, TeacherInfo
from operations.models import UserLove
from django.core.paginator import Paginator, PageNotAnInteger, EmptyPage


def org_list(request):
    all_orgs = OrgInfo.objects.all()
    all_citys = CityInfo.objects.all()
    teachers = TeacherInfo.objects.all()
    sort_orgs = all_orgs.order_by('-love_num')[:3]

    #按照机构类别进行过滤
    cate = request.GET.get('cate','')
    if cate:
        all_orgs = all_orgs.filter(category=cate)

    #按照所在地区进行过滤
    cityid = request.GET.get('cityid','')
    if cityid:
        all_orgs = all_orgs.filter(cityinfo_id=int(cityid))

    #分页功能
    pagenum = request.GET.get('pagenum','')
    pa =  Paginator(all_orgs,2)
    try:
        pages = pa.page(pagenum)
    except PageNotAnInteger:
        pages = pa.page(1)
    except EmptyPage:
        pages = pa.page(pa.num_pages)


    context = {
        'all_orgs': all_orgs,
        'pages': pages,
        'all_citys': all_citys,
        'sort_orgs': sort_orgs,
        'teachers': teachers,
        'cate': cate,
        'cityid': cityid,
    }

    return render(request, 'org/org_base.html', context=context)


def org_detail(request,org_id):
    if org_id:
        org = OrgInfo.objects.filter(id=int(org_id))[0]

        # lovestatus = False
        # if request.user.is_authenticated():
        #     love = UserLove.objects.filter(lova_man=request.user,love_id=int(org_id),love_type=1,love_status=True)
        #     if love:
        #         lovestatus = True

        context = {
            "org": org,
            "detail_type": 'home',
            # "lovestatus": lovestatus
        }
        return render(request, 'org/org-detail-homepage.html', context=context)


def org_detail_course(request,org_id):
    if org_id:
        org = OrgInfo.objects.filter(id=int(org_id))[0]
        all_courses = org.courseinfo_set.all()

        # lovestatus = False
        # if request.user.is_authenticated():
        #     love = UserLove.objects.filter(lova_man=request.user,love_id=int(org_id),love_type=1,love_status=True)
        #     if love:
        #         lovestatus = True

        # 分页功能
        pagenum = request.GET.get('pagenum', '')
        pa = Paginator(all_courses, 2)
        try:
            pages = pa.page(pagenum)
        except PageNotAnInteger:
            pages = pa.page(1)
        except EmptyPage:
            pages = pa.page(pa.num_pages)

        context = {
            "org": org,
            "pages": pages,
            "detail_type": 'course',
            # "lovestatus": lovestatus
        }

        return render(request, 'org/org-detail-course.html', context=context)


def org_detail_desc(request, org_id):
    if org_id:
        org = OrgInfo.objects.filter(id=int(org_id))[0]

        # lovestatus = False
        # if request.user.is_authenticated():
        #     love = UserLove.objects.filter(lova_man=request.user,love_id=int(org_id),love_type=1,love_status=True)
        #     if love:
        #         lovestatus = True


        context = {
            "org": org,
            "detail_type": 'desc',
            # "lovestatus": lovestatus
        }
        return render(request, 'org/org-detail-desc.html', context=context)


def org_detail_teacher(request, org_id):
    if org_id:
        org = OrgInfo.objects.filter(id=int(org_id))[0]

        # lovestatus = False
        # if request.user.is_authenticated():
        #     love = UserLove.objects.filter(lova_man=request.user,love_id=int(org_id),love_type=1,love_status=True)
        #     if love:
        #         lovestatus = True

        context = {
            "org": org,
            "detail_type": 'teacher',
            # "lovestatus": lovestatus
        }
        return render(request, 'org/org-detail-teachers.html', context=context)


def teacher_list(request):
    all_teachers = TeacherInfo.objects.all()

    context ={
        'all_teachers': all_teachers
    }

    return render(request, 'org/teachers-list.html',context=context)