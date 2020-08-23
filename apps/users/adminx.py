import xadmin
from .models import BannerInfo, EmailVerifyCode
from xadmin import views


#后台全局配置，增加主题,注册的时候要用到专用的view去注册
class BaseXadminSetting(object):
    enable_themes = True
    use_bootswatch = True


#后台全局配置，修改网站logo标题，收起导航栏目
class GlobalSettings(object):
    site_title = "蚊子后台管理系统"
    site_footer = "蚊子教育在线"
    menu_style = "accordion"


class BannerInfoXadmin(object):
    list_display = ['image', 'url', 'add_time']
    search_fields = ['image', 'url']
    list_filter = ['image', 'url']


class EmailVerifyCodeXadmin(object):
    list_display = ['code', 'email', 'send_type', 'add_time']



xadmin.site.register(BannerInfo, BannerInfoXadmin)
xadmin.site.register(EmailVerifyCode, EmailVerifyCodeXadmin)
xadmin.site.register(views.BaseAdminView, BaseXadminSetting)
xadmin.site.register(views.CommAdminView, GlobalSettings)