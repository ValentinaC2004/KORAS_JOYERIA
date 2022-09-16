from django.db import models

# Create your models here.

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

class Usuario(models.Model):
    nombre = models.CharField(max_length=100)
    apellido = models.CharField(max_length=100)
    correo = models.EmailField(max_length=254)
    usuario = models.CharField(max_length=50)
    clave = models.CharField(max_length=254)

    ROLES = (
        (1, 'Administrador'),
        (2, 'Cliente')
    )
    rol = models.SmallIntegerField(choices= ROLES, default=3)

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



