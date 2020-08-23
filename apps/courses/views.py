from django.shortcuts import render
from .models import CourseInfo, SourceInfo, VideoInfo, LessonInfo

# Create your views here.


def course_list(request):
    all_courses = CourseInfo.objects.all()
    recommend_courses = all_courses.order_by('-add_time')[:3]

    context = {
        'all_courses': all_courses,
        'recommend_courses': recommend_courses
    }
    return render(request, 'course/course-list.html', context=context)


def course_detail(request,course_id):
    if course_id:
        course = CourseInfo.objects.filter(id = int(course_id))[0]

        relate_course = CourseInfo.objects.filter(category=course.category).exclude(id=int(course_id))

        context = {
            'course': course,
            'relate_course': relate_course
        }

        return render(request, 'course/course-detail.html', context=context)


def course_video(request,course_id):
    if course_id:
        course = CourseInfo.objects.filter(id = int(course_id))[0]

        context = {
            'course': course,
        }

        return render(request, 'course/course-video.html', context=context)