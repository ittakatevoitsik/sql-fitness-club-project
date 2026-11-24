-- Запрос 6. Какие клиенты записались на какие тренировки?
SELECT
    clients.client_id,
    clients.first_name,
    clients.last_name,
    workouts.workout_name,
    workouts.workout_datetime
FROM clients
INNER JOIN workout_bookings
    ON clients.client_id = workout_bookings.client_id
INNER JOIN workouts
    ON workout_bookings.workout_id = workouts.workout_id
ORDER BY clients.last_name, workouts.workout_datetime;


-- Запрос 7. Какие клиенты ещё ни разу не записывались на тренировки?
SELECT
    clients.client_id,
    clients.first_name,
    clients.last_name
FROM clients
LEFT JOIN workout_bookings
    ON clients.client_id = workout_bookings.client_id
WHERE workout_bookings.workout_booking_id IS NULL
ORDER BY clients.last_name;


-- Запрос 8. Какие тарифные планы существуют, включая те,
-- на которые ещё никто не оформил абонемент?
SELECT
    membership_plans.plan_name,
    membership_plans.price,
    subscriptions.subscription_id,
    subscriptions.subscription_status
FROM subscriptions
RIGHT JOIN membership_plans
    ON subscriptions.membership_plan_id = membership_plans.membership_plan_id
ORDER BY membership_plans.plan_name;


-- Запрос 9. Какие платежи относятся к каким тарифным планам?
SELECT
    payments.payment_id,
    payments.amount,
    payments.payment_status,
    subscriptions.subscription_id,
    membership_plans.plan_name
FROM payments
INNER JOIN subscriptions
    ON payments.subscription_id = subscriptions.subscription_id
INNER JOIN membership_plans
    ON subscriptions.membership_plan_id = membership_plans.membership_plan_id
ORDER BY payments.amount DESC;


-- Запрос 10. Какие клиенты либо записывались на тренировки,
-- либо имеют активный абонемент?
SELECT client_id
FROM workout_bookings

UNION

SELECT client_id
FROM subscriptions
WHERE subscription_status = 'active'
ORDER BY client_id;
