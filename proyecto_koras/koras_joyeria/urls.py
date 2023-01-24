#SECUNDARIAS URLS
from django.contrib.auth.views import LoginView, LogoutView
from django.contrib import admin
from django.urls import path
from koras_joyeria import views



app_name = 'koras_joyeria'
urlpatterns = [
    path('admin/', admin.site.urls, name='admin'),
    #Diseñar
    path('diseñarHome/', views.diseñarHome, name='diseñarHome'),

    #ingreso
    path('', views.Tienda , name='tienda'),
    path('registro/', views.Registro , name='registro'),
    path('inicio/', LoginView.as_view(template_name='koras_joyeria/ingreso/inicio.html'), name='inicio'),
    path('logout/', LogoutView.as_view(template_name='koras_joyeria/ingreso/logout.html'), name='logout'),

    #Tienda
    path('verCarrito/', views.VerCarrito, name='verCarrito'),
    path('carritoCompra/', views.carritoCompra, name='carritoCompra'),
    path('home/', views.Home , name='home'),
    path('tienda/', views.Tienda , name='tienda'),
    path('inquietudes/', views.Inquietudes , name='inquietudes'),
    path('ver-producto/<int:id>', views.VerProducto, name='ver-producto'),
    path('agregar/<int:producto_id>', views.Agregar_producto, name='Add'),
    path('eliminar/<int:producto_id>', views.eliminar_producto, name='Remove'),
    path('restar/<int:producto_id>', views.restar_producto, name='Sub'),
    path('limpiar/', views.limpiar_carrito, name='CLS'),

    path('catalogoHome/', views.CatalogoHome, name='catalogoHome'),
    path('mostrarCatalogo/<int:id>', views.mostrarCatalogo, name='mostrarCatalogo'),
    path('mostrarSubcategoria/<int:id>', views.mostrarSubcategoria, name='mostrarSubcategoria'),

    #Profile
    path('profile/', views.Profile, name='profile'),
    path('profileEdit/', views.ProfileEdit, name='profileEdit'),
    #Admin
    path('listaUsuarios/', views.ListaUsuarios, name='listaUsuarios'),
    path('listaProductos/', views.ListaProductos, name='listaProductos'),
    path('listaCategorias/', views.ListaCategorias, name='listaCategorias'),
    path('listaTallas/', views.ListaTallas, name='listaTallas'),
    path('listaPesos/', views.ListaPesos, name='listaPesos'),
    path('listaColores/', views.ListaColores, name='listaColores'),

    path('editarUsuarios/<int:id>', views.EditarUsuarios, name='editarUsuarios'),
    path('editarProductos/<int:id>', views.EditarProductos, name='editarProductos'),
    path('editarCategorias/<int:id>', views.EditarCategorias, name='editarCategorias'),
    path('editarTallas/<int:id>', views.EditarTallas, name='editarTallas'),
    path('editarColores/<int:id>', views.EditarColores, name='editarColores'),
    path('editarPesos/', views.EditarPesos, name='editarPesos'),

    path('actualizarCategoria/', views.ActualizarCategoria, name='actualizarCategoria'),
    path('actualizarTalla/', views.ActualizarTalla, name='actualizarTalla'),
    path('actualizarColores/', views.ActualizarColores, name='actualizarColores'),

    path('crearUsuarios/', views.CrearUsuarios, name='crearUsuarios'),
    path('crearProductos/', views.CrearProductos, name='crearProductos'),
    path('crearCategorias/', views.CrearCategorias, name='crearCategorias'),
    path('crearPesos/', views.CrearPesos, name='crearPesos'),
    path('crearTallas/', views.CrearTallas, name='crearTallas'),
    path('crearColores/', views.CrearColores, name='crearColores'),

    path('addProductos/', views.addProductos, name='addProductos'),
    path('addCategorias/', views.addCategorias, name='addCategorias'),
    path('addTallas/', views.addTallas, name='addTallas'),
    path('addColores/', views.addColores, name='addColores'),


    path('vistaProductos/', views.VistaProducto, name='vistaProductos'),

    path('eliminarProducto/<int:id>', views.EliminarProducto, name='eliminarProducto'),
    path('eliminarCategoria/<int:id>', views.EliminarCategoria, name='eliminarCategoria'),
    path('eliminarTalla/<int:id>', views.EliminarTalla, name='eliminarTalla'),
    path('eliminarUsuario/<int:id>', views.EliminarUsuarios, name='eliminarUsuario'),
    path('eliminarColores/<int:id>', views.EliminarColores, name='eliminarColores'),
    path('eliminarUsuarios/<int:id>', views.EliminarUsuarios, name='eliminarUsuarios'),

    path('diseñarAnillos/', views.DiseñarAnillos, name='diseñarAnillos'),
    path('diseñarCadenas/', views.DiseñarCadenas, name='diseñarCadenas'),
    path('diseñarArgollas/', views.DiseñarArgollas, name='diseñarArgollas'),
]




