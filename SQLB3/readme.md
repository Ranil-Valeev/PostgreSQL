# SQL Project 3 — Deep diving into JOINs

## 📚 О проекте

В этом проекте я освоил:
- Различные типы соединений (`LEFT JOIN`, `RIGHT JOIN`, `FULL JOIN`)
- Работу с пропущенными значениями (`NULL`)
- Генерацию рядов данных (`generate_series`)
- Обобщенные табличные выражения (`CTE`)
- Сложные условия фильтрации и сортировки

---

## 📋 Список заданий

| № | Название | Описание | Запрещено | Статус |
|---|----------|----------|-----------|--------|
| **00** | Move to the LEFT, move to the RIGHT | Пиццерии, которые никто не посещал | `NOT IN`, `IN`, `NOT EXISTS`, `EXISTS`, `UNION`, `EXCEPT`, `INTERSECT` | ✅ |
| **01** | Find data gaps | Отсутствующие даты посещений (1-10 января 2022) для person_id = 1 и 2 | `NOT IN`, `IN`, `NOT EXISTS`, `EXISTS`, `UNION`, `EXCEPT`, `INTERSECT` | ✅ |
| **02** | FULL means 'completely filled' | FULL JOIN: все люди и пиццерии за 1-3 января 2022 | `NOT IN`, `IN`, `NOT EXISTS`, `EXISTS`, `UNION`, `EXCEPT`, `INTERSECT` | ✅ |
| **03** | Reformat to CTE | Переписать Задание 01 с использованием CTE и `generate_series` | те же, что в 01 | ✅ |
| **04** | Find favourite pizzas | Пиццы с грибами или пепперони: название, пиццерия, цена | — | ✅ |
| **05** | Investigate Person Data | Имена всех женщин старше 25 лет | — | ✅ |
| **06** | Favourite pizzas for Denis and Anna | Пиццы, которые заказывали Денис или Анна | — | ✅ |
| **07** | Cheapest pizzeria for Dmitriy | Пиццерия, которую Дмитрий посетил 8 января 2022 с ценой < 800 | — | ✅ |
| **08** | Continuing to research data | Мужчины из Москвы или Самары, заказывавшие пепперони/грибы | — | ✅ |
| **09** | Who loves cheese and pepperoni? | Женщины, заказывавшие и пепперони, и сырную пиццу | — | ✅ |
| **10** | Find persons from one city | Пары людей, живущих в одном городе | — | ✅ |
