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

from django.views.generic import (TemplateView)
# Captura del path absoluto de este archivo.


from pathlib import Path
BASE_DIR = Path(__file__).resolve().parent.parent
# Obtener rutas de archivos y poder borrarlos
from os import remove, path
# Create your views here.

# Diseñar joyeria

def mostrarCatalogo(request,id):
    categoria = Categoria.objects.get(pk = id)
    context = {'categoria':categoria}
    return render(request, 'koras_joyeria/tienda/mostrarCatalogo.html',context)

def mostrarSubcategoria(request,id):
    subcategoria = SubCategoria.objects.get(pk = id)
    context = {'subcategoria':subcategoria}
    return render(request, 'koras_joyeria/tienda/mostrarSubcategoria.html',context)

def CatalogoHome(request):
    categorias = Categoria.objects.all()
    return render(request, 'koras_joyeria/tienda/catalogoHome.html', {'categorias':categorias})

def diseñarHome(request):
    categorias = Categoria.objects.all().order_by('-id')
    contexto = {"categorias":categorias}
    return render(request, 'koras_joyeria/diseñar/diseñarHome.html',contexto)

# Profile
def ProfileEdit(request):
    return render(request, 'koras_joyeria/profile/profile-edit.html')

def VerProducto(request,id):
    producto = Producto.objects.get(pk = id)
    context = {'producto':producto}
    return render(request, 'koras_joyeria/tienda/ver-producto.html', context)

def Inquietudes(request):
    return render(request, 'koras_joyeria/info/inquietudes.html')

def Tienda(request):
    newproduct = Producto.objects.all()[:5]
    newproducts = Producto.objects.all()
    productos = Producto.objects.all()[:10]
    categorias = Categoria.objects.all().order_by('-id')
    contexto = { "categorias": categorias,  "productos":productos, "newproduct":newproduct,"newproducts":newproducts}
    return render(request, 'koras_joyeria/tienda/tienda.html',contexto)

def VerCarrito(request):
    return render(request, 'koras_joyeria/tienda/ver-carrito.html')

def carritoCompra(request):
    return render(request, 'koras_joyeria/tienda/carrito-compra.html')

#if carrito
def Agregar_producto(request, producto_id):
    if not request.user.is_authenticated:
        messages.info(request, "Es necesario que inicie sesión primero...")
        return HttpResponseRedirect(reverse('koras_joyeria:tienda'))
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

def modificarPerfil(request,id):
    pass


def Profile(request):
    if not request.user.is_authenticated:
            messages.info(request, "Es necesario que inicie sesión primero...")
            return HttpResponseRedirect(reverse('koras_joyeria:tienda'))
    return render(request, 'koras_joyeria/profile/profile.html')

#Administración
#LISTAS
def ListaUsuarios(request):
    if not request.user.is_authenticated:
            messages.info(request, "Es necesario que inicie sesión primero...")
            return HttpResponseRedirect(reverse('koras_joyeria:tienda'))
    users= User.objects.all()
    return render(request, 'koras_joyeria/admin/listas/listaUsuarios.html', {'users':users})

def ListaProductos(request):
        if not request.user.is_authenticated:
            messages.info(request, "Es necesario que inicie sesión primero...")
            return HttpResponseRedirect(reverse('koras_joyeria:tienda'))
        p= Producto.objects.all()
        cat = Categoria.objects.all()
        contexto = { "Categoria": cat , "Producto":p }
        return render(request, 'koras_joyeria/admin/listas/listaProductos.html', contexto)
        

def ListaCategorias(request):
    if not request.user.is_authenticated:
            messages.info(request, "Es necesario que inicie sesión primero...")
            return HttpResponseRedirect(reverse('koras_joyeria:tienda'))
    categorias = Categoria.objects.all()
    return render(request, 'koras_joyeria/admin/listas/listaCategoria.html', {'categorias':categorias})

