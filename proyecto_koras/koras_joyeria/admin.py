from pyexpat import model
from django.contrib import admin
from koras_joyeria.models import Producto, Categoria, Usuario, Compra, CompraDetalle, MarcoP, MaterialP, DiamanteP, TallaP, SizeP, PesoP
# Register your models here.



class CategoriaAdmin(admin.ModelAdmin):
    list_display = ('id_categoria','nombre_categoria')

class ProductoAdmin(admin.ModelAdmin):
    list_display = ('id_producto','nombre_producto','precio_producto')

class UsuarioAdmin(admin.ModelAdmin):
    list_display = ('nombre','apellido','correo','usuario','clave')

class CompraAdmin(admin.ModelAdmin):
    list_display = ('fecha_hora','usuario')

class CompraDetalleAdmin(admin.ModelAdmin):
    list_display = ('id_compra','producto','precio','cantidad')


admin.site.register(MarcoP)
admin.site.register(MaterialP)
admin.site.register(DiamanteP)
admin.site.register(TallaP)
admin.site.register(SizeP)
admin.site.register(PesoP)


admin.site.register(Producto,ProductoAdmin)
admin.site.register(Categoria,CategoriaAdmin)
admin.site.register(Usuario,UsuarioAdmin)
admin.site.register(Compra,CompraAdmin)
admin.site.register(CompraDetalle,CompraDetalleAdmin)


