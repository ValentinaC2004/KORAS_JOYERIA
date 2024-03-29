# Generated by Django 4.0.2 on 2023-01-15 13:06

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('koras_joyeria', '0041_basejoya_id_categoria_and_more'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='basejoya',
            name='id_categoria',
        ),
        migrations.RemoveField(
            model_name='ensablespiedrasjoya',
            name='id_categoria',
        ),
        migrations.RemoveField(
            model_name='joyaprediseñada',
            name='id_basejoya',
        ),
        migrations.RemoveField(
            model_name='joyaprediseñada',
            name='id_ensamblespiedrasjoya',
        ),
        migrations.AddField(
            model_name='basejoya',
            name='categoria',
            field=models.ForeignKey(default=2, on_delete=django.db.models.deletion.DO_NOTHING, to='koras_joyeria.categoria'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='ensablespiedrasjoya',
            name='categoria',
            field=models.ForeignKey(default=2, on_delete=django.db.models.deletion.DO_NOTHING, to='koras_joyeria.categoria'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='joyaprediseñada',
            name='basejoya',
            field=models.ForeignKey(default=2, on_delete=django.db.models.deletion.DO_NOTHING, to='koras_joyeria.basejoya'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='joyaprediseñada',
            name='ensamblespiedrasjoya',
            field=models.ForeignKey(default=2, on_delete=django.db.models.deletion.DO_NOTHING, to='koras_joyeria.ensablespiedrasjoya'),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='basejoya',
            name='palabrasClave',
            field=models.CharField(max_length=12),
        ),
        migrations.AlterField(
            model_name='categoria',
            name='nombre_categoria',
            field=models.CharField(max_length=20),
        ),
        migrations.AlterField(
            model_name='ensablespiedrasjoya',
            name='palabrasClave',
            field=models.CharField(max_length=12),
        ),
        migrations.CreateModel(
            name='SubCategoria',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre_subcategoria', models.CharField(max_length=20)),
                ('categoria', models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, to='koras_joyeria.categoria')),
            ],
        ),
    ]
