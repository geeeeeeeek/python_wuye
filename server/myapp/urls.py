from django.urls import path

from myapp import views

app_name = 'myapp'
urlpatterns = [
    # api
    path('admin/overview/count', views.admin.overview.count),
    path('admin/overview/sysInfo', views.admin.overview.sysInfo),
    path('admin/park/list', views.admin.park.list_api),
    path('admin/park/create', views.admin.park.create),
    path('admin/park/update', views.admin.park.update),
    path('admin/park/delete', views.admin.park.delete),
    path('admin/repair/list', views.admin.repair.list_api),
    path('admin/repair/create', views.admin.repair.create),
    path('admin/repair/update', views.admin.repair.update),
    path('admin/repair/delete', views.admin.repair.delete),
    path('admin/asset/list', views.admin.asset.list_api),
    path('admin/asset/create', views.admin.asset.create),
    path('admin/asset/update', views.admin.asset.update),
    path('admin/asset/delete', views.admin.asset.delete),
    path('admin/thing/list', views.admin.thing.list_api),
    path('admin/thing/detail', views.admin.thing.detail),
    path('admin/thing/create', views.admin.thing.create),
    path('admin/thing/update', views.admin.thing.update),
    path('admin/thing/delete', views.admin.thing.delete),
    path('admin/classification/list', views.admin.classification.list_api),
    path('admin/classification/create', views.admin.classification.create),
    path('admin/classification/update', views.admin.classification.update),
    path('admin/classification/delete', views.admin.classification.delete),
    path('admin/tag/list', views.admin.tag.list_api),
    path('admin/tag/create', views.admin.tag.create),
    path('admin/tag/update', views.admin.tag.update),
    path('admin/tag/delete', views.admin.tag.delete),
    path('admin/banner/list', views.admin.banner.list_api),
    path('admin/banner/create', views.admin.banner.create),
    path('admin/banner/update', views.admin.banner.update),
    path('admin/banner/delete', views.admin.banner.delete),
    path('admin/ad/list', views.admin.ad.list_api),
    path('admin/ad/create', views.admin.ad.create),
    path('admin/ad/update', views.admin.ad.update),
    path('admin/ad/delete', views.admin.ad.delete),
    path('admin/notice/list', views.admin.notice.list_api),
    path('admin/notice/create', views.admin.notice.create),
    path('admin/notice/update', views.admin.notice.update),
    path('admin/notice/delete', views.admin.notice.delete),
    path('admin/loginLog/list', views.admin.loginLog.list_api),
    path('admin/loginLog/create', views.admin.loginLog.create),
    path('admin/loginLog/update', views.admin.loginLog.update),
    path('admin/loginLog/delete', views.admin.loginLog.delete),
    path('admin/opLog/list', views.admin.opLog.list_api),
    path('admin/errorLog/list', views.admin.errorLog.list_api),
    path('admin/user/list', views.admin.user.list_api),
    path('admin/user/create', views.admin.user.create),
    path('admin/user/update', views.admin.user.update),
    path('admin/user/updatePwd', views.admin.user.updatePwd),
    path('admin/user/delete', views.admin.user.delete),
    path('admin/user/info', views.admin.user.info),
    path('admin/adminLogin', views.admin.user.admin_login),


]
