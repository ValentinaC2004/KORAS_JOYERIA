# Generated by Django 4.1 on 2022-11-24 10:31

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('koras_joyeria', '0028_remove_producto_peso_id_producto_peso_delete_peso'),
    ]

    operations = [
        migrations.RenameField(
            model_name='talla',
            old_name='categoria_id',
            new_name='id_categoria',
        ),
        migrations.RemoveField(
            model_name='producto',
            name='color',
        ),
        migrations.CreateModel(
            name='Colore',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre_color', models.CharField(max_length=20)),
                ('id_categoria', models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, to='koras_joyeria.categoria')),
            ],
        ),
        migrations.AddField(
            model_name='producto',
            name='id_color',
            field=models.ForeignKey(default=2, on_delete=django.db.models.deletion.DO_NOTHING, to='koras_joyeria.colore'),
            preserve_default=False,
        ),
    ]