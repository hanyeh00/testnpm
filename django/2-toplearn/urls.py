from django.urls import path
from . import views

urlpatterns=[#path("",views.index),
            path("<int:day>",views.days_num),
             path("<str:day>",views.print_days)]