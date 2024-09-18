from django.shortcuts import render
# ~/projects/django-web-app/merchex/listings/views.py

from django.http import HttpResponse


def home(request):
    return HttpResponse('<h1>Hello Django!</h1>')
