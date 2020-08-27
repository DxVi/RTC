# Generated by Django 3.1 on 2020-08-27 02:41

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('tablas', '0010_delete_members'),
    ]

    operations = [
        migrations.CreateModel(
            name='Members',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('queue', models.CharField(default='', max_length=3)),
                ('area', models.CharField(default='', max_length=30)),
                ('title', models.CharField(default='', max_length=10)),
                ('fname', models.CharField(default='', max_length=100)),
                ('mname', models.CharField(default='', max_length=100)),
                ('lname', models.CharField(default='', max_length=100)),
                ('mobile', models.CharField(default='', max_length=100)),
                ('address', models.CharField(default='', max_length=255)),
                ('plate', models.CharField(default='', max_length=10)),
                ('unit', models.CharField(default='', max_length=50)),
                ('orno', models.CharField(default='', max_length=20)),
                ('crno', models.CharField(default='', max_length=20)),
            ],
        ),
    ]
