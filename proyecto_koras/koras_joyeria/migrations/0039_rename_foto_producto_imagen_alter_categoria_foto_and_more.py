# Generated by Django 4.0.2 on 2023-01-07 19:13

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('koras_joyeria', '0038_alter_producto_foto_alter_profile_image'),
    ]

    operations = [
        migrations.RenameField(
            model_name='producto',
            old_name='foto',
            new_name='imagen',
        ),
        migrations.AlterField(
            model_name='categoria',
            name='foto',
            field=models.ImageField(default='proyecto_koras/categorias/defaultcategory.jpeg', upload_to='proyecto_koras/categorias'),
        ),
        migrations.CreateModel(
            name='ImagenProducto',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('imagen', models.ImageField(default='proyecto_koras/productos/product-default.jpg', null=True, upload_to='proyecto_koras/productos')),
                ('producto', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='imagenes', to='koras_joyeria.producto')),
            ],
        ),
    ]