def ListaTallas(request):
    if not request.user.is_authenticated:
            messages.info(request, "Es necesario que inicie sesión primero...")
            return HttpResponseRedirect(reverse('koras_joyeria:tienda'))
    tallas= Talla.objects.all()
    return render(request, 'koras_joyeria/admin/listas/listaTallas.html', {'tallas':tallas})

def ListaPesos(request):
    if not request.user.is_authenticated:
            messages.info(request, "Es necesario que inicie sesión primero...")
            return HttpResponseRedirect(reverse('koras_joyeria:tienda'))
    return render(request, 'koras_joyeria/admin/listas/listaPesos.html')

def ListaColores(request):
    if not request.user.is_authenticated:
            messages.info(request, "Es necesario que inicie sesión primero...")
            return HttpResponseRedirect(reverse('koras_joyeria:tienda'))
    colores= Colore.objects.all()
    return render(request, 'koras_joyeria/admin/listas/listaColores.html', {'colores':colores})

#EDITAR
def EditarUsuarios(request,id):
    if not request.user.is_authenticated:
            messages.info(request, "Es necesario que inicie sesión primero...")
            return HttpResponseRedirect(reverse('koras_joyeria:tienda'))
    u = User.objects.get(pk = id)

    contexto = {'data': u }
    return render(request, 'koras_joyeria/admin/edits/editarUsuario.html', contexto)

def EditarProductos(request,id):
    if not request.user.is_authenticated:
            messages.info(request, "Es necesario que inicie sesión primero...")
            return HttpResponseRedirect(reverse('koras_joyeria:tienda'))
    p = Producto.objects.get(pk = id)
    col = Colore.objects.all()
    cat = Categoria.objects.all()
    t = Talla.objects.all()
    contexto = { "Categoria": cat , "Talla":t , "Producto":p, "Colore":col}

    return render(request, 'koras_joyeria/admin/edits/editarProductos.html',contexto)

def EditarCategorias(request, id):
    if not request.user.is_authenticated:
            messages.info(request, "Es necesario que inicie sesión primero...")
            return HttpResponseRedirect(reverse('koras_joyeria:tienda'))
    c = Categoria.objects.get(pk = id)

    contexto = {'data': c }

    return render(request, 'koras_joyeria/admin/edits/editarCategorias.html', contexto)

def EditarColores(request, id):
    if not request.user.is_authenticated:
            messages.info(request, "Es necesario que inicie sesión primero...")
            return HttpResponseRedirect(reverse('koras_joyeria:tienda'))
    col = Colore.objects.get(pk = id)

    contexto = {'data': col }

    return render(request, 'koras_joyeria/admin/edits/editarColores.html', contexto)

def EditarTallas(request, id):
    if not request.user.is_authenticated:
            messages.info(request, "Es necesario que inicie sesión primero...")
            return HttpResponseRedirect(reverse('koras_joyeria:tienda'))
    t = Talla.objects.get(pk = id)
    c = Categoria.objects.all()
    contexto = {'data': t , "Categoria":c}
    return render(request, 'koras_joyeria/admin/edits/editarTallas.html', contexto)

def EditarPesos(request):
    if not request.user.is_authenticated:
            messages.info(request, "Es necesario que inicie sesión primero...")
            return HttpResponseRedirect(reverse('koras_joyeria:tienda'))
    return render(request, 'koras_joyeria/admin/edits/editarPesos.html')

#ACTUALIZAR
def ActualizarUsuarios(request):
    if not request.user.is_authenticated:
            messages.info(request, "Es necesario que inicie sesión primero...")
            return HttpResponseRedirect(reverse('koras_joyeria:tienda'))
    return render(request, 'koras_joyeria/admin/edits/editarUsuario.html')

def ActualizarProductos(request):
    if not request.user.is_authenticated:
            messages.info(request, "Es necesario que inicie sesión primero...")
            return HttpResponseRedirect(reverse('koras_joyeria:tienda'))
    return render(request, 'koras_joyeria/admin/edits/editarProductos.html')

