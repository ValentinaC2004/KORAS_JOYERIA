# Generated by Django 4.0.2 on 2022-10-06 15:11

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('koras_joyeria', '0014_alter_producto_foto'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='producto',
            name='id_producto',
        ),
        migrations.AlterField(
            model_name='producto',
            name='foto',
            field=models.ImageField(default='productos/default-productos.jpg', upload_to='productos'),
        ),
    ]
