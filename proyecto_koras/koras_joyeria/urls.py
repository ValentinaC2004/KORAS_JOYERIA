#SECUNDARIAS URLS
from re import template
from django.contrib.auth.views import LoginView, LogoutView
from django.contrib import admin
from django.urls import path
from koras_joyeria import views

app_name = 'koras_joyeria'
urlpatterns = [
    path('', views.Tienda , name='tienda'),
    path('verCarrito/', views.VerCarrito, name='verCarrito'),
    path('carritoCompra/', views.carritoCompra, name='carritoCompra'),
    path('home/', views.Home , name='home'),
    path('registro/', views.Registro , name='registro'),
    path('inicio/', LoginView.as_view(template_name='koras_joyeria/ingreso/inicio.html'), name='inicio'),
    path('logout/', LogoutView.as_view(template_name='koras_joyeria/ingreso/logout.html'), name='logout'),
    path('tienda/', views.Tienda , name='tienda'),
    path('inquietudes/', views.Inquietudes , name='inquietudes'),
    path('ver-producto/<int:id>', views.VerProducto, name='ver-producto'),
    path('profile/', views.Profile, name='profile'),
    path('agregar/<int:producto_id>', views.Agregar_producto, name='Add'),
    path('eliminar/<int:producto_id>', views.eliminar_producto, name='Remove'),
    path('restar/<int:producto_id>', views.restar_producto, name='Sub'),
    path('limpiar/', views.limpiar_carrito, name='CLS'),

]


