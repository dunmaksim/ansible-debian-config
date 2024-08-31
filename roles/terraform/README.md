# Роль `dunaevskii.debian.terraform`

Установка Terraform из официального репозитория или зеркала.

## Требования

Debian Bookworm

## Переменные

| Переменная                    | Описание                                         | Обязательность                                       | Значение по умолчанию |
|-------------------------------|--------------------------------------------------|:----------------------------------------------------:|:---------------------:|
| `terraform_use_official_repo` | Использование официального репозитория HashiCorp | Нет                                                  | `false`               |
| `terraform_version`           | Версия Terraform                                 | Да, если `terraform_use_official_repo` равно `false` | `1.9.5`               |

## Информация об авторе

dunmaksim@yandex.ru

## Лицензия

GNU General Public License v3