def ActualizarCategoria(request):
    if not request.user.is_authenticated:
            messages.info(request, "Es necesario que inicie sesión primero...")
            return HttpResponseRedirect(reverse('koras_joyeria:tienda'))
    c = Categoria.objects.get(pk = request.POST["id"])

    #actualizo los atributos del objeto, por los que viene del form
    c.nombre_categoria = request.POST["nombre_categoria"]
    #actualizamos el objeto en BD.
    c.save()
    messages.success(request, "Categoria actualizada correctamente!.")
    return HttpResponseRedirect(reverse('koras_joyeria:listaCategorias'))

def ActualizarColores(request):
    if not request.user.is_authenticated:
            messages.info(request, "Es necesario que inicie sesión primero...")
            return HttpResponseRedirect(reverse('koras_joyeria:tienda'))
    col = Colore.objects.get(pk = request.POST["id"])

    #actualizo los atributos del objeto, por los que viene del form
    col.nombre_color = request.POST["nombre_color"]
    #actualizamos el objeto en BD.
    col.save()
    messages.success(request, "Color cambiado correctamente!.")
    return HttpResponseRedirect(reverse('koras_joyeria:listaColores'))

def ActualizarTalla(request):
    if not request.user.is_authenticated:
            messages.info(request, "Es necesario que inicie sesión primero...")
            return HttpResponseRedirect(reverse('koras_joyeria:tienda'))
    t = Talla.objects.get(pk = request.POST["id"])
    c = Categoria.objects.get(pk = request.POST["id_categoria"])

    #actualizo los atributos del objeto, por los que viene del form
    t.talla = request.POST["talla"],
    t.id_categoria = c,
    #actualizamos el objeto en BD.
    t.save()
    messages.success(request, "Talla actualizada correctamente!.")
    return HttpResponseRedirect(reverse('koras_joyeria:listaTallas'))

#CREAR
def CrearUsuarios(request):
    try:
        if not request.user.is_authenticated:
            messages.info(request, "Es necesario que inicie sesión primero...")
            return HttpResponseRedirect(reverse('koras_joyeria:tienda'))
        return render(request, 'koras_joyeria/admin/add/crearUsuarios.html')

    except ValueError:
        messages.warning(request, "Valores no válidas en el formulario.")
        return HttpResponseRedirect(reverse('koras_joyeria:crearUsuarios'))

#PLIS

def CrearProductos(request):
    try:
        if not request.user.is_authenticated:
            messages.info(request, "Es necesario que inicie sesión primero...")
            return HttpResponseRedirect(reverse('koras_joyeria:tienda'))
        
        if request.user.profile.rol == 1:
            col = Colore.objects.all()
            c = Categoria.objects.all()
            t = Talla.objects.all()
            contexto = { "Categoria": c , "Talla":t , "Colore":col}
            return render(request, 'koras_joyeria/admin/add/crearProductos.html',contexto)
        else:
            messages.warning(request, "No estas autorizado para realizar esta acción.")
            return HttpResponseRedirect(reverse('koras_joyeria:tienda'))

    except ValueError:
        messages.warning(request, "Valores no válidas en el formulario.")
        return HttpResponseRedirect(reverse('koras_joyeria:crearProductos'))

def CrearCategorias(request):
    try:
        if not request.user.is_authenticated:
            messages.info(request, "Es necesario que inicie sesión primero...")
            return HttpResponseRedirect(reverse('koras_joyeria:tienda'))

        if request.user.profile.rol == 1:
            return render(request, 'koras_joyeria/admin/add/crearCategorias.html')
        else:
            messages.warning(request, "No estas autorizado para realizar esta acción.")
            return HttpResponseRedirect(reverse('koras_joyeria:tienda'))

    except ValueError:
        messages.warning(request, "Valores no válidas en el formulario.")
        return HttpResponseRedirect(reverse('koras_joyeria:crearCategorias'))

def CrearPesos(request):
    return render(request, 'koras_joyeria/admin/add/crearPesos.html')

