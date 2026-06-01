# SQL Project 10 — Isolation is one of ACID properties

## 📚 О проекте

В этом проекте я на практике изучил работу транзакций и уровней изоляции в PostgreSQL:

- Воспроизвел классические аномалии данных (Lost Update, Dirty Reads, Non-Repeatable Reads, Phantom Reads)
- Проанализировал механизм взаимоблокировок (deadlock)
- Научился управлять согласованностью данных в параллельных процессах

Эти навыки критически важны для проектирования высоконагруженных приложений, где требуется гарантировать целостность данных при одновременном доступе (финансовые системы, платформы бронирования, системы инвентаризации).

---

## 📋 Список заданий

| № | Название | Описание | Уровень изоляции | Статус |
|---|----------|----------|------------------|--------|
| **00** | Simple transaction | Демонстрация видимости изменений до/после COMMIT | DEFAULT | ✅ |
| **01** | Lost Update Anomaly | Аномалия "потерянное обновление" | READ COMMITTED | ✅ |
| **02** | Lost Update for Repeatable Read | Решение проблемы Lost Update | REPEATABLE READ | ✅ |
| **03** | Non-Repeatable Reads Anomaly | Аномалия "неповторяющееся чтение" | READ COMMITTED | ✅ |
| **04** | Non-Repeatable Reads for Serialization | Решение проблемы Non-Repeatable Reads | SERIALIZABLE | ✅ |
| **05** | Phantom Reads Anomaly | Аномалия "фантомное чтение" | READ COMMITTED | ✅ |
| **06** | Phantom Reads for Repeatable Read | Решение проблемы Phantom Reads | REPEATABLE READ | ✅ |
| **07** | Deadlock | Воспроизведение взаимоблокировки | DEFAULT | ✅ |
