Role Name
=========

Роль с использованием модуля для создания файла с определенным содержимым

Requirements
------------

-

Role Variables
--------------

- file_path - путь + имя файла, который нужно создать
    default: "/tmp/test00.txt"
- file_content - что записать в созданный файл
    default: "this is a simple line\n and this is another line"

Dependencies
------------

[my_own_module.py](../../plugins/modules/my_own_module.py)

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice 
for users too: <br />
[playbook.yml](../../playbook.yml)
```
- name: Create some file with content
  hosts: localhost
  tasks:
    - name: Create a file
      my_own_module:
        file_path: /home/yelena/test3.txt
        file_content: "some content\nsomething else\n"
```

License
-------

BSD

Author Information
------------------

An optional section for the role authors to include contact information, or a website (HTML is not allowed).
