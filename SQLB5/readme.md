# SQL Project 5 — Snapshots, virtual tables… What is going on?

## 📚 О проекте

В этом проекте я освоил:
- Создание и использование представлений (VIEW) для фильтрации данных
- Генерацию временных диапазонов с `generate_series`
- Поиск пропущенных дат с использованием представлений
- Операции над множествами и создание симметрического объединения
- Расчет скидок и создание вычисляемых полей
- Создание и обновление материализованных представлений (MATERIALIZED VIEW)

---

## 📋 Список заданий

| № | Название | Описание | Запрещено | Статус |
|---|----------|----------|-----------|--------|
| **00** | Let's create separate views for persons | Создать VIEW `v_persons_female` и `v_persons_male` | — | ✅ |
| **01** | From parts to common view | SELECT из двух VIEW с сортировкой по имени | — | ✅ |
| **02** | Store generated dates in one place | VIEW `v_generated_dates` (1-31 января 2022) с `generate_series` | — | ✅ |
| **03** | Find missing visit days | Пропущенные дни посещений за январь 2022 | — | ✅ |
| **04** | Find something from Set Theory | VIEW `v_symmetric_union`: (R − S) ∪ (S − R) для person_visits | — | ✅ |
| **05** | Calculate a discount price | VIEW `v_price_with_discount` с 10% скидкой | — | ✅ |
| **06** | Materialization from virtualization | MATERIALIZED VIEW `mv_dmitriy_visits_and_eats` (пиццерия для Дмитрия) | — | ✅ |
| **07** | Refresh our state | Обновить материализованное представление после добавления нового визита | прямые числовые значения | ✅ |
| **08** | Just clear our database | DROP всех созданных VIEW и MATERIALIZED VIEW | — | ✅ |
