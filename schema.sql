BEGIN;

-- ============================================================
-- SQL Fitness Club Project
-- Database: fitness_club
-- DBMS: PostgreSQL 16
-- ============================================================

-- Удаление таблиц в порядке, обратном их зависимостям.
-- Это позволяет повторно запускать schema.sql во время разработки.
-- ВНИМАНИЕ: повторный запуск удалит существующие данные.

DROP TABLE IF EXISTS payments;
DROP TABLE IF EXISTS workout_bookings;
DROP TABLE IF EXISTS workouts;
DROP TABLE IF EXISTS subscriptions;
DROP TABLE IF EXISTS trainers;
DROP TABLE IF EXISTS membership_plans;
DROP TABLE IF EXISTS clients;

-- ============================================================
-- 1. Clients
-- Клиенты фитнес-клуба
-- ============================================================

CREATE TABLE clients (
    client_id INTEGER GENERATED ALWAYS AS IDENTITY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    phone VARCHAR(30) NOT NULL,
    email VARCHAR(255) NOT NULL,
    birth_date DATE NOT NULL,
    membership_card_number VARCHAR(50) NOT NULL,

    CONSTRAINT pk_clients
        PRIMARY KEY (client_id),

    CONSTRAINT uq_clients_email
        UNIQUE (email),

    CONSTRAINT uq_clients_membership_card_number
        UNIQUE (membership_card_number),

    CONSTRAINT chk_clients_first_name_not_empty
        CHECK (btrim(first_name) <> ''),

    CONSTRAINT chk_clients_last_name_not_empty
        CHECK (btrim(last_name) <> ''),

    CONSTRAINT chk_clients_phone_not_empty
        CHECK (btrim(phone) <> ''),

    CONSTRAINT chk_clients_email_not_empty
        CHECK (btrim(email) <> ''),

    CONSTRAINT chk_clients_membership_card_not_empty
        CHECK (btrim(membership_card_number) <> '')
);

COMMENT ON TABLE clients IS
    'Clients registered in the fitness club';

COMMENT ON COLUMN clients.membership_card_number IS
    'Unique fitness club membership card number';

-- ============================================================
-- 2. Membership plans
-- Тарифные планы фитнес-клуба
-- ============================================================

CREATE TABLE membership_plans (
    membership_plan_id INTEGER GENERATED ALWAYS AS IDENTITY,
    plan_name VARCHAR(150) NOT NULL,
    duration_days INTEGER NOT NULL,
    price NUMERIC(10, 2) NOT NULL,
    description VARCHAR(500),
    visits_limit INTEGER,

    CONSTRAINT pk_membership_plans
        PRIMARY KEY (membership_plan_id),

    CONSTRAINT uq_membership_plans_plan_name
        UNIQUE (plan_name),

    CONSTRAINT chk_membership_plans_name_not_empty
        CHECK (btrim(plan_name) <> ''),

    CONSTRAINT chk_membership_plans_duration_days
        CHECK (duration_days > 0),

    CONSTRAINT chk_membership_plans_price
        CHECK (price >= 0),

    CONSTRAINT chk_membership_plans_visits_limit
        CHECK (visits_limit IS NULL OR visits_limit > 0)
);

COMMENT ON TABLE membership_plans IS
    'Membership plans offered by the fitness club';

COMMENT ON COLUMN membership_plans.visits_limit IS
    'Maximum number of visits; NULL means unlimited visits';

-- ============================================================
-- 3. Subscriptions
-- Абонементы, приобретённые клиентами
-- ============================================================

