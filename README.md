# Коллекция ``dunaevskii.debian``

Эта коллекция содержит роли Ansible, позволяющие выполнить быструю настройку Debian Bookworm.

## Возможности

* Подключение репозитория Debian Backports и установка пакетов из него.
* Установка Docker из официального репозитория.
* Установка Mozilla Firefox из репозитория Mozilla.
* Подключение репозиториев HashiCorp. Из-за санкций доступ к репозиторию может быть ограничен.
* Установка пакетов QEMU-KVM и libvirt.
* Установка клиента мессенджера Mattermost Desktop из официального репозитория.
* Подключение репозитория Debian Multimedia и установка пакетов из него.
* Установка NodeJS из официального репозитория.
* Установка OpenTofu из официального репозитория.
* Установка Podman.
* Подключение официального репозитория PostgreSQL.
* Установка Ruby.
* Установка Terraform из официального репозитория или его зеркала.
* Установка Vagrant из официального репозитория или его зеркала.
* Установка Oracle VirtualBox из официального репозитория.
* Установка Microsoft Visual Studio Code.
* Установка стабильной версии Yandex Browser из официального репозитория.


## Матрица совместимости

* Debian Bookworm


## Требования

* `ansible-core` ≥ 2.10.17

## Включенный контент

### Роли

| Название                                          | Описание                                                               |
|---------------------------------------------------|------------------------------------------------------------------------|
| [debian.backports](./roles/backports/README.md)   | Подключение репозитория Debian Backports                               |
| [debian.docker](./roles/docker/README.md)         | Установка Docker из официального репозитория                           |
| [debian.firefox](./roles/firefox/README.md)       | Установка Firefox из репозитория Mozilla                               |
| [debian.hashicorp](./roles/hashicorp/README.md)   | Подключение репозитория HashiCorp                                      |
| [debian.kvm](./roles/kvm/README.md)               | Установка QEMU-KVM и libvirt                                           |
| [debian.mattermost](./roles/mattermost/README.md) | Установка Mattermst Desktop из официального репозитория                |
| [debian.multimedia](./roles/multimedia/README.md) | Подключение репозитория Debian Multimedia                              |
| [debian.nodejs](./roles/nodejs/README.md)         | Установка NodeJS из официального репозитория                           |
| [debian.opentofu](./roles/opentofu/README.md)     | Установка OpenTofu из официального репозитория                         |
| [debian.podman](./roles/podman/README.md)         | Установка и настройка Podman                                           |
| [debian.postgresql](./roles/postgresql/README.md) | Подключение официального репозитория PostgreSQL                        |
| [debian.ruby](./roles/ruby/README.md)             | Установка Ruby                                                         |
| [debian.terraform](./roles/terraform/README.md)   | Установка Terraform из репозитория HashiCorp или его зеркала           |
| [debian.vagrant](./roles/vagrant/README.md)       | Установка Vagrant из репозитория HashiCorp или его зеркала             |
| [debian.virtualbox](./roles/virtualbox/README.md) | Установка Oracle VirtualBox из официального репозитория                |
| [debian.vscode](./roles/vscode/README.md)         | Установка Microsoft Visual Studio Code из официального репозитория     |
| [debian.yandex_browser](./roles/yandex/README.md) | Установка стабильной версии Yandex Browser из официального репозитория |

## Установка и использование

### Установка

1. Создайте файл `reuqirements.yml` со следующим содержимым:

    ```yaml
    collections:
      - name: dunaevskii.debian
        source: git+https://github.com/dunmaksim/ansible-debian-config.git
        type: git
    ```

1. Установите коллекцию:

    ```bash
    ansible-galaxy collection install -r requirements.yml
    ```

### Использование

Порядок использования ролей см. в соответствующих README.

## Информация об авторе

Дунаевский М. С.

## Лицензия

GNU GPLv3