def CrearTallas(request):
    try:
        if not request.user.is_authenticated:
            messages.info(request, "Es necesario que inicie sesión primero...")
            return HttpResponseRedirect(reverse('koras_joyeria:tienda'))
        if request.user.profile.rol == 1:
            c = Categoria.objects.all()
            t = Talla.objects.all()
            contexto = { "Categoria": c , "Talla":t}
            return render(request, 'koras_joyeria/admin/add/crearTallas.html', contexto)
        else:
            messages.warning(request, "No estas autorizado para realizar esta acción.")
            return HttpResponseRedirect(reverse('koras_joyeria:tienda'))

    except ValueError:
        messages.warning(request, "Valores no válidas en el formulario.")
        return HttpResponseRedirect(reverse('koras_joyeria:crearTallas'))

def CrearColores(request):
    try:
        if not request.user.is_authenticated:
            messages.info(request, "Es necesario que inicie sesión primero...")
            return HttpResponseRedirect(reverse('koras_joyeria:tienda'))
        if request.user.profile.rol == 1:
            col = Colore.objects.all()
            contexto = { "Colore":col}
            return render(request, 'koras_joyeria/admin/add/crearColores.html', contexto)
        else:
            messages.warning(request, "No estas autorizado para realizar esta acción.")
            return HttpResponseRedirect(reverse('koras_joyeria:tienda'))

    except ValueError:
        messages.warning(request, "Valores no válidas en el formulario.")
        return HttpResponseRedirect(reverse('koras_joyeria:crearColores'))

#GUARDAR
def addColores(request):
        if not request.user.is_authenticated:
            messages.info(request, "Es necesario que inicie sesión primero...")
            return HttpResponseRedirect(reverse('koras_joyeria:tienda'))
        if request.user.profile.rol == 1:
            col = Colore(
             nombre_color = request.POST["nombre_color"],
            )
            col.save()
            messages.success(request, "Color creado correctamente!.")
            return HttpResponseRedirect(reverse('koras_joyeria:listaColores'))
        else:
            messages.warning(request, "No estas autorizado para realizar esta acción.")
            return HttpResponseRedirect(reverse('koras_joyeria:tienda'))

def addTallas(request):
        if not request.user.is_authenticated:
            messages.info(request, "Es necesario que inicie sesión primero...")
            return HttpResponseRedirect(reverse('koras_joyeria:tienda'))
        if request.user.profile.rol == 1:
            c = Categoria.objects.get(pk = request.POST["id_categoria"])
            t = Talla(
                talla = request.POST["talla"],
                id_categoria = c
            )
            t.save()
            messages.success(request, "Talla creada correctamente!.")
            return HttpResponseRedirect(reverse('koras_joyeria:listaTallas'))
        else:
            messages.warning(request, "No estas autorizado para realizar esta acción.")
            return HttpResponseRedirect(reverse('koras_joyeria:tienda'))

def addCategorias(request):
    if not request.user.is_authenticated:
            messages.info(request, "Es necesario que inicie sesión primero...")
            return HttpResponseRedirect(reverse('koras_joyeria:tienda'))
    if request.user.profile.rol == 1:
        if request.FILES:
            fss = FileSystemStorage()
            f = request.FILES["foto"]
            file = fss.save("proyecto_koras/categorias/"+f.name, f)
        else:
            file = "proyecto_koras/categorias/fontcategoria-default.jpg"
            c = Categoria(
                nombre_categoria = request.POST["nombre_categoria"],
                foto = file
            )
            c.save()
            messages.success(request, "La categoria a sido creada correctamente!.")
            return HttpResponseRedirect(reverse('koras_joyeria:listaCategorias'))
    else:
            messages.warning(request, "No estas autorizado para realizar esta acción.")
            return HttpResponseRedirect(reverse('koras_joyeria:tienda'))

