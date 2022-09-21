#SECUNDARIAS URLS

from django.contrib import admin
from django.urls import path
from koras_joyeria import views

app_name = 'koras'
urlpatterns = [
    path('', views.Home , name='home'),
    path('', views.Registro , name='registro'),
    path('', views.Inicio , name='inicio'),
]


