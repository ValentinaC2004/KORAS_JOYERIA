# Generated by Django 4.1 on 2022-11-10 11:27

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('koras_joyeria', '0018_roles_alter_profile_rol_delete_rol'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='compra',
            name='usuario',
        ),
        migrations.AddField(
            model_name='compra',
            name='user',
            field=models.OneToOneField(default=2, on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL),
            preserve_default=False,
        ),
        migrations.DeleteModel(
            name='Usuario',
        ),
    ]