def addProductos(request):
    try:
        if not request.user.is_authenticated:
            messages.info(request, "Inicie sesión primero...")
            return HttpResponseRedirect(reverse('koras_joyeria:tienda'))

        if request.user.profile.rol == 1:
            if request.FILES:
                fss = FileSystemStorage()
                f = request.FILES["foto"]
                file = fss.save("proyecto_koras/productos/"+f.name, f)
            else:
                file = "proyecto_koras/productos/product-default.jpg"   
            col = Colore.objects.get(pk = request.POST["id_color"])
            t = Talla.objects.get(pk = request.POST["talla_id"])
            c = Categoria.objects.get(pk = request.POST["id_categoria"])
            p = Producto(
                nombre_producto = request.POST["nombre_producto"],
                precio_producto = request.POST["precio_producto"],
                stock = request.POST["stock"],
                desc = request.POST["desc"],
                talla_id = t,
                id_color = col,
                peso = request.POST["peso"],
                id_categoria = c,
                foto = file
            )
            p.save()
            messages.success(request, "Producto creado correctamente!.")
            return HttpResponseRedirect(reverse('koras_joyeria:listaProductos'))
        else:
            messages.warning(request, "No estas autorizado para realizar esta acción.")
            return HttpResponseRedirect(reverse('koras_joyeria:tienda'))

    except ValueError:
        messages.warning(request, "Valores no válidos en el formulario.")
        return HttpResponseRedirect(reverse('koras_joyeria:crearProductos'))

#VISTA PRODUCTO
def VistaProducto(request):
    return render(request, 'koras_joyeria/admin/vista/vistaProductos.html')

#ELIMINAR   -  v
def EliminarProducto(request, id):
    if not request.user.is_authenticated:
        messages.info(request, "Es necesario que inicie sesión primero...")
        return HttpResponseRedirect(reverse('koras_joyeria:tienda'))
    if request.user.profile.rol == 1:
        try:
            q = Producto.objects.get(pk = id)
            foto = str(BASE_DIR) + str(q.foto.url)
            q.delete()
            messages.success(request, "Producto eliminado correctamente!.")
            if path.exists(foto):
                if q.foto.url != '/uploads/proyecto_koras/productos/product-default.jpg':
                    remove(foto)
            else:
                raise Exception("No existe el archivo.")
        except Empleado.DoesNotExist:
            messages.error(request, "No existe el Usuario.")
        except Exception as p:
            messages.error(request, f"No se alcanzo a eliminar la foto. {p}")
    else:
        messages.warning(request, "No estas autorizado para realizar esta acción.")
        return HttpResponseRedirect(reverse('koras_joyeria:tienda'))
    return HttpResponseRedirect(reverse('koras_joyeria:listaProductos'))

def EliminarCategoria(request,id):
    if not request.user.is_authenticated:
        messages.info(request, "Es necesario que inicie sesión primero...")
        return HttpResponseRedirect(reverse('koras_joyeria:tienda'))
    if request.user.profile.rol == 1:
        try:
            q = Categoria.objects.get(pk = id)
            foto = str(BASE_DIR) + str(q.foto.url)
            q.delete()
            messages.success(request, "Categoria eliminada correctamente!.")
            if path.exists(foto):
                if q.foto.url != '/uploads/proyecto_koras/categorias/categoria-default.webp':
                    remove(foto)
            else:
                raise Exception("No existe el archivo.")
        except Empleado.DoesNotExist:
            messages.error(request, "No existe la categoria.")
        except Exception as p:
            messages.error(request, f"No se alcanzo a eliminar la foto. {p}")
    else:
        messages.warning(request, "No estas autorizado para realizar esta acción.")
        return HttpResponseRedirect(reverse('koras_joyeria:tienda'))
    return HttpResponseRedirect(reverse('koras_joyeria:listaCategorias'))


