# Generated by Django 4.0.2 on 2023-01-26 22:17

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('koras_joyeria', '0049_alter_ensablespiedrasjoya_color'),
    ]

    operations = [
        migrations.AlterField(
            model_name='ensablespiedrasjoya',
            name='color',
            field=models.ForeignKey(blank=True, default=0, null=True, on_delete=django.db.models.deletion.DO_NOTHING, related_name='get_ensamblespiedrasjoya', to='koras_joyeria.diseñarcolor'),
        ),
    ]