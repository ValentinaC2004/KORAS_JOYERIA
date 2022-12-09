# Generated by Django 4.1 on 2022-12-05 09:51

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('koras_joyeria', '0031_alter_profile_image'),
    ]

    operations = [
        migrations.AlterField(
            model_name='producto',
            name='foto',
            field=models.ImageField(default='productos/default-productos.jpg', upload_to='proyecto_koras/productos'),
        ),
        migrations.AlterField(
            model_name='profile',
            name='image',
            field=models.ImageField(default='profiles/profile-default.jpg', upload_to='proyecto_koras/profiles'),
        ),
    ]
