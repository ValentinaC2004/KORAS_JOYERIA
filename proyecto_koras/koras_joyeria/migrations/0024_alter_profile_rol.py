# Generated by Django 4.1 on 2022-11-17 10:20

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('koras_joyeria', '0023_profile_rol_role_id_rol_role_nombre_rol'),
    ]

    operations = [
        migrations.AlterField(
            model_name='profile',
            name='rol',
            field=models.OneToOneField(null=True, on_delete=django.db.models.deletion.CASCADE, to='koras_joyeria.role'),
        ),
    ]