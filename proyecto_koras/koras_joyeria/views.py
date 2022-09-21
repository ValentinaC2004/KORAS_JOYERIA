from django.shortcuts import render

# Create your views here.

def Home(request):
    return render(request, 'koras_joyeria/index.html')

def Registro(request):
    return render(request, 'koras_joyeria/ingreso/registro.html')

def Inicio(request):
    return render(request, 'koras_joyeria/ingreso/inicio.html')