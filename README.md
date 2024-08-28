# Ansible Debian Config

Настройка Debian с помощью [Ansible](https://www.ansible.com/).

Размещённые в этом репозитории плейбуки предназначены для быстрой установки и настройки нужного ПО в [Debian Linux](https://debian.org/). В настоящее время речь идёт о релизе Bookworm. В дальнейшем планируется создание отдельных веток, соответствующих релизам дистрибутива.

В файле инвентаря сейчас присутствует запись только для локального компьютера.

## Быстрый старт

1. Обновите список пакетов:

    ```bash
    sudo apt update
    ```

1. Установите пакет `ansible`:

    ```bash
    sudo apt install ansible --yes
    ```

1. Запустите нужный плейбук:

    ```bash
    ansible-playbook \
        --inventory ./inventory.yml \
        playbooks/<имя_плейбука>.yml
    ```

1. Дождитесь завершения работы плейбука.

## Список плейбуков

* [bookworm-backports.yml](./playbooks/bookworm-backports.yml)

    Подключение репозитория с бэкпортами Debian Bookworm.

* [debian-multimedia.yml](./playbooks/debian-miltimedia.yml)

    Подключение репозитория Debian Multimedia.

* [docker.yml](./playbooks/docker.yml)

    Установка Docker и необходимых для него пакетов из репозиториев разработчика, а не из репозиториев Debian Linux.

* [emacs.yml](./playbooks/emacs.yml)

    Установка GNU Emacs и дополнительных пакетов для него.

* [firefox.yml](./playbooks/firefox.yml)

    Установка Firefox из репозитория Mozilla. Повторение шагов, описанных в официальной [инструкции](https://support.mozilla.org/en-US/kb/install-firefox-linux#w_install-firefox-deb-package-for-debian-based-distributions).

* [hashicorp-repo.yml](./playbooks/hashicorp-repo.yml)

    Подключение репозитория HashiCorp. В условиях санкций — бесполезно.

* [mattermost.yml](./playbooks/mattermost.yml)

    Установка клиента рабочего стола для мессенджера [Mattermost](https://mattermost.com/).

* [nodejs.yml](./playbooks/nodejs.yml)

    Установка [NodeJS](https://nodejs.org/) LTS. В настоящее время это 20.x.

* [opentofu.yml](./playbooks/opentofu.yml)

    Установка [OpenTofu](https://opentofu.org) — открытого аналога HashiCorp Terraform.

* [postgresql.yml](./playbooks/postgresql.yml)

    Подключение официального репозитория PostgreSQL.

* [qemu-kvm.yml](./playbooks/qemu-kvm.yml)

    Установка системы виртуализации QEMU-KVM. Плейбук основан на статье из Debian Wiki.

* [ruby.yml](./playbooks/ruby.yml)

    Установка [Ruby](https://ruby-lang.org/) и пакетов, необходимых для нативной сборки расширений.

* [syslog-ng.yml](./playbooks/syslog-ng.yml)

    Установка системы логирования [syslog-ng](https://syslog-ng.github.io/) из официального репозитория.

    **Этот плейбук не проходил проверки!**

* [terraform.yml](./playbooks/terraform.yml)

    Установка [HashiCorp Terraform](https://developer.hashicorp.com/terraform). Может не работать из-за введенных против России санкционных ограничений. Лучше использовать OpenTofu.

* [thunderbird.yml](./playbooks/thunderbird.yml)

    Установка почтового клиента Mozilla Thunderbird.

* [vagrant.yml](./playbooks/vagrant.yml)

    Установка Vagrant из репозиториев Debian Bookworm.

* [virtualbox.yml](./playbooks/virtualbox.yml)

    Установка [Oracle VirtualBox](https://virtualbox.org).

    Создать MOK, установить его в UEFI и подписать им модули ядра придётся вручную. Подробнее см. в Debian Wiki: [SecureBoot](https://wiki.debian.org/SecureBoot).

* [vscode.yml](./playbooks/vscode.yml)

    Установка [Visual Studio Code](https://code.visualstudio.com/) из официального репозитория.

* [yandex-browser.yml](./playbooks/yandex-browser.yml)

    Установка стабильной версии [Yandex Browser](https://browser.yandex.ru) из официального репозитория.


## Тестирование

Для запуска тестов понадобятся:

* [tox](https://tox.wiki/en/latest/index.html)
* [Vagrant](https://www.vagrantup.com/)
* [VirtualBox](https://www.virtualbox.org/)

Все тесты выполняются последовательно.

Для каждого теста создаётся отдельная виртуальная машина с Debian Linux. Это позволяет быть уверенным в том, что плейбук отработает как надо в новом окружении.
