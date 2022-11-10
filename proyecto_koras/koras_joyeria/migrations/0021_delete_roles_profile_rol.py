# Generated by Django 4.1 on 2022-11-10 13:47

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('koras_joyeria', '0020_remove_profile_rol_remove_roles_nombre_rol_roles_rol_and_more'),
    ]

    operations = [
        migrations.DeleteModel(
            name='Roles',
        ),
        migrations.AddField(
            model_name='profile',
            name='rol',
            field=models.SmallIntegerField(choices=[(1, 'Cliente'), (2, 'Empleado'), (3, 'Administrador')], default=1),
        ),
    ]
