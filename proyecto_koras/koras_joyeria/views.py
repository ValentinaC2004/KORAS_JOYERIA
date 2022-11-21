from urllib import request
from django.http import HttpResponseRedirect
from django.shortcuts import render, redirect
from django.contrib import messages
from django.urls import reverse
from koras_joyeria.models import *
from koras_joyeria.Carrito import Carrito
from .forms import UserRegisterForm
# Create your views here.

# Diseñar joyeria

def diseñarHome(request):
    return render(request, 'koras_joyeria/diseñar/diseñarHome.html')

# Profile

def ProfileEdit(request):
    return render(request, 'koras_joyeria/profile/profile-edit.html')

def VerProducto(request,id):
    q = Producto.objects.get(pk = id)
    context = {'data':q}
    return render(request, 'koras_joyeria/tienda/ver-producto.html', context)

def Inquietudes(request):
    return render(request, 'koras_joyeria/info/inquietudes.html')

def Tienda(request):
    productos = Producto.objects.all()
    return render(request, 'koras_joyeria/tienda/tienda.html', {'productos':productos})

def VerCarrito(request):
    return render(request, 'koras_joyeria/tienda/ver-carrito.html')

def carritoCompra(request):
    return render(request, 'koras_joyeria/tienda/carrito-compra.html')

#if carrito
def Agregar_producto(request, producto_id):
    carrito = Carrito(request)
    producto = Producto.objects.get(id=producto_id)
    carrito.agregar(producto)
    return redirect("koras_joyeria:carritoCompra")

def eliminar_producto(request, producto_id):
    carrito = Carrito(request)
    producto = Producto.objects.get(id=producto_id)
    carrito.eliminar(producto)
    return redirect("koras_joyeria:carritoCompra")

def restar_producto(request, producto_id):
    carrito = Carrito(request)
    producto = Producto.objects.get(id=producto_id)
    carrito.restar(producto)
    return redirect("koras_joyeria:carritoCompra")

def limpiar_carrito(request):
    carrito = Carrito(request)
    carrito.limpiar()
    return redirect("koras_joyeria:carritoCompra")

#endif carrito

def Home(request):
    return render(request, 'koras_joyeria/index.html')

def Registro(request):
    if request.method == 'POST':
        form = UserRegisterForm(request.POST)
        if form.is_valid():
            form.save()
            username = form.cleaned_data['username']
            messages.success(request, f'{username}, ya puedes iniciar sesión')
            return redirect('koras_joyeria:inicio')
    else:
        messages.success(request, f'Ocurrio un problema, vuelva a intentarlo')
        form = UserRegisterForm()
    context = { 'form' : form }
    return render(request, 'koras_joyeria/ingreso/registro.html',context)


def Profile(request):
    return render(request, 'koras_joyeria/profile/profile.html')


#Administración
#LISTAS
def ListaUsuarios(request):
    users= User.objects.all()
    return render(request, 'koras_joyeria/admin/listas/listaUsuarios.html', {'users':users})

def ListaProductos(request):
    productos= Producto.objects.all()
    return render(request, 'koras_joyeria/admin/listas/listaProductos.html', {'productos':productos})

def ListaCategorias(request):
    categorias = Categoria.objects.all()
    return render(request, 'koras_joyeria/admin/listas/listaCategoria.html', {'categorias':categorias})


#EDITAR
def EditarUsuarios(request):
    return render(request, 'koras_joyeria/admin/edits/editarUsuario.html')

def EditarProductos(request):
    return render(request, 'koras_joyeria/admin/edits/editarProductos.html')


#CREAR
def CrearUsuarios(request):
    return render(request, 'koras_joyeria/admin/add/crearUsuarios.html')

def CrearProductos(request):
    return render(request, 'koras_joyeria/admin/add/crearProductos.html')

