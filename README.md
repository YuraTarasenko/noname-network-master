# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


# TODO list

- [x] добавить модель пользователя (user) с основными аттрибутами: имя (first name), фамилия (last name), почта (email), пароль (password)
- [x] добавить простую форму авторизации для всех полей
- [x] создать модель постов (wall_post) с аттрибутами: тело сообщения (body) и привязкой к модели пользователя
- [x] создать форму для добавления постов
- [x] сделать страницу (стену) для отображения постов
- [x] сделать страницу профиля с возможностью изменять основные атрибуты профиля
- [x] добавить фото профиля через Carrierwave. Может быть только одно фото профиля
- [x] добавить лайки постов, кнопки +1 и -1 и добавить сумму лайков
- [ ] удалить лишний likes код
- [x] сделать поиск по пользователям и wallposts
- [ ] сделать админку с удалением пользователей в отдельном layout
- [ ] сделать админку с добавлением / удалением продуктов
- [ ] сделать обычную страницу со списком продуктов
- [ ] добавить форму для добавления отзыва (review)

# Learning
- [ ] HTTP протокол и его методы https://ru.wikipedia.org/wiki/HTTP
- [ ] REST. https://ru.wikipedia.org/wiki/REST
- [ ] Routing. Все виды и типы route объявлений (namespace)
- [ ] ActiveRecord Relation и типы "файндеров". Знать идеально информацию тут http://rusrails.ru/active-record-query-interface
- [ ] Разобрать с ActionView, включая передачу переменных, паршиалы(partial), layouts, ERB/HAML/SLIM
- [ ] Модели и ассоциации (has_many, has_many :through, belongs_to ..)
- [ ] База Git. https://proglib.io/p/git-for-half-an-hour/

# структура модели продукта -- name, description + ассоциация с reviews(новая модель)
# структура модели review -- description + ассоциация с user, product
