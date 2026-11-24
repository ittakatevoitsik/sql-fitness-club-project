
-- Запрос 1. Сколько клиентов родилось в каждом году?
SELECT
    EXTRACT(YEAR FROM birth_date) AS birth_year,
    COUNT(client_id) AS clients_count
FROM clients
GROUP BY EXTRACT(YEAR FROM birth_date)
ORDER BY birth_year;


-- Запрос 2. Какова общая сумма платежей по каждому статусу оплаты?
SELECT
    payment_status,
    SUM(amount) AS total_amount
FROM payments
GROUP BY payment_status
ORDER BY total_amount DESC;


-- Запрос 3. Какова средняя, минимальная и максимальная продолжительность тренировок у каждого тренера?
SELECT
    trainer_id,
    AVG(duration_minutes) AS average_duration,
    MIN(duration_minutes) AS min_duration,
    MAX(duration_minutes) AS max_duration
FROM workouts
GROUP BY trainer_id
ORDER BY trainer_id;


-- Запрос 4. Сколько записей на тренировки приходится на каждый статус бронирования?
SELECT
    workout_id,
    booking_status,
    COUNT(workout_booking_id) AS bookings_count
FROM workout_bookings
GROUP BY workout_id, booking_status
HAVING COUNT(workout_booking_id) >= 2
ORDER BY bookings_count DESC;


-- Запрос 5. Какова сумма платежей и количество платежей по каждому статусу,
-- если сумма отдельного платежа превышает 100?
SELECT
    payment_status,
    COUNT(payment_id) AS payments_count,
    SUM(amount) AS total_amount
FROM payments
WHERE amount > 100
GROUP BY payment_status
ORDER BY total_amount DESC;