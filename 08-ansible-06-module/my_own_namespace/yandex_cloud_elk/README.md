# Ansible Collection - my_own_namespace.yandex_cloud_elk

Documentation for the collection.

## Состав:
- [my_own_module.py](./plugins/modules/my_own_module.py) - модуль для создания файла с определенным содержимым
- [create_file](./roles/create_file) - роль с использованием модуля для создания файла с определенным содержимым
- [playbook.yml](./playbook.yml) - playbook с использованием роли с использованием модуля для создания файла с определенным содержимым

## Описание работы:
В [playbook.yml](./playbook.yml) вызывается роль [create_file](./roles/create_file), в которой вызывается модуль [my_own_module.py](./plugins/modules/my_own_module.py)
### Переменные
Необходимо задать:
- file_path - путь + имя файла, который нужно создать
- file_content - что записать в созданный файл

### Замечание:
Работа с файлом производится с ключем "a" - то есть, если файл существует, то новое содержимое будет дописано в него
