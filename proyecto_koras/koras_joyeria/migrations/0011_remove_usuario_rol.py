# Generated by Django 4.1 on 2022-10-04 09:35

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('koras_joyeria', '0010_alter_usuario_rol'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='usuario',
            name='rol',
        ),
    ]
