# Generated by Django 4.0.2 on 2023-01-26 16:16

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('koras_joyeria', '0046_alter_subcategoria_categoria'),
    ]

    operations = [
        migrations.AlterField(
            model_name='basejoya',
            name='categoria',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.DO_NOTHING, related_name='get_basejoya', to='koras_joyeria.categoria'),
        ),
        migrations.AlterField(
            model_name='ensablespiedrasjoya',
            name='categoria',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.DO_NOTHING, related_name='get_ensamblespiedrasjoya', to='koras_joyeria.categoria'),
        ),
        migrations.AlterField(
            model_name='imagenproducto',
            name='producto',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='get_imagenes', to='koras_joyeria.producto'),
        ),
        migrations.AlterField(
            model_name='producto',
            name='subcategoria',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.DO_NOTHING, related_name='get_productos', to='koras_joyeria.subcategoria'),
        ),
    ]