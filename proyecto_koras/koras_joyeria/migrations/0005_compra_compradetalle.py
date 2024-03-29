# Generated by Django 4.1 on 2022-09-16 10:55

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('koras_joyeria', '0004_producto_color_producto_peso_producto_talla'),
    ]

    operations = [
        migrations.CreateModel(
            name='Compra',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('fecha_hora', models.DateTimeField(auto_now_add=True)),
                ('estado', models.SmallIntegerField(choices=[(1, 'Creada'), (2, 'Confirmada'), (3, 'Enviada'), (4, 'Cancelada')], default=1)),
                ('usuario', models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, to='koras_joyeria.usuario')),
            ],
        ),
        migrations.CreateModel(
            name='CompraDetalle',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('precio', models.IntegerField()),
                ('cantidad', models.IntegerField()),
                ('id_compra', models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, to='koras_joyeria.compra')),
                ('producto', models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, to='koras_joyeria.producto')),
            ],
        ),
    ]
