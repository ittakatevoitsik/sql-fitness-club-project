-- Запрос 6. Сколько часов длится каждая тренировка?
SELECT
    workout_name,
    duration_minutes,
    ROUND(duration_minutes / 60.0, 2) AS duration_hours
FROM workouts
ORDER BY duration_hours;
-- Запрос 7. У каких тарифных планов не указано описание?
SELECT
    plan_name,
    duration_days,
    price,
    description
FROM membership_plans
WHERE description IS NULL
ORDER BY price;
-- Запрос 8. Какие платежи на сумму от 100 до 500 были совершены в период с 01.01.2026 до 01.03.2026?
SELECT
    amount,
    payment_date,
    payment_method,
    payment_status
FROM payments
WHERE amount BETWEEN 100 AND 500
    AND payment_date >= '2026-01-01'
    AND payment_date < '2026-03-01'
ORDER BY amount;
-- Запрос 9. Какие способы оплаты использовались для платежей на 55, 130
-- или 390 либо для платежей на сумму от 400?
SELECT DISTINCT
    payment_method
FROM payments
WHERE amount IN (55, 130, 390)
    OR amount >= 400
ORDER BY payment_method;
-- Запрос 10. Какие тренеры специализируются на йоге?
SELECT
    first_name,
    last_name,
    specialization
FROM trainers
WHERE specialization LIKE '%Yoga%'
ORDER BY last_name;
