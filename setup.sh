#!/bin/bash
# Подготовка рабочей папки конвейера перед первым запуском.
# Для варианта 12 токен Kaggle не нужен: данные скачиваются с сайта UCI самим DAG.
set -e
mkdir -p dags/data
chmod 777 dags/data
echo "AIRFLOW_UID=$(id -u)" > .env
echo "Готово: создана dags/data, записан .env (AIRFLOW_UID=$(id -u))."
echo "Если на ВМ нет доступа к archive.ics.uci.edu, положите файл 'Online Retail.xlsx' в dags/data вручную."
echo "Запуск окружения: docker compose up -d"
