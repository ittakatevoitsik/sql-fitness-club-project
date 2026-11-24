--Запрос 1. Какие клиенты оформили абонементы и какие тарифные планы они выбрали?
SELECT
    clients.client_id,
    clients.first_name,
    clients.last_name,
    membership_plans.plan_name,
    subscriptions.subscription_status
FROM clients
INNER JOIN subscriptions
    ON clients.client_id = subscriptions.client_id
INNER JOIN membership_plans
    ON subscriptions.membership_plan_id = membership_plans.membership_plan_id
ORDER BY clients.last_name;
--Запрос 2. Какие тренировки проводятся и во сколько проводятся и кто их ведёт, включая тренировки без назначенного тренера?
SELECT
    workouts.workout_id,
    workouts.workout_name,
    workouts.workout_datetime,
    trainers.first_name,
    trainers.last_name,
    trainers.specialization
FROM trainers
RIGHT JOIN workouts
    ON trainers.trainer_id = workouts.trainer_id
ORDER BY workouts.workout_datetime;
-- Запрос 3. Какова общая сумма платежей каждого клиента и сколько платежей он совершил?
SELECT
    clients.client_id,
    clients.first_name,
    clients.last_name,
    COUNT(payments.payment_id) AS payments_count,
    SUM(payments.amount) AS total_amount
FROM clients
INNER JOIN subscriptions
    ON clients.client_id = subscriptions.client_id
INNER JOIN payments
    ON subscriptions.subscription_id = payments.subscription_id
GROUP BY clients.client_id, clients.first_name, clients.last_name
ORDER BY total_amount DESC;
--Запрос 4. Какие люди являются клиентами фитнес-клуба, а какие — тренерами?
SELECT
    first_name,
    last_name,
    'Клиент' AS person_type
FROM clients
UNION
SELECT
    first_name,
    last_name,
    'Тренер' AS person_type
FROM trainers
ORDER BY last_name;
--Запрос 5. Какие тренеры ещё не проводили ни одной тренировки?
SELECT
    trainers.trainer_id,
    trainers.first_name,
    trainers.last_name,
    trainers.specialization
FROM trainers
LEFT JOIN workouts
    ON trainers.trainer_id = workouts.trainer_id
WHERE workouts.workout_id IS NULL;