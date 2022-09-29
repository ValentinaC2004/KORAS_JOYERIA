from audioop import reverse
from django.http import HttpResponseRedirect
from django.shortcuts import render

# Create your views here.

def Inquietudes(request):
    return render(request, 'koras_joyeria/info/inquietudes.html')

def Tienda(request):
    return render(request, 'koras_joyeria/tienda/tienda.html')
    

def Home(request):
    return render(request, 'koras_joyeria/index.html')

def Registro(request):
    return render(request, 'koras_joyeria/ingreso/registro.html')
    

def Inicio(request):
    return render(request, 'koras_joyeria/ingreso/inicio.html')