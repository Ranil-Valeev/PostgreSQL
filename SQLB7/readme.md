# SQL Project 7 — I improved my SQL Query! Please, provide proof!

## 📚 О проекте

В этом проекте я освоил продвинутые техники работы с индексами PostgreSQL:
- Создание различных типов индексов (B-Tree, функциональные, многоколоночные, уникальные, частичные)
- Анализ запросов с помощью `EXPLAIN ANALYZE`
- Оптимизация производительности запросов
- Понимание того, когда и почему индексы используются или не используются

Эти навыки пригодятся для ускорения медленных отчетов, снижения нагрузки на сервер и гарантии уникальности данных.

---

## 📋 Список заданий

| № | Название | Описание | Статус |
|---|----------|----------|--------|
| **00** | Let's create indexes for every foreign key | B-Tree индексы для всех внешних ключей (шаблон: `idx_{table}_{column}`) | ✅ |
| **01** | How to see that index works? | `EXPLAIN ANALYZE` для JOIN запроса, доказательство работы индексов | ✅ |
| **02** | Formula is in the index. Is it Ok? | Функциональный индекс `idx_person_name` на `UPPER(name)` | ✅ |
| **03** | Multicolumn index for our goals | Многоколоночный индекс `idx_person_order_multi` для оптимального поиска | ✅ |
| **04** | Uniqueness for data | Уникальный индекс `idx_menu_unique` на (pizzeria_id, pizza_name) | ✅ |
| **05** | Partial uniqueness for data | Частично уникальный индекс для заказов от '2022-01-01' | ✅ |
| **06** | Let's make performance improvement | Сравнение производительности до/после создания индекса `idx_1` | ✅ |
