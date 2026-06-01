# SQL Project 11 — RDBMS is not just a tables

## 📚 О проекте

В этом проекте я освоил продвинутые возможности PostgreSQL:

- Создание функций (SQL и PL/pgSQL) для реализации бизнес-логики на уровне СУБД
- Разработку системы аудита изменений данных с использованием триггеров
- Создание универсальных параметризованных функций
- Оптимизацию запросов через функции и представления

Эти навыки необходимы для backend-разработки, анализа данных и проектирования высоконагруженных систем, где требуется обеспечение целостности данных и отслеживание изменений.

---

## 📋 Список заданий

| № | Название | Описание | Тип | Статус |
|---|----------|----------|-----|--------|
| **00** | Audit of incoming inserts | Таблица `person_audit` + триггер на INSERT | DDL + Trigger | ✅ |
| **01** | Audit of incoming updates | Триггер на UPDATE (сохранение OLD значений) | Trigger | ✅ |
| **02** | Audit of incoming deletes | Триггер на DELETE (сохранение OLD значений) | Trigger | ✅ |
| **03** | Generic Audit | Объединенный триггер для INSERT/UPDATE/DELETE | Trigger | ✅ |
| **04** | Database View VS Database Function | SQL-функции вместо VIEW | SQL Function | ✅ |
| **05** | Parameterized Database Function | Универсальная функция с параметром по умолчанию | SQL Function | ✅ |
| **06** | Function like a function-wrapper | PL/pgSQL функция с 3 параметрами | PL/pgSQL Function | ✅ |
| **07** | Different view to find a Minimum | Функция поиска минимума в массиве (VARIADIC) | PL/pgSQL Function | ✅ |
| **08** | Fibonacci algorithm is in a function | Функция генерации чисел Фибоначчи | PL/pgSQL Function | ✅ |
