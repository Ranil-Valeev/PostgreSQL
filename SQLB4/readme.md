# SQL Project 4 — CONTINUING TO JOIN AND MAKE CHANGE IN DATA

## 📚 О проекте

В этом проекте я освоил:
- Сложные SQL-запросы с JOIN и операторами множеств
- Язык управления данными (DML): `INSERT`, `UPDATE`, `DELETE`
- Работа с подзапросами и динамическими идентификаторами
- Массовую вставку данных с использованием `INSERT SELECT`
- Изменение структуры данных без прямых числовых значений

---

## 📋 Список заданий

| № | Название | Описание | Запрещено | Статус |
|---|----------|----------|-----------|--------|
| **00** | Let's find appropriate prices for Kate | Пиццы для Kate с ценой 800-1000 | — | ✅ |
| **01** | Let's find forgotten menus | ID меню, которые никто не заказывал | `JOIN` | ✅ |
| **02** | Let's find forgotten pizza and pizzerias | Пиццы и пиццерии без заказов | — | ✅ |
| **03** | Let's compare visits | Пиццерии, которые чаще посещали женщины или мужчины | — | ✅ |
| **04** | Let's compare orders | Пиццерии, заказанные только женщинами или только мужчинами | — | ✅ |
| **05** | Visited but did not make any order | Пиццерии, которые Андрей посещал, но не заказывал | — | ✅ |
| **06** | Find price-similarity pizzas | Пиццы с одинаковой ценой из разных пиццерий | — | ✅ |
| **07** | Let's cook a new type of pizza | INSERT: добавить "greek pizza" в Dominos (id=19) | — | ✅ |
| **08** | New pizza with more dynamics | INSERT: добавить "sicilian pizza" с динамическим id | прямые числовые значения | ✅ |
| **09** | New pizza means new visits | INSERT: новые посещения Дениса и Ирины 24.02.2022 | прямые числовые значения | ✅ |
| **10** | New visits means new orders | INSERT: новые заказы на "sicilian pizza" | прямые числовые значения | ✅ |
| **11** | "Improve" a price for clients | UPDATE: уменьшить цену "greek pizza" на 10% | — | ✅ |
| **12** | New orders are coming! | INSERT-SELECT: массовая вставка заказов для всех клиентов | прямые числовые значения, `ROW_NUMBER()` | ✅ |
| **13** | Money back to our customers | DELETE: удалить заказы из ex12 и пиццу "greek pizza" | — | ✅ |