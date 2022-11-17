from django.contrib import admin
from django.contrib.auth.admin import UserAdmin
from django.utils.html import format_html 
from django.contrib.auth.forms import UserCreationForm, UserChangeForm
from koras_joyeria.models import Producto,Profile, Categoria, Compra, CompraDetalle, MarcoP, MaterialP, DiamanteP, TallaP, SizeP, PesoP , Empleado, Tipo,UserRegisterForm
# Register your models here.

#class UserRegisterFormAdmin(UserAdmin):
   # add_form = UserRegisterForm
    #list_display = ('pk' ,'first_name', 'last_name', 'username','email')
   # add_fieldsets = UserAdmin.add_fieldsets + (
      # (None, {'fields': ('first_name', 'last_name', 'username','email')}),
   #)
    #fieldsets = UserAdmin.fieldsets

class CategoriaAdmin(admin.ModelAdmin):
    list_display = ('id_categoria','nombre_categoria')

class ProductoAdmin(admin.ModelAdmin):

    def imagen(self, obj):
        return format_html('<img src="{}" width="110px"/>'.format(obj.foto.url))
        
    list_display = ('imagen','nombre_producto','precio_producto','stock','talla','color','peso','id_categoria','timestamp')

class CompraAdmin(admin.ModelAdmin):
    list_display = ('fecha_hora','user')

class CompraDetalleAdmin(admin.ModelAdmin):
    list_display = ('id_compra','producto','precio','cantidad')

class EmpleadoAdmin(admin.ModelAdmin):
    list_display = ('nombre','apellido','correo','sueldo','fecha_nac','foto')

class ProfileAdmin(admin.ModelAdmin):
    def fotoPerfil(self, obj):
        return format_html('<img src="{}" width="110px"/>'.format(obj.image.url))

    list_display = ('fotoPerfil','user','rol')

admin.site.register(MarcoP)
admin.site.register(MaterialP)
admin.site.register(DiamanteP)
admin.site.register(TallaP)
admin.site.register(SizeP)
admin.site.register(PesoP)

admin.site.register(Empleado,EmpleadoAdmin)
admin.site.register(Producto,ProductoAdmin)
admin.site.register(Categoria,CategoriaAdmin)
admin.site.register(Compra,CompraAdmin)
admin.site.register(CompraDetalle,CompraDetalleAdmin)
admin.site.register(Tipo)
admin.site.register(Profile, ProfileAdmin)
#admin.site.register(UserRegisterForm, UserRegisterFormAdmin)

