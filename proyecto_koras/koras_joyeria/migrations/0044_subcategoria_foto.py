# Generated by Django 4.0.2 on 2023-01-15 13:13

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('koras_joyeria', '0043_remove_producto_id_categoria_producto_categoria'),
    ]

    operations = [
        migrations.AddField(
            model_name='subcategoria',
            name='foto',
            field=models.ImageField(default='proyecto_koras/categorias/defaultcategory.jpeg', upload_to='proyecto_koras/subcategorias'),
        ),
    ]