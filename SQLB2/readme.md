# SQL Project 2 — Основы работы с множествами и JOIN

## 📚 О проекте

В этом проекте я освоил:
- Использование операторов множеств (`UNION`, `EXCEPT`, `INTERSECT`)
- Различные виды соединений таблиц (`JOIN`, `NATURAL JOIN`)
- Создание подзапросов и декартово произведение
- Сортировку по нескольким столбцам

---

## 📋 Список заданий

| № | Название | Описание | Запрещено | Статус |
|---|----------|----------|-----------|--------|
| **00** | Let's make UNION dance | UNION: id меню + name пиццы и id person + name | — | ✅ |
| **01** | UNION dance with subquery | Только object_name, сохранение дубликатов | — | ✅ |
| **02** | Duplicates or not duplicates | Уникальные названия пицц, сортировка по убыванию | `DISTINCT`, `GROUP BY`, `HAVING`, `JOIN` | ✅ |
| **03** | "Hidden" Insights | Пересечение person_order и person_visits по дате и id | `JOIN` | ✅ |
| **04** | Difference between multisets | Разница (MINUS) person_id между order и visits за 2022-01-07 | `JOIN` | ✅ |
| **05** | Cartesian Product | Декартово произведение person и pizzeria | — | ✅ |
| **06** | Lets see on "Hidden" Insights | Как в 03, но с именами людей вместо id | `JOIN` | ✅ |
| **07** | Just make a JOIN | JOIN person и person_order с форматированием | — | ✅ |
| **08** | Migrate JOIN to NATURAL JOIN | Переписать 07 с NATURAL JOIN | другие `JOIN` | ✅ |
| **09** | IN versus EXISTS | Пиццерии без посетителей (двумя способами) | — | ✅ |
| **10** | Global JOIN | Имена, пиццы и пиццерии для заказов | — | ✅ |