def EliminarTalla(request,id):
    if not request.user.is_authenticated:
            messages.info(request, "Es necesario que inicie sesión primero...")
            return HttpResponseRedirect(reverse('koras_joyeria:tienda'))
    if request.user.profile.rol == 1:
        q = Talla.objects.get(pk = id)
        q.delete()
        messages.success(request, "Talla eliminada correctamente!.")

        return HttpResponseRedirect(reverse('koras_joyeria:listaTallas'))
    else:
        messages.warning(request, "No estas autorizado para realizar esta acción.")
        return HttpResponseRedirect(reverse('koras_joyeria:tienda'))


def EliminarUsuarios(request,id):
    if not request.user.is_authenticated:
        messages.info(request, "Es necesario que inicie sesión primero...")
        return HttpResponseRedirect(reverse('koras_joyeria:tienda'))
    if request.user.profile.rol == 1:
        try:
            q = User.objects.get(pk = id)
            image = str(BASE_DIR) + str(q.profile.image.url)
            q.delete()
            messages.success(request, "Usuario eliminado correctamente!.")

            if path.exists(image):
                if q.profile.image.url != '/uploads/proyecto_koras/profiles/profile-default.png':
                    remove(image)
            else:
                raise Exception("No existe el archivo.")
        except Empleado.DoesNotExist:
            messages.error(request, "No existe el Usuario.")
        except Exception as u:
            messages.error(request, f"Error al eliminar foto. {u}")
    else:
        messages.warning(request, "No estas autorizado para realizar esta acción.")
        return HttpResponseRedirect(reverse('koras_joyeria:tienda'))
    return HttpResponseRedirect(reverse('koras_joyeria:listaUsuarios'))

def EliminarColores(request,id):
    if not request.user.is_authenticated:
            messages.info(request, "Es necesario que inicie sesión primero...")
            return HttpResponseRedirect(reverse('koras_joyeria:tienda'))
    if request.user.profile.rol == 1:
        col = Colore.objects.get(pk = id)
        col.delete()
        messages.success(request, "Color eliminado correctamente!.")

        return HttpResponseRedirect(reverse('koras_joyeria:listaColores'))
    else:
        messages.warning(request, "No estas autorizado para realizar esta acción.")
        return HttpResponseRedirect(reverse('koras_joyeria:tienda'))

#ADD
def guardarProducto(request):
    if not request.user.is_authenticated:
            messages.info(request, "Es necesario que inicie sesión primero...")
            return HttpResponseRedirect(reverse('koras_joyeria:tienda'))
    if request.user.profile.rol == 1:
        q = Producto(
            nombre_producto = request.POST["nombre_producto"],
            precio_producto = request.POST["precio_producto"],
            stock = request.POST["stock"],
            talla_id = request.POST["talla_id"],
            peso = request.POST["peso"],
            id_categoria = request.POST["id_categoria"],
    )
    else:
        messages.warning(request, "No estas autorizado para realizar esta acción.")
        return HttpResponseRedirect(reverse('koras_joyeria:tienda'))

    #PERSONALIZAR


def DiseñarColor(request,id):
    categoria = Categoria.objects.get(pk = id)
    contexto = { 'categoria':categoria}
    return render(request, 'koras_joyeria\diseñar\diseñarcolor.html',contexto)

def PersonalizarJoya(request,id):
    dcolor = diseñarColor.objects.get(pk = id)
    contexto = { 'dcolor':dcolor}
    return render(request, 'koras_joyeria\diseñar\personalizarjoya.html',contexto)

def DiseñarArgollas(request):
    return render(request, 'koras_joyeria/diseñar/diseñar-argollas/diseñar-argollas.html')

class Error404View(TemplateView):
    template_name = "koras_joyeria/Error_404.html"

def Loader(request):
    return render(request, 'koras_joyeria/base/loader.html')
        
        
def buscar(request):
    if not request.user.is_authenticated:
        messages.info(request, "Es necesario que inicie sesión primero...")
        return HttpResponseRedirect(reverse('koras_joyeria:tienda'))
    else:
        q = Producto.objects.filter(nombre__icontains = request.POST["dato"])
        contexto = {'data': q}
        return render(request, 'koras_joyeria/admin/listas/listaProductos.html', contexto)
