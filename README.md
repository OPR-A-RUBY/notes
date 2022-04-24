# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version  +

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

Это пробное вэб-приложение.

Пользователь логинится (создаёт аккаунт) и имеет возможность сосздать метку (метки),
зетем создать записи Notes, которые цепляются за конкретную метку.

Каждая Запись может быть скрытой (private) или открытой (public).
Откурытые метки видны другим пользователям.

Гостям сайта (без акаунта) видны только открытые метки всех пользователней, в прочем,
всем они видны, и залогиненным пользователям тоже.

Начата реализация прикрепления к записям тегов, но ещё не полностью.

Отношения таблиц в БД:

1. Label 1-* Note

2. User  1-* Note

3. Tag   *-* Note


БД = SQLite
