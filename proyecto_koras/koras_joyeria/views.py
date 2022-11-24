from os import remove , path
from urllib import request
from django.http import HttpResponseRedirect
from django.shortcuts import get_object_or_404, render, redirect
from django.contrib import messages
from django.urls import reverse
from koras_joyeria.models import *
from koras_joyeria.Carrito import Carrito
from .forms import UserRegisterForm

from django.core.files.storage import FileSystemStorage

# Captura del path absoluto de este archivo.
from pathlib import Path
BASE_DIR = Path(__file__).resolve().parent.parent
# Obtener rutas de archivos y poder borrarlos
from os import remove, path
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

def ListaTallas(request):
    tallas= Talla.objects.all()
    return render(request, 'koras_joyeria/admin/listas/listaTallas.html', {'tallas':tallas})

def ListaPesos(request):
    return render(request, 'koras_joyeria/admin/listas/listaPesos.html')


#EDITAR
def EditarUsuarios(request):
    return render(request, 'koras_joyeria/admin/edits/editarUsuario.html')

def EditarProductos(request):
    return render(request, 'koras_joyeria/admin/edits/editarProductos.html')

def EditarCategorias(request):
    c = Categoria.objects.get(pk = id)
    contexto = { 'Categoria': c}
    return render(request, 'koras_joyeria/admin/edits/editarCategorias.html', contexto)

def EditarTallas(request):
    return render(request, 'koras_joyeria/admin/edits/editarTallas.html')

def EditarPesos(request):
    return render(request, 'koras_joyeria/admin/edits/editarPesos.html')

#ACTUALIZAR
def ActualizarUsuarios(request):
    return render(request, 'koras_joyeria/admin/edits/editarUsuario.html')

def ActualizarProductos(request):
    return render(request, 'koras_joyeria/admin/edits/editarProductos.html')

def ActualizarCategoria(request):
    c = Categoria.objects.get(pk = request.POST["id"])

    #actualizo los atributos del objeto, por los que viene del form
    c.nombre_categoria = request.POST["nombre_categoria"]
    #actualizamos el objeto en BD.
    c.save()
    return HttpResponseRedirect(reverse('koras_joyeria:listaCategorias'))

#CREAR
def CrearUsuarios(request):
    return render(request, 'koras_joyeria/admin/add/crearUsuarios.html')

#PLIS
def CrearProductos(request):
    col = Colore.objects.all()
    p = Producto.objects.all()
    c = Categoria.objects.all()
    t = Talla.objects.all()

    contexto = { "Categoria": c , "Producto":p , "Talla":t , "Colore":col}
    return render(request, 'koras_joyeria/admin/add/crearProductos.html',contexto)

def CrearCategorias(request):
    return render(request, 'koras_joyeria/admin/add/crearCategorias.html')

def CrearPesos(request):
    return render(request, 'koras_joyeria/admin/add/crearPesos.html')

def CrearTallas(request):
    return render(request, 'koras_joyeria/admin/add/crearTallas.html')

#GUARDAR
def addCategorias(request):
        c = Categoria(
            nombre_categoria = request.POST["nombre_categoria"],
        )
        c.save()
        messages.success(request, "Categoria creada correctamente!.")
        return HttpResponseRedirect(reverse('koras_joyeria:listaCategorias'))

def addProductos(request):
    if request.FILES:
        fss = FileSystemStorage()
        f = request.FILES["foto"]
        file = fss.save("proyecto_koras/uploads/productos/"+f.name, f)
    else:
        file = "proyecto_koras/uploads/productos/default-productos.jpg"
        c = Categoria.objects.get(pk = request.POST["id"])
        p = Producto(
            nombre_producto = request.POST["nombre_producto"],
            precio_producto = request.POST["precio_producto"],
            stock = request.POST["stock"],
            desc = request.POST["desc"],
            talla_id = request.POST["talla_id"],
            color = request.POST["color"],
            peso = request.POST["peso"],
            id_categoria = c,
            foto = file
        )
        p.save()
        messages.success(request, "Producto creado correctamente!.")
        return HttpResponseRedirect(reverse('koras_joyeria:listaProductos'))

#VISTA PRODUCTO
def VistaProducto(request):
    return render(request, 'koras_joyeria/admin/vista/vistaProductos.html')

#ELIMINAR   -  v
def EliminarProducto(request, id):
    q = Producto.objects.get(pk = id)
    foto = str(BASE_DIR) + str(q.foto.url)  
    q.delete()
    messages.success(request, "Producto eliminado correctamente!.")
    if path.exists(foto):
        if q.foto.url != '/uploads/productos/default-productos.jpg':
            remove(foto)

    return HttpResponseRedirect(reverse('koras_joyeria:listaProductos'))

def EliminarCategoria(request,id):
    q = Categoria.objects.get(pk = id)
    q.delete()
    messages.success(request, "Categoria eliminada correctamente!.")

    return HttpResponseRedirect(reverse('koras_joyeria:listaCategorias'))

def EliminarTalla(request,id):
    q = Talla.objects.get(pk = id)
    q.delete()
    messages.success(request, "Talla eliminada correctamente!.")

    return HttpResponseRedirect(reverse('koras_joyeria:listaTallas'))

def EliminarUsuarios(request,id):
    q = User.objects.get(pk = id)
    q.delete()
    messages.success(request, "Usuario eliminado correctamente!.")

    return HttpResponseRedirect(reverse('koras_joyeria:listaUsuarios'))

#ADD
def guardarProducto(request):
    q = Producto(
        nombre_producto = request.POST["nombre_producto"],
        precio_producto = request.POST["precio_producto"],
        stock = request.POST["stock"],
        talla_id = request.POST["talla_id"],
        peso = request.POST["peso"],
        id_categoria = request.POST["id_categoria"],
    )

        



