# Generated by Django 4.0.2 on 2023-01-20 18:39

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('koras_joyeria', '0045_producto_subcategoria_alter_producto_categoria'),
    ]

    operations = [
        migrations.AlterField(
            model_name='subcategoria',
            name='categoria',
            field=models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, related_name='get_subcategoria', to='koras_joyeria.categoria'),
        ),
    ]
