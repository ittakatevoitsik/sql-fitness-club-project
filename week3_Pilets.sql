-- Запрос 11: Какой была бы сумма каждого платежа со скидкой 10%?
SELECT
    amount,
    payment_method,
    payment_status,
    ROUND(amount * 0.9, 2) AS amount_with_discount
FROM payments
ORDER BY amount_with_discount;
-- Запрос 12: Какие тарифные планы от 30 дней не имеют указанного лимита посещений?
SELECT
    plan_name,
    duration_days,
    price
FROM membership_plans
WHERE visits_limit IS NULL
    AND duration_days >= 30
ORDER BY duration_days, price;
-- Запрос 13: Какие абонементы имеют срок от 30 до 90 дней между датами?
SELECT
    start_date,
    end_date,
    subscription_status,
    end_date - start_date AS days_between_dates
FROM subscriptions
WHERE end_date - start_date BETWEEN 30 AND 90
ORDER BY days_between_dates;
-- Запрос 14: В каких залах проходят тренировки на 30 или 60 минут
-- либо тренировки максимум для 10 участников?
SELECT DISTINCT
    gym_room
FROM workouts
WHERE duration_minutes IN (30, 60)
    OR max_participants <= 10
ORDER BY gym_room;
-- Запрос 15: Когда и в каких залах проходят тренировки направления Strength?
SELECT
    workout_name,
    workout_datetime,
    gym_room
FROM workouts
WHERE workout_name LIKE '%Strength%'
ORDER BY workout_datetime;