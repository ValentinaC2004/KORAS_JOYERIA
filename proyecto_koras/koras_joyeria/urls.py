#SECUNDARIAS URLS

from django.contrib import admin
from django.urls import path
from koras_joyeria import views

app_name = 'koras_joyeria'
urlpatterns = [
    path('', views.Tienda , name='tienda'),
    path('home/', views.Home , name='home'),
    path('registro/', views.Registro , name='registro'),
    path('inicio/', views.Inicio , name='inicio'),
    path('tienda/', views.Tienda , name='tienda'),
    path('inquietudes/', views.Inquietudes , name='inquietudes'),
]


