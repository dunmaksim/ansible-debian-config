# Ansible Debian Config

Настройка Debian с помощью [Ansible][ansible].

Размещённые в этом репозитории плейбуки предназначены для быстрой установки и настройки нужного ПО в [Debian Linux][debian]. В настоящее время речь идёт о релизе BullsEye. В дальнейшем планируется создание отдельных веток, соответствующих релизам дистрибутива.

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

## Playbook

### Docker

Установка Docker и необходимых для него пакетов из репозиториев разработчика, а не из репозиториев Debian Linux.

### EMACS

Установка GNU EMACS и пакета его дополнений.

### Firefox

Установка Firefox из репозитория Mozilla. Повторение шагов, описанных в официальной [инструкции][firefox].

### Mattermost

Установка клиента рабочего стола для мессенджера [Mattermost][mattermost].

### NodeJS

Установка [NodeJS][nodejs] LTS. В настоящее время это 20.x.

### QEMU-KVM

Установка системы виртуализации QEMU-KVM. Плейбук основан на статье из Debian Wiki.

### Ruby

Установка [Ruby][ruby] и пакетов, необходимых для нативной сборки расширений.

### Syslog-ng

Установка системы логирования [syslog-ng][syslog-ng] из официального репозитория.

### Terraform

Установка [HashiCorp Terraform][terraform]. Может не работать из-за введенных против России санкционных ограничений.

### Thunderbird

Установка почтового клиента Mozilla Thunderbird.

### VirtualBox

Установка [Oracle VirtualBox][virtualbox].

### Yandex Browser

Установка стабильной версии [Yandex Browser][yandex-browser].

[ansible]: https://ansible.com/
[debian]: https://debian.org/
[firefox]: https://support.mozilla.org/en-US/kb/install-firefox-linux#w_install-firefox-deb-package-for-debian-based-distributions
[mattermost]: https://mattermost.com/
[nodejs]: https://nodejs.org/
[ruby]: https://ruby-lang.org/
[syslog-ng]: https://www.syslog-ng.com/
[terraform]: https://developer.hashicorp.com/terraform
[virtualbox]: https://virtualbox.org/
[yandex-browser]: https://browser.yandex.ru/
