from django.utils import timezone
from django.db import models
from koras_joyeria.forms import UserRegisterForm
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User
from django.db.models.signals import post_save

class Profile(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    image = models.ImageField(upload_to="proyecto_koras/profiles", default="proyecto_koras/profiles/profile-default.jpg")
    ROLES = (
        (1, 'Administrador'),
        (2, 'Empleado'),
        (3, 'Cliente'),
    )
    rol = models.SmallIntegerField(choices= ROLES, default=3)
    
    def nombreRol(self):
        return self.get_rol_display()

    def __str__(self):
        return f"{self.user.username} - Rol: {self.nombreRol()} Perfil de {self.user.username} - {self.image.url}"

def create_profile(sender, instance,created,**kwargs):
    if created:
        Profile.objects.create(user=instance)

post_save.connect(create_profile, sender=User)

class Categoria(models.Model):
    nombre_categoria = models.CharField(max_length=12)

    foto = models.ImageField(upload_to="proyecto_koras/categorias", default="proyecto_koras/categorias/fontcategoria-default.jpg")

    def __str__(self):
        return f"{self.nombre_categoria}"

class Talla(models.Model):
    talla = models.CharField(max_length=20)
    id_categoria = models.ForeignKey(Categoria, on_delete=models.DO_NOTHING)

    def __str__(self):
        return f"{self.talla} - {self.id_categoria}"

class Colore(models.Model):
    nombre_color = models.CharField(max_length=20)
  
    def __str__(self):
        return f"{self.nombre_color}"

class Producto(models.Model):
    timestamp = models.DateTimeField(default=timezone.now)
    nombre_producto = models.CharField(max_length=100)
    precio_producto = models.IntegerField()
    stock = models.IntegerField()
    desc = models.TextField()
    talla_id = models.ForeignKey(Talla, on_delete=models.DO_NOTHING , null=True)
    id_color = models.ForeignKey(Colore, on_delete=models.DO_NOTHING, null=True)
    peso= models.CharField(max_length=10 , null=True)
    id_categoria = models.ForeignKey(Categoria, on_delete=models.DO_NOTHING, null=True)
    foto = models.ImageField(upload_to="proyecto_koras/productos", default="proyecto_koras/productos/default-productos.jpg", null=True)

    class Meta:
        ordering = ['-timestamp']
    
    def __str__(self):
        return f"{self.nombre_producto}"

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

class Compra(models.Model):
    fecha_hora = models.DateTimeField(auto_now_add=True)
    user = models.ForeignKey(User, on_delete=models.DO_NOTHING)
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


class SizeP(models.Model):
    sizep = models.CharField(max_length=100, null=True)

    def __str__(self):
        return f"{self.id} - {self.sizep}"




