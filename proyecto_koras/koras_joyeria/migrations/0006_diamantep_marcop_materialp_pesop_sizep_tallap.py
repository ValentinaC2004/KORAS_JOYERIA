# Generated by Django 4.1 on 2022-09-20 13:32

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('koras_joyeria', '0005_compra_compradetalle'),
    ]

    operations = [
        migrations.CreateModel(
            name='DiamanteP',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('diamantep', models.CharField(max_length=100, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='MarcoP',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('marcop', models.CharField(max_length=100, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='MaterialP',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('materialp', models.CharField(max_length=100, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='PesoP',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('pesop', models.CharField(max_length=100, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='SizeP',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('sizep', models.CharField(max_length=100, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='TallaP',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('tallap', models.CharField(max_length=100, null=True)),
            ],
        ),
    ]