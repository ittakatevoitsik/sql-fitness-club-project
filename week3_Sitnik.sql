-- Запрос №1. У каких тарифных планов не указан лимит посещений?
SELECT
    plan_name,
    duration_days,
    price,
    visits_limit
FROM membership_plans
WHERE visits_limit IS NULL;
--Запрос 2. Какие тренировки длятся от 45 до 60 минут и рассчитаны минимум на 11 участников?
SELECT
    workout_name,
    duration_minutes,
    max_participants
FROM workouts
WHERE duration_minutes BETWEEN 45 AND 60
    AND max_participants >= 11
ORDER BY duration_minutes ASC;
-- Запрос 3. Какие названия имеют тренировки длительностью 45 или 90 минут либо рассчитанные минимум на 30 участников?
SELECT DISTINCT
    workout_name
FROM workouts
WHERE duration_minutes IN (45, 90)
    OR max_participants >= 30
ORDER BY workout_name;
--Запрос 4. Какие тарифные планы содержат слово «Standard» в названии?
SELECT
    plan_name,
    duration_days,
    price
FROM membership_plans
WHERE plan_name LIKE '%Standard%'
ORDER BY price;
--Запрос 5. Сколько дней между датами начала и окончания каждого абонемента?
SELECT
    subscription_id,
    start_date,
    end_date,
    end_date - start_date AS days_between_dates
FROM subscriptions
ORDER BY days_between_dates;