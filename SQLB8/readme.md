# SQL Project 8 — Let's improve customer experience

## 📚 О проекте

В этом проекте я реализовал систему персональных скидок для клиентов пиццерий.

Я освоил:
- Реализацию бизнес-требований через структуру базы данных
- Обеспечение целостности данных через ограничения (constraints) и индексы
- Оптимизацию производительности БД
- Работу с последовательностями (sequences) и массовыми операциями (INSERT SELECT)
- Документирование структуры базы (комментарии к таблицам и столбцам)

---

## 📋 Список заданий

| № | Название | Описание | Статус |
|---|----------|----------|--------|
| **00** | Discounts, discounts, everyone loves discounts | Создание таблицы `person_discounts` (id PK, person_id FK, pizzeria_id FK, discount numeric) | ✅ |
| **01** | Let's set personal discounts | Заполнение таблицы скидками на основе истории заказов (10.5/22/30%) | ✅ |
| **02** | Let's recalculate a history of orders | SELECT с расчетом цены со скидкой (price * (100 - discount) / 100) | ✅ |
| **03** | Improvements are in a way | Уникальный индекс `idx_person_discounts_unique` на (person_id, pizzeria_id) | ✅ |
| **04** | We need more Data Consistency | Добавление ограничений: NOT NULL, DEFAULT 0, CHECK (0-100) | ✅ |
| **05** | Data Governance Rules | Добавление комментариев к таблице и столбцам | ✅ |
| **06** | Let's automate Primary Key generation | Создание последовательности `seq_person_discounts` для автогенерации id | ✅ |