CREATE TABLE subscriptions (
    subscription_id INTEGER GENERATED ALWAYS AS IDENTITY,
    client_id INTEGER NOT NULL,
    membership_plan_id INTEGER NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    subscription_status VARCHAR(20) NOT NULL DEFAULT 'active',

    CONSTRAINT pk_subscriptions
        PRIMARY KEY (subscription_id),

    CONSTRAINT fk_subscriptions_client
        FOREIGN KEY (client_id)
        REFERENCES clients (client_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    CONSTRAINT fk_subscriptions_membership_plan
        FOREIGN KEY (membership_plan_id)
        REFERENCES membership_plans (membership_plan_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    CONSTRAINT chk_subscriptions_dates
        CHECK (end_date >= start_date),

    CONSTRAINT chk_subscriptions_status
        CHECK (
            subscription_status IN (
                'pending',
                'active',
                'frozen',
                'expired',
                'cancelled'
            )
        )
);

COMMENT ON TABLE subscriptions IS
    'Membership subscriptions purchased by clients';

COMMENT ON COLUMN subscriptions.subscription_status IS
    'Allowed values: pending, active, frozen, expired, cancelled';

-- ============================================================
-- 4. Trainers
-- Тренеры фитнес-клуба
-- ============================================================

CREATE TABLE trainers (
    trainer_id INTEGER GENERATED ALWAYS AS IDENTITY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    specialization VARCHAR(150) NOT NULL,
    phone VARCHAR(30) NOT NULL,
    email VARCHAR(255) NOT NULL,

    CONSTRAINT pk_trainers
        PRIMARY KEY (trainer_id),

    CONSTRAINT uq_trainers_email
        UNIQUE (email),

    CONSTRAINT chk_trainers_first_name_not_empty
        CHECK (btrim(first_name) <> ''),

    CONSTRAINT chk_trainers_last_name_not_empty
        CHECK (btrim(last_name) <> ''),

    CONSTRAINT chk_trainers_specialization_not_empty
        CHECK (btrim(specialization) <> ''),

    CONSTRAINT chk_trainers_phone_not_empty
        CHECK (btrim(phone) <> ''),

    CONSTRAINT chk_trainers_email_not_empty
        CHECK (btrim(email) <> '')
);

COMMENT ON TABLE trainers IS
    'Fitness club trainers';

-- ============================================================
-- 5. Workouts
-- Запланированные тренировки
-- ============================================================

CREATE TABLE workouts (
    workout_id INTEGER GENERATED ALWAYS AS IDENTITY,
    trainer_id INTEGER NOT NULL,
    workout_datetime TIMESTAMP NOT NULL,
    duration_minutes INTEGER NOT NULL,
    gym_room VARCHAR(100) NOT NULL,
    max_participants INTEGER NOT NULL,
    workout_name VARCHAR(150) NOT NULL,

    CONSTRAINT pk_workouts
        PRIMARY KEY (workout_id),

    CONSTRAINT fk_workouts_trainer
        FOREIGN KEY (trainer_id)
        REFERENCES trainers (trainer_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    CONSTRAINT chk_workouts_duration_minutes
        CHECK (duration_minutes > 0),

    CONSTRAINT chk_workouts_max_participants
        CHECK (max_participants > 0),

    CONSTRAINT chk_workouts_gym_room_not_empty
        CHECK (btrim(gym_room) <> ''),

    CONSTRAINT chk_workouts_name_not_empty
        CHECK (btrim(workout_name) <> '')
);

COMMENT ON TABLE workouts IS
    'Scheduled group or individual workouts';

-- ============================================================
-- 6. Workout bookings
-- Записи клиентов на тренировки
-- ============================================================

CREATE TABLE workout_bookings (
    workout_booking_id INTEGER GENERATED ALWAYS AS IDENTITY,
    client_id INTEGER NOT NULL,
    workout_id INTEGER NOT NULL,
    booking_datetime TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    booking_status VARCHAR(20) NOT NULL DEFAULT 'booked',

    CONSTRAINT pk_workout_bookings
        PRIMARY KEY (workout_booking_id),

    CONSTRAINT fk_workout_bookings_client
        FOREIGN KEY (client_id)
        REFERENCES clients (client_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    CONSTRAINT fk_workout_bookings_workout
        FOREIGN KEY (workout_id)
        REFERENCES workouts (workout_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    CONSTRAINT uq_workout_bookings_client_workout
        UNIQUE (client_id, workout_id),

    CONSTRAINT chk_workout_bookings_status
        CHECK (
            booking_status IN (
                'booked',
                'cancelled',
                'attended',
                'no_show'
            )
        )
);

COMMENT ON TABLE workout_bookings IS
    'Client bookings for scheduled workouts';

COMMENT ON COLUMN workout_bookings.booking_status IS
    'Allowed values: booked, cancelled, attended, no_show';

-- ============================================================
-- 7. Payments
-- Платежи за абонементы
-- ============================================================

CREATE TABLE payments (
    payment_id INTEGER GENERATED ALWAYS AS IDENTITY,
    subscription_id INTEGER NOT NULL,
    amount NUMERIC(10, 2) NOT NULL,
    payment_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    payment_method VARCHAR(30) NOT NULL,
    payment_status VARCHAR(20) NOT NULL DEFAULT 'completed',

    CONSTRAINT pk_payments
        PRIMARY KEY (payment_id),

    CONSTRAINT fk_payments_subscription
        FOREIGN KEY (subscription_id)
        REFERENCES subscriptions (subscription_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    CONSTRAINT chk_payments_amount
        CHECK (amount > 0),

    CONSTRAINT chk_payments_method
        CHECK (
            payment_method IN (
                'cash',
                'card',
                'bank_transfer'
            )
        ),

    CONSTRAINT chk_payments_status
        CHECK (
            payment_status IN (
                'pending',
                'completed',
                'failed',
                'refunded'
            )
        )
);

COMMENT ON TABLE payments IS
    'Payments associated with client subscriptions';

COMMENT ON COLUMN payments.payment_method IS
    'Allowed values: cash, card, bank_transfer';

COMMENT ON COLUMN payments.payment_status IS
    'Allowed values: pending, completed, failed, refunded';

COMMIT;