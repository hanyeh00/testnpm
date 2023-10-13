from django.shortcuts import render
from django.http import HttpResponse, HttpResponseNotFound, HttpResponseRedirect

# Create your views here.
days = {"saturday": "today is saturday",
        "sunday": "today is sunday",
        "monday": "today is Monday",
        "tuesday": "today is tuesday",
        "wednesday": "today is wednesday",
        "thursday": "today is thursday",
        "friday": "today is friday"
        }


def days_num(request, day):
    list_number = list(days.keys())
    if day > len(list_number):
        return HttpResponse(f"page not found {day}")
    else:
        p = list_number[day - 1]

        return HttpResponseRedirect(f"{p}")


def index(request, day):
    return HttpResponse("it is a  number")


def print_days(request,day):
    get_day = days.get(day)
    if get_day in days.values():
        return HttpResponse(f"{get_day} : {day}")
    return HttpResponseNotFound("ooopssssssssssss")
