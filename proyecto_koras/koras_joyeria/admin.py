from pyexpat import model
from django.contrib import admin
from django.utils.html import format_html 
from koras_joyeria.models import Producto,Profile, Categoria, Usuario, Compra, CompraDetalle, MarcoP, MaterialP, DiamanteP, TallaP, SizeP, PesoP , Empleado, Tipo
# Register your models here.


class CategoriaAdmin(admin.ModelAdmin):
    list_display = ('id_categoria','nombre_categoria')

class ProductoAdmin(admin.ModelAdmin):

    def imagen(self, obj):
        return format_html('<img src="{}" width="110px"/>'.format(obj.foto.url))
        
    list_display = ('imagen','nombre_producto','precio_producto','stock','talla','color','peso','id_categoria','timestamp')

class UsuarioAdmin(admin.ModelAdmin):

    list_display = ('nombre','apellido','correo','usuario','clave')

class CompraAdmin(admin.ModelAdmin):
    list_display = ('fecha_hora','usuario')

class CompraDetalleAdmin(admin.ModelAdmin):
    list_display = ('id_compra','producto','precio','cantidad')

class EmpleadoAdmin(admin.ModelAdmin):
    list_display = ('nombre','apellido','correo','sueldo','fecha_nac','foto')

class ProfileAdmin(admin.ModelAdmin):
    def fotoPerfil(self, obj):
        return format_html('<img src="{}" width="110px"/>'.format(obj.image.url))

    list_display = ('fotoPerfil','user')


admin.site.register(MarcoP)
admin.site.register(MaterialP)
admin.site.register(DiamanteP)
admin.site.register(TallaP)
admin.site.register(SizeP)
admin.site.register(PesoP)

admin.site.register(Empleado,EmpleadoAdmin)
admin.site.register(Producto,ProductoAdmin)
admin.site.register(Categoria,CategoriaAdmin)
admin.site.register(Usuario,UsuarioAdmin)
admin.site.register(Compra,CompraAdmin)
admin.site.register(CompraDetalle,CompraDetalleAdmin)
admin.site.register(Tipo)
admin.site.register(Profile, ProfileAdmin)

