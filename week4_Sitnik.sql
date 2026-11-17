--Запрос 1. Сколько абонементов каждого тарифного плана было оформлено?
SELECT
    membership_plans.plan_name,
    COUNT(subscriptions.subscription_id) AS subscriptions_count
FROM membership_plans
JOIN subscriptions
    ON membership_plans.membership_plan_id = subscriptions.membership_plan_id
GROUP BY membership_plans.membership_plan_id, membership_plans.plan_name
ORDER BY subscriptions_count DESC;
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
--Запрос 4. Какова средняя продолжительность тренировок каждого тренера,
-- если учитывать только тренировки длительностью от 45 минут?
SELECT
    trainers.first_name,
    trainers.last_name,
    COUNT(workouts.workout_id) AS workouts_count,
    AVG(workouts.duration_minutes) AS average_duration
FROM trainers
JOIN workouts
    ON trainers.trainer_id = workouts.trainer_id
WHERE workouts.duration_minutes >= 45
GROUP BY trainers.trainer_id, trainers.first_name, trainers.last_name
ORDER BY average_duration DESC;
--Запрос 5.Сколько тренировок проводит каждый тренер в каждом спортивном зале?
SELECT
    trainers.first_name,
    trainers.last_name,
    workouts.gym_room,
    COUNT(workouts.workout_id) AS workouts_count
FROM trainers
JOIN workouts
    ON trainers.trainer_id = workouts.trainer_id
GROUP BY trainers.trainer_id, trainers.first_name, trainers.last_name, workouts.gym_room
HAVING COUNT(workouts.workout_id) >= 2
ORDER BY workouts_count DESC;