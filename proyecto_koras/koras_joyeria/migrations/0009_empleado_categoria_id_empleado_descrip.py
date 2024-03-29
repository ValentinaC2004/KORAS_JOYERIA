# Generated by Django 4.1 on 2022-09-22 11:12

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('koras_joyeria', '0008_tipo_empleado_tipo'),
    ]

    operations = [
        migrations.AddField(
            model_name='empleado',
            name='categoria_id',
            field=models.ForeignKey(default=2, on_delete=django.db.models.deletion.DO_NOTHING, to='koras_joyeria.categoria'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='empleado',
            name='descrip',
            field=models.CharField(max_length=100, null=True),
        ),
    ]
