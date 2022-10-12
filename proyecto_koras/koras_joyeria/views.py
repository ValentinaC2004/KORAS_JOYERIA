from audioop import reverse
from email import message
from multiprocessing import context
from django.http import HttpResponseRedirect
from django.shortcuts import render, redirect
from django.contrib import messages
from .models import Producto, UserRegisterForm
# Create your views here.



def VerProducto(request,id):
    q = Producto.objects.get(pk = id)
    contexto = {'data':q}
    return render(request, 'koras_joyeria/tienda/ver-producto.html', contexto)

def Inquietudes(request):
    return render(request, 'koras_joyeria/info/inquietudes.html')

def Tienda(request):
    q = Producto.objects.all()
    contexto = {'data': q} 
    return render(request, 'koras_joyeria/tienda/tienda.html', contexto)
     

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
    

