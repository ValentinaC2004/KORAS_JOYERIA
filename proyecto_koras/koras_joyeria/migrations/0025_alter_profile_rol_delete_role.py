# Generated by Django 4.1 on 2022-11-17 10:31

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('koras_joyeria', '0024_alter_profile_rol'),
    ]

    operations = [
        migrations.AlterField(
            model_name='profile',
            name='rol',
            field=models.SmallIntegerField(choices=[(1, 'Administrador'), (2, 'Empleado'), (3, 'Cliente')], default=3),
        ),
        migrations.DeleteModel(
            name='Role',
        ),
    ]
