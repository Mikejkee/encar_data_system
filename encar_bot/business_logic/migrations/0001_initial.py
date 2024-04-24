# Generated by Django 5.0.4 on 2024-04-12 10:05

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='DBLog',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('creation_datetime', models.DateTimeField(auto_now_add=True, verbose_name='Время создания')),
                ('update_datetime', models.DateTimeField(auto_now_add=True, verbose_name='Время обновления')),
                ('flag', models.BooleanField(default=1, verbose_name='Флаг активности')),
                ('time', models.DateTimeField(auto_now_add=True)),
                ('level', models.CharField(max_length=10)),
                ('message', models.TextField()),
                ('filename', models.CharField(max_length=255)),
                ('func_name', models.CharField(max_length=255)),
                ('lineno', models.CharField(max_length=255)),
            ],
            options={
                'verbose_name': 'Log',
                'verbose_name_plural': 'Logs',
                'db_table': 'db_log',
                'ordering': ['-time'],
                'indexes': [models.Index(fields=['time'], name='ind_db_log_time'), models.Index(fields=['level'], name='ind_db_log_level')],
            },
        ),
        migrations.CreateModel(
            name='Role',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('creation_datetime', models.DateTimeField(auto_now_add=True, verbose_name='Время создания')),
                ('update_datetime', models.DateTimeField(auto_now_add=True, verbose_name='Время обновления')),
                ('flag', models.BooleanField(default=1, verbose_name='Флаг активности')),
                ('role_type', models.CharField(blank=True, max_length=50, null=True, verbose_name='Роль')),
            ],
            options={
                'db_table': 'role',
                'indexes': [models.Index(fields=['creation_datetime'], name='index_role_time')],
            },
        ),
        migrations.CreateModel(
            name='Person',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('creation_datetime', models.DateTimeField(auto_now_add=True, verbose_name='Время создания')),
                ('update_datetime', models.DateTimeField(auto_now_add=True, verbose_name='Время обновления')),
                ('flag', models.BooleanField(default=1, verbose_name='Флаг активности')),
                ('name', models.CharField(blank=True, max_length=20, null=True, verbose_name='Имя')),
                ('surname', models.CharField(blank=True, max_length=20, null=True, verbose_name='Фамилия')),
                ('patronymic', models.CharField(blank=True, max_length=20, null=True, verbose_name='Отчество')),
                ('date_of_birth', models.DateField(blank=True, null=True, verbose_name='Дата рождения')),
                ('person_fio', models.CharField(blank=True, max_length=200, null=True, verbose_name='ФИО')),
                ('phone_number', models.CharField(blank=True, max_length=12, null=True, verbose_name='Номер телефона')),
                ('telegram_chat_id', models.CharField(blank=True, max_length=255, null=True, verbose_name='ID Чата')),
                ('telegram_id', models.CharField(blank=True, max_length=20, null=True, verbose_name='ID Телеграмм')),
                ('telegram_username', models.CharField(blank=True, max_length=20, null=True, verbose_name='Username аккаунта Телеграмм')),
                ('telegram_name', models.CharField(blank=True, max_length=20, null=True, verbose_name='Имя пользователя Телеграмм')),
                ('telegram_surname', models.CharField(blank=True, max_length=20, null=True, verbose_name='Фамилия пользователя Телеграмм')),
                ('email', models.EmailField(blank=True, max_length=254, null=True, verbose_name='Электронная почта')),
                ('background_image', models.ImageField(blank=True, null=True, upload_to='./postgres_data/objects/persons/background/', verbose_name='Аватар пользователя ')),
                ('role', models.ManyToManyField(blank=True, related_name='roles', to='business_logic.role', verbose_name='Роли')),
            ],
            options={
                'db_table': 'person',
                'indexes': [models.Index(fields=['phone_number'], name='index_persons_phone_number'), models.Index(fields=['telegram_id'], name='index_persons_telegram_id'), models.Index(fields=['email'], name='index_persons_email'), models.Index(fields=['creation_datetime'], name='index_person_time')],
            },
        ),
    ]