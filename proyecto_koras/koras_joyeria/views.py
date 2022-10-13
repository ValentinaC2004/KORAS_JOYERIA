from django.shortcuts import render, redirect
from django.contrib import messages
from koras_joyeria import Carrito
from .models import Producto, UserRegisterForm
# Create your views here.

def VerProducto(request,id):
    q = Producto.objects.get(pk = id)
    context = {'data':q}
    return render(request, 'koras_joyeria/tienda/ver-producto.html', context)

def Inquietudes(request):
    return render(request, 'koras_joyeria/info/inquietudes.html')

def Tienda(request):
    q = Producto.objects.all()
    context = {'data': q} 
    return render(request, 'koras_joyeria/tienda/tienda.html', context)

def VerCarrito(request):
    return render(request, 'koras_joyeria/tienda/ver-carrito.html')

#if carrito
def Agregar_producto(request, producto_id):
    carrito = Carrito(request)
    producto = Producto.objects.get(id=producto_id)
    carrito.agregar(producto)
    return redirect("koras_joyeria:ver-carrito")

def eliminar_producto(request, producto_id):
    carrito = Carrito(request)
    producto = Producto.objects.get(id=producto_id)
    carrito.eliminar(producto)
    return redirect("koras_joyeria:ver-carrito")

def restar_producto(request, producto_id):
    carrito = Carrito(request)
    producto = Producto.objects.get(id=producto_id)
    carrito.restar(producto)
    return redirect("koras_joyeria:ver-carrito")

def limpiar_carrito(request):
    carrito = Carrito(request)
    carrito.limpiar()
    return redirect("koras_joyeria:ver-carrito")

#endif carrito

def Home(request):
    return render(request, 'koras_joyeria/index.html')


def Profile(request):
    return render(request, 'koras_joyeria/profile/profile.html')

def Registro(request):
    if request.method == 'POST':
        form = UserRegisterForm(request.POST)
        if form.is_valid():
            form.save()
            username = form.cleaned_data['username']
            messages.success(request, f'Usuario {username}, ya puede iniciar sesión')
            return redirect('koras_joyeria:inicio')
    else:
        form = UserRegisterForm()
    context = { 'form' : form }
    return render(request, 'koras_joyeria/ingreso/registro.html',context)


