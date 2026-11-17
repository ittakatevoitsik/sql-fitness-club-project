--Запрос 1. Сколько тренировок проводится каждой продолжительности?
SELECT
    duration_minutes,
    COUNT(workout_id) AS workouts_count
FROM workouts
GROUP BY duration_minutes
ORDER BY workouts_count DESC;
--Запрос 2. Какова общая сумма платежей по каждому способу оплаты?
SELECT
    payment_method,
    SUM(amount) AS total_amount
FROM payments
GROUP BY payment_method
ORDER BY total_amount DESC;
--Запрос 3. Какова средняя, минимальная и максимальная стоимость тарифных планов в зависимости от их продолжительности?
SELECT
    duration_days,
    AVG(price) AS average_price,
    MIN(price) AS min_price,
    MAX(price) AS max_price
FROM membership_plans
GROUP BY duration_days
ORDER BY duration_days;
--Запрос №4. Сколько платежей каждого статуса совершено каждым способом оплаты?
SELECT
    payment_method,
    payment_status,
    COUNT(payment_id) AS payments_count
FROM payments
GROUP BY payment_method, payment_status
HAVING COUNT(payment_id) >= 2
ORDER BY payments_count DESC;
--Запрос 5.Какова общая сумма платежей и их количество по каждому способу оплаты,
-- если сумма отдельного платежа превышает 50?
SELECT
    payment_method,
    COUNT(payment_id) AS payments_count,
    SUM(amount) AS total_amount
FROM payments
WHERE amount > 50
GROUP BY payment_method
ORDER BY total_amount DESC;