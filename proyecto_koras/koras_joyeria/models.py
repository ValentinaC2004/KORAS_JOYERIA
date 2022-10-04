from tabnanny import verbose
from django.db import models

from django import forms
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User


class UserRegisterForm(UserCreationForm):
    email = forms.EmailField()
    password1 = forms.CharField()
    password2 = forms.CharField()

    class Meta:
        model = User
        fields = Userfields = ['first_name', 'last_name', 'email', 'username','password1', 'password2']
        help_texts = {k:"" for k in fields }




class Categoria(models.Model):
    id_categoria = models.IntegerField(unique=True)
    nombre_categoria = models.CharField(max_length=12)
    def __str__(self):
        return f"{self.id_categoria} - {self.nombre_categoria}"


class Producto(models.Model):
    id_producto = models.IntegerField(unique=True)
    nombre_producto = models.CharField(max_length=100)
    precio_producto = models.IntegerField()
    stock = models.IntegerField()
    desc = models.TextField()
    talla = models.IntegerField(null=True)
    color = models.CharField(max_length=10, null=True)
    peso = models.IntegerField(null=True)
    id_categoria = models.ForeignKey(Categoria, on_delete=models.DO_NOTHING)
    foto = models.CharField(max_length=10)
    
    def __str__(self):
        return f"{self.id_producto} - {self.nombre_producto}"

class Tipo(models.Model):
    nombre = models.CharField(max_length=100)

    def __str__(self):
        return self.nombre

    class Meta:
        verbose_name = 'Tipo'
        verbose_name_plural = 'Tipos'
        ordering = ['id']


class Empleado(models.Model):
    categoria_id = models.ForeignKey(Categoria, on_delete=models.DO_NOTHING)
    descrip = models.CharField(max_length=100, null=True)
    tipo = models.ForeignKey(Tipo, on_delete=models.PROTECT)
    nombre = models.CharField(max_length=100, null=False)
    apellido = models.CharField(max_length=100, null=False)
    correo = models.EmailField(max_length=254, unique=True, null=False)
    sueldo = models.IntegerField(null=False)
    fecha_nac = models.DateField('YYYY-MM-DD')
    foto = models.ImageField(upload_to = 'koras_joyeria/fotos', default='koras_joyeria/fotos/default.png')

    def __str__(self):
        return self.nombre + " " + self.apellido

    class Meta:
        verbose_name = 'Empleado'
        verbose_name_plural = 'Empleados'
        db_table = 'empleado'
        ordering = ['id']

class Usuario(models.Model):
    nombre = models.CharField(max_length=100)
    apellido = models.CharField(max_length=100)
    correo = models.EmailField(max_length=254)
    usuario = models.CharField(max_length=50)
    clave = models.CharField(max_length=254)

    

class Compra(models.Model):
    fecha_hora = models.DateTimeField(auto_now_add=True)
    usuario = models.ForeignKey(Usuario, on_delete=models.DO_NOTHING)
    ESTADOS = (
        (1, "Creada"),
        (2, "Confirmada"),
        (3, "Enviada"),
        (4, "Cancelada"),
    )

    estado = models.SmallIntegerField(choices=ESTADOS, default=1)
    
    def __str__(self):
        return f"{self.id} - {self.usuario}"

class CompraDetalle(models.Model):
    id_compra = models.ForeignKey(Compra, on_delete=models.DO_NOTHING)
    producto =  models.ForeignKey(Producto, on_delete=models.DO_NOTHING)
    precio = models.IntegerField()
    cantidad = models.IntegerField()
    
    def __str__(self):
        return f"{self.id} - {self.id_compra}"


#Adicionales para el panel de personalización para el anillo

class MarcoP(models.Model):
    marcop = models.CharField(max_length=100, null=True)
    
    def __str__(self):
        return f"{self.id} - {self.marcop}"

class MaterialP(models.Model):
    materialp = models.CharField(max_length=100, null=True)
    
    def __str__(self):
        return f"{self.id} - {self.materialp}"

class DiamanteP(models.Model):
    diamantep = models.CharField(max_length=100, null=True)
    
    def __str__(self):
        return f"{self.id} - {self.diamantep}"

class TallaP(models.Model):
    tallap = models.CharField(max_length=100, null=True)
    
    def __str__(self):
        return f"{self.id} - {self.tallap}"


class SizeP(models.Model):
    sizep = models.CharField(max_length=100, null=True)

    def __str__(self):
        return f"{self.id} - {self.sizep}"

class PesoP(models.Model):
    pesop = models.CharField(max_length=100, null=True)

    def __str__(self):
        return f"{self.id} - {self.pesop}"



