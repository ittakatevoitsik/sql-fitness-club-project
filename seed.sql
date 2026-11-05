BEGIN;

-- 1. CLIENTS: 30 клиентов
INSERT INTO clients (first_name, last_name, phone, email, birth_date, membership_card_number) VALUES
    ('Anna', 'Ivanova', '+375291000000', 'anna.ivanova1@example.com', DATE '1982-01-01', 'FC-2026-0001'),
    ('Maria', 'Petrova', '+375291007919', 'maria.petrova2@example.com', DATE '1982-06-23', 'FC-2026-0002'),
    ('Sofia', 'Smirnova', '+375291015838', 'sofia.smirnova3@example.com', DATE '1982-12-13', 'FC-2026-0003'),
    ('Emily', 'Brown', '+375291023757', 'emily.brown4@example.com', DATE '1983-06-04', 'FC-2026-0004'),
    ('Olivia', 'Wilson', '+375291031676', 'olivia.wilson5@example.com', DATE '1983-11-24', 'FC-2026-0005'),
    ('Alice', 'Taylor', '+375291039595', 'alice.taylor6@example.com', DATE '1984-05-15', 'FC-2026-0006'),
    ('Emma', 'Anderson', '+375291047514', 'emma.anderson7@example.com', DATE '1984-11-04', 'FC-2026-0007'),
    ('Victoria', 'Thomas', '+375291055433', 'victoria.thomas8@example.com', DATE '1985-04-26', 'FC-2026-0008'),
    ('Nina', 'Moore', '+375291063352', 'nina.moore9@example.com', DATE '1985-10-16', 'FC-2026-0009'),
    ('Daria', 'Martin', '+375291071271', 'daria.martin10@example.com', DATE '1986-04-07', 'FC-2026-0010'),
    ('Alex', 'Jones', '+375291079190', 'alex.jones11@example.com', DATE '1986-09-27', 'FC-2026-0011'),
    ('Daniel', 'Miller', '+375291087109', 'daniel.miller12@example.com', DATE '1987-03-19', 'FC-2026-0012'),
    ('Michael', 'Davis', '+375291095028', 'michael.davis13@example.com', DATE '1987-09-08', 'FC-2026-0013'),
    ('David', 'Garcia', '+375291102947', 'david.garcia14@example.com', DATE '1988-02-28', 'FC-2026-0014'),
    ('Max', 'Rodriguez', '+375291110866', 'max.rodriguez15@example.com', DATE '1988-08-19', 'FC-2026-0015'),
    ('Oliver', 'Clark', '+375291118785', 'oliver.clark16@example.com', DATE '1989-02-08', 'FC-2026-0016'),
    ('James', 'Lewis', '+375291126704', 'james.lewis17@example.com', DATE '1989-07-31', 'FC-2026-0017'),
    ('Lucas', 'Walker', '+375291134623', 'lucas.walker18@example.com', DATE '1990-01-20', 'FC-2026-0018'),
    ('Ethan', 'Hall', '+375291142542', 'ethan.hall19@example.com', DATE '1990-07-12', 'FC-2026-0019'),
    ('Noah', 'Young', '+375291150461', 'noah.young20@example.com', DATE '1991-01-01', 'FC-2026-0020'),
    ('Mia', 'Allen', '+375291158380', 'mia.allen21@example.com', DATE '1991-06-23', 'FC-2026-0021'),
    ('Eva', 'King', '+375291166299', 'eva.king22@example.com', DATE '1991-12-13', 'FC-2026-0022'),
    ('Liam', 'Wright', '+375291174218', 'liam.wright23@example.com', DATE '1992-06-03', 'FC-2026-0023'),
    ('Mark', 'Scott', '+375291182137', 'mark.scott24@example.com', DATE '1992-11-23', 'FC-2026-0024'),
    ('Paul', 'Green', '+375291190056', 'paul.green25@example.com', DATE '1993-05-15', 'FC-2026-0025'),
    ('Ilya', 'Baker', '+375291197975', 'ilya.baker26@example.com', DATE '1993-11-04', 'FC-2026-0026'),
    ('Artem', 'Adams', '+375291205894', 'artem.adams27@example.com', DATE '1994-04-26', 'FC-2026-0027'),
    ('Kirill', 'Nelson', '+375291213813', 'kirill.nelson28@example.com', DATE '1994-10-16', 'FC-2026-0028'),
    ('Polina', 'Hill', '+375291221732', 'polina.hill29@example.com', DATE '1995-04-07', 'FC-2026-0029'),
    ('Kira', 'Campbell', '+375291229651', 'kira.campbell30@example.com', DATE '1995-09-27', 'FC-2026-0030');

-- 2. MEMBERSHIP_PLANS: 30 уникальных тарифных планов
INSERT INTO membership_plans (plan_name, duration_days, price, description, visits_limit) VALUES
    ('Basic Monthly 01', 30, 45.00, 'Gym access', 12),
    ('Standard Quarterly 02', 90, 125.00, 'Group classes included', 30),
    ('Premium Half-Year 03', 180, 230.00, 'Gym and pool access', NULL),
    ('Student Annual 04', 365, 390.00, 'Unlimited group classes', NULL),
    ('Morning Flex 05', 30, 50.00, 'Gym access', 12),
    ('Weekend Plus 06', 90, 130.00, 'Group classes included', 30),
    ('Basic Monthly 07', 180, 220.00, 'Gym and pool access', NULL),
    ('Standard Quarterly 08', 365, 395.00, 'Unlimited group classes', NULL),
    ('Premium Half-Year 09', 30, 55.00, 'Gym access', 12),
    ('Student Annual 10', 90, 120.00, 'Group classes included', 30),
    ('Morning Flex 11', 180, 225.00, 'Gym and pool access', NULL),
    ('Weekend Plus 12', 365, 400.00, 'Unlimited group classes', NULL),
    ('Basic Monthly 13', 30, 45.00, 'Gym access', 12),
    ('Standard Quarterly 14', 90, 125.00, 'Group classes included', 30),
    ('Premium Half-Year 15', 180, 230.00, 'Gym and pool access', NULL),
    ('Student Annual 16', 365, 390.00, 'Unlimited group classes', NULL),
    ('Morning Flex 17', 30, 50.00, 'Gym access', 12),
    ('Weekend Plus 18', 90, 130.00, 'Group classes included', 30),
    ('Basic Monthly 19', 180, 220.00, 'Gym and pool access', NULL),
    ('Standard Quarterly 20', 365, 395.00, 'Unlimited group classes', NULL),
    ('Premium Half-Year 21', 30, 55.00, 'Gym access', 12),
    ('Student Annual 22', 90, 120.00, 'Group classes included', 30),
    ('Morning Flex 23', 180, 225.00, 'Gym and pool access', NULL),
    ('Weekend Plus 24', 365, 400.00, 'Unlimited group classes', NULL),
    ('Basic Monthly 25', 30, 45.00, 'Gym access', 12),
    ('Standard Quarterly 26', 90, 125.00, 'Group classes included', 30),
    ('Premium Half-Year 27', 180, 230.00, 'Gym and pool access', NULL),
    ('Student Annual 28', 365, 390.00, 'Unlimited group classes', NULL),
    ('Morning Flex 29', 30, 50.00, 'Gym access', 12),
    ('Weekend Plus 30', 90, 130.00, 'Group classes included', 30);

-- 3. TRAINERS: 30 тренеров
INSERT INTO trainers (first_name, last_name, specialization, phone, email) VALUES
    ('Alice', 'Thomas', 'Strength training', '+375332000000', 'trainer01.thomas@example.com'),
    ('Emma', 'Moore', 'Yoga', '+375332006151', 'trainer02.moore@example.com'),
    ('Victoria', 'Martin', 'Pilates', '+375332012302', 'trainer03.martin@example.com'),
    ('Nina', 'Jones', 'CrossFit', '+375332018453', 'trainer04.jones@example.com'),
    ('Daria', 'Miller', 'Boxing', '+375332024604', 'trainer05.miller@example.com'),
    ('Alex', 'Davis', 'Stretching', '+375332030755', 'trainer06.davis@example.com'),
    ('Daniel', 'Garcia', 'Functional training', '+375332036906', 'trainer07.garcia@example.com'),
    ('Michael', 'Rodriguez', 'Cycling', '+375332043057', 'trainer08.rodriguez@example.com'),
    ('David', 'Clark', 'Swimming', '+375332049208', 'trainer09.clark@example.com'),
    ('Max', 'Lewis', 'Dance fitness', '+375332055359', 'trainer10.lewis@example.com'),
    ('Oliver', 'Walker', 'Strength training', '+375332061510', 'trainer11.walker@example.com'),
    ('James', 'Hall', 'Yoga', '+375332067661', 'trainer12.hall@example.com'),
    ('Lucas', 'Young', 'Pilates', '+375332073812', 'trainer13.young@example.com'),
    ('Ethan', 'Allen', 'CrossFit', '+375332079963', 'trainer14.allen@example.com'),
    ('Noah', 'King', 'Boxing', '+375332086114', 'trainer15.king@example.com'),
    ('Mia', 'Wright', 'Stretching', '+375332092265', 'trainer16.wright@example.com'),
    ('Eva', 'Scott', 'Functional training', '+375332098416', 'trainer17.scott@example.com'),
    ('Liam', 'Green', 'Cycling', '+375332104567', 'trainer18.green@example.com'),
    ('Mark', 'Baker', 'Swimming', '+375332110718', 'trainer19.baker@example.com'),
    ('Paul', 'Adams', 'Dance fitness', '+375332116869', 'trainer20.adams@example.com'),
    ('Ilya', 'Nelson', 'Strength training', '+375332123020', 'trainer21.nelson@example.com'),
    ('Artem', 'Hill', 'Yoga', '+375332129171', 'trainer22.hill@example.com'),
    ('Kirill', 'Campbell', 'Pilates', '+375332135322', 'trainer23.campbell@example.com'),
    ('Polina', 'Ivanova', 'CrossFit', '+375332141473', 'trainer24.ivanova@example.com'),
    ('Kira', 'Petrova', 'Boxing', '+375332147624', 'trainer25.petrova@example.com'),
    ('Anna', 'Smirnova', 'Stretching', '+375332153775', 'trainer26.smirnova@example.com'),
    ('Maria', 'Brown', 'Functional training', '+375332159926', 'trainer27.brown@example.com'),
    ('Sofia', 'Wilson', 'Cycling', '+375332166077', 'trainer28.wilson@example.com'),
    ('Emily', 'Taylor', 'Swimming', '+375332172228', 'trainer29.taylor@example.com'),
    ('Olivia', 'Anderson', 'Dance fitness', '+375332178379', 'trainer30.anderson@example.com');

-- 4. SUBSCRIPTIONS: 30 абонементов, по одному на клиента
-- Связи ищутся по уникальным email и plan_name, поэтому ID не предполагаются.
INSERT INTO subscriptions (client_id, membership_plan_id, start_date, end_date, subscription_status)
SELECT c.client_id, mp.membership_plan_id, v.start_date::date, v.end_date::date, v.status
FROM (VALUES
    ('anna.ivanova1@example.com', 'Basic Monthly 01', '2026-01-01', '2026-01-30', 'active'),
    ('maria.petrova2@example.com', 'Standard Quarterly 08', '2026-01-08', '2026-04-07', 'active'),
    ('sofia.smirnova3@example.com', 'Premium Half-Year 15', '2026-01-15', '2026-07-13', 'expired'),
    ('emily.brown4@example.com', 'Student Annual 22', '2026-01-22', '2027-01-21', 'frozen'),
    ('olivia.wilson5@example.com', 'Morning Flex 29', '2026-01-29', '2026-02-27', 'pending'),
    ('alice.taylor6@example.com', 'Weekend Plus 06', '2026-02-05', '2026-05-05', 'cancelled'),
    ('emma.anderson7@example.com', 'Basic Monthly 13', '2026-02-12', '2026-08-10', 'active'),
    ('victoria.thomas8@example.com', 'Standard Quarterly 20', '2026-02-19', '2027-02-18', 'active'),
    ('nina.moore9@example.com', 'Premium Half-Year 27', '2026-02-26', '2026-03-27', 'expired'),
    ('daria.martin10@example.com', 'Student Annual 04', '2026-03-05', '2026-06-02', 'frozen'),
    ('alex.jones11@example.com', 'Morning Flex 11', '2026-03-12', '2026-09-07', 'pending'),
    ('daniel.miller12@example.com', 'Weekend Plus 18', '2026-03-19', '2027-03-18', 'cancelled'),
    ('michael.davis13@example.com', 'Basic Monthly 25', '2026-03-26', '2026-04-24', 'active'),
    ('david.garcia14@example.com', 'Standard Quarterly 02', '2026-04-02', '2026-06-30', 'active'),
    ('max.rodriguez15@example.com', 'Premium Half-Year 09', '2026-04-09', '2026-10-05', 'expired'),
    ('oliver.clark16@example.com', 'Student Annual 16', '2026-04-16', '2027-04-15', 'frozen'),
    ('james.lewis17@example.com', 'Morning Flex 23', '2026-04-23', '2026-05-22', 'pending'),
    ('lucas.walker18@example.com', 'Weekend Plus 30', '2026-04-30', '2026-07-28', 'cancelled'),
    ('ethan.hall19@example.com', 'Basic Monthly 07', '2026-05-07', '2026-11-02', 'active'),
    ('noah.young20@example.com', 'Standard Quarterly 14', '2026-05-14', '2027-05-13', 'active'),
    ('mia.allen21@example.com', 'Premium Half-Year 21', '2026-05-21', '2026-06-19', 'expired'),
    ('eva.king22@example.com', 'Student Annual 28', '2026-05-28', '2026-08-25', 'frozen'),
    ('liam.wright23@example.com', 'Morning Flex 05', '2026-06-04', '2026-11-30', 'pending'),
    ('mark.scott24@example.com', 'Weekend Plus 12', '2026-06-11', '2027-06-10', 'cancelled'),
    ('paul.green25@example.com', 'Basic Monthly 19', '2026-06-18', '2026-07-17', 'active'),
    ('ilya.baker26@example.com', 'Standard Quarterly 26', '2026-06-25', '2026-09-22', 'active'),
    ('artem.adams27@example.com', 'Premium Half-Year 03', '2026-07-02', '2026-12-28', 'expired'),
    ('kirill.nelson28@example.com', 'Student Annual 10', '2026-07-09', '2027-07-08', 'frozen'),
    ('polina.hill29@example.com', 'Morning Flex 17', '2026-07-16', '2026-08-14', 'pending'),
    ('kira.campbell30@example.com', 'Weekend Plus 24', '2026-07-23', '2026-10-20', 'cancelled')
) AS v(client_email, plan_name, start_date, end_date, status)
JOIN clients c ON c.email = v.client_email
JOIN membership_plans mp ON mp.plan_name = v.plan_name;

-- 5. WORKOUTS: 30 тренировок
INSERT INTO workouts (trainer_id, workout_datetime, duration_minutes, gym_room, max_participants, workout_name)
SELECT t.trainer_id, v.workout_datetime::timestamp, v.duration_minutes, v.gym_room, v.max_participants, v.workout_name
FROM (VALUES
    ('trainer01.thomas@example.com', '2026-11-10 08:00:00', 45, 'Main Hall', 10, 'Strength Basics #01'),
    ('trainer04.jones@example.com', '2026-11-11 10:00:00', 60, 'Studio A', 12, 'Morning Yoga #02'),
    ('trainer07.garcia@example.com', '2026-11-12 12:00:00', 75, 'Studio B', 15, 'Pilates Core #03'),
    ('trainer10.lewis@example.com', '2026-11-13 14:00:00', 90, 'Cycling Room', 20, 'CrossFit Circuit #04'),
    ('trainer13.young@example.com', '2026-11-14 16:00:00', 45, 'Boxing Room', 10, 'Boxing Fitness #05'),
    ('trainer16.wright@example.com', '2026-11-15 08:00:00', 60, 'Main Hall', 12, 'Full Body Workout #06'),
    ('trainer19.baker@example.com', '2026-11-16 10:00:00', 75, 'Studio A', 15, 'Mobility & Stretch #07'),
    ('trainer22.hill@example.com', '2026-11-17 12:00:00', 90, 'Studio B', 20, 'Indoor Cycling #08'),
    ('trainer25.petrova@example.com', '2026-11-18 14:00:00', 45, 'Cycling Room', 10, 'Functional Training #09'),
    ('trainer28.wilson@example.com', '2026-11-19 16:00:00', 60, 'Boxing Room', 12, 'Dance Cardio #10'),
    ('trainer01.thomas@example.com', '2026-11-20 08:00:00', 75, 'Main Hall', 15, 'Strength Basics #11'),
    ('trainer04.jones@example.com', '2026-11-21 10:00:00', 90, 'Studio A', 20, 'Morning Yoga #12'),
    ('trainer07.garcia@example.com', '2026-11-22 12:00:00', 45, 'Studio B', 10, 'Pilates Core #13'),
    ('trainer10.lewis@example.com', '2026-11-23 14:00:00', 60, 'Cycling Room', 12, 'CrossFit Circuit #14'),
    ('trainer13.young@example.com', '2026-11-24 16:00:00', 75, 'Boxing Room', 15, 'Boxing Fitness #15'),
    ('trainer16.wright@example.com', '2026-11-25 08:00:00', 90, 'Main Hall', 20, 'Full Body Workout #16'),
    ('trainer19.baker@example.com', '2026-11-26 10:00:00', 45, 'Studio A', 10, 'Mobility & Stretch #17'),
    ('trainer22.hill@example.com', '2026-11-27 12:00:00', 60, 'Studio B', 12, 'Indoor Cycling #18'),
    ('trainer25.petrova@example.com', '2026-11-28 14:00:00', 75, 'Cycling Room', 15, 'Functional Training #19'),
    ('trainer28.wilson@example.com', '2026-11-29 16:00:00', 90, 'Boxing Room', 20, 'Dance Cardio #20'),
    ('trainer01.thomas@example.com', '2026-11-30 08:00:00', 45, 'Main Hall', 10, 'Strength Basics #21'),
    ('trainer04.jones@example.com', '2026-12-01 10:00:00', 60, 'Studio A', 12, 'Morning Yoga #22'),
    ('trainer07.garcia@example.com', '2026-12-02 12:00:00', 75, 'Studio B', 15, 'Pilates Core #23'),
    ('trainer10.lewis@example.com', '2026-12-03 14:00:00', 90, 'Cycling Room', 20, 'CrossFit Circuit #24'),
    ('trainer13.young@example.com', '2026-12-04 16:00:00', 45, 'Boxing Room', 10, 'Boxing Fitness #25'),
    ('trainer16.wright@example.com', '2026-12-05 08:00:00', 60, 'Main Hall', 12, 'Full Body Workout #26'),
    ('trainer19.baker@example.com', '2026-12-06 10:00:00', 75, 'Studio A', 15, 'Mobility & Stretch #27'),
    ('trainer22.hill@example.com', '2026-12-07 12:00:00', 90, 'Studio B', 20, 'Indoor Cycling #28'),
    ('trainer25.petrova@example.com', '2026-12-08 14:00:00', 45, 'Cycling Room', 10, 'Functional Training #29'),
    ('trainer28.wilson@example.com', '2026-12-09 16:00:00', 60, 'Boxing Room', 12, 'Dance Cardio #30')
) AS v(trainer_email, workout_datetime, duration_minutes, gym_room, max_participants, workout_name)
JOIN trainers t ON t.email = v.trainer_email;

-- 6. WORKOUT_BOOKINGS: 30 записей клиентов на тренировки
INSERT INTO workout_bookings (client_id, workout_id, booking_datetime, booking_status)
SELECT c.client_id, w.workout_id, v.booking_datetime::timestamp, v.status
FROM (VALUES
    ('anna.ivanova1@example.com', '2026-11-10 08:00:00', 'Strength Basics #01', '2026-11-01 12:00:00', 'attended'),
    ('maria.petrova2@example.com', '2026-11-17 12:00:00', 'Indoor Cycling #08', '2026-11-02 12:00:00', 'booked'),
    ('sofia.smirnova3@example.com', '2026-11-24 16:00:00', 'Boxing Fitness #15', '2026-11-03 12:00:00', 'cancelled'),
    ('emily.brown4@example.com', '2026-12-01 10:00:00', 'Morning Yoga #22', '2026-11-04 12:00:00', 'no_show'),
    ('olivia.wilson5@example.com', '2026-12-08 14:00:00', 'Functional Training #29', '2026-11-05 12:00:00', 'attended'),
    ('alice.taylor6@example.com', '2026-11-15 08:00:00', 'Full Body Workout #06', '2026-11-06 12:00:00', 'attended'),
    ('emma.anderson7@example.com', '2026-11-22 12:00:00', 'Pilates Core #13', '2026-11-07 12:00:00', 'booked'),
    ('victoria.thomas8@example.com', '2026-11-29 16:00:00', 'Dance Cardio #20', '2026-11-08 12:00:00', 'cancelled'),
    ('nina.moore9@example.com', '2026-12-06 10:00:00', 'Mobility & Stretch #27', '2026-11-09 12:00:00', 'no_show'),
    ('daria.martin10@example.com', '2026-11-13 14:00:00', 'CrossFit Circuit #04', '2026-11-10 12:00:00', 'attended'),
    ('alex.jones11@example.com', '2026-11-20 08:00:00', 'Strength Basics #11', '2026-11-11 12:00:00', 'attended'),
    ('daniel.miller12@example.com', '2026-11-27 12:00:00', 'Indoor Cycling #18', '2026-11-12 12:00:00', 'booked'),
    ('michael.davis13@example.com', '2026-12-04 16:00:00', 'Boxing Fitness #25', '2026-11-13 12:00:00', 'cancelled'),
    ('david.garcia14@example.com', '2026-11-11 10:00:00', 'Morning Yoga #02', '2026-11-14 12:00:00', 'no_show'),
    ('max.rodriguez15@example.com', '2026-11-18 14:00:00', 'Functional Training #09', '2026-11-15 12:00:00', 'attended'),
    ('oliver.clark16@example.com', '2026-11-25 08:00:00', 'Full Body Workout #16', '2026-11-16 12:00:00', 'attended'),
    ('james.lewis17@example.com', '2026-12-02 12:00:00', 'Pilates Core #23', '2026-11-17 12:00:00', 'booked'),
    ('lucas.walker18@example.com', '2026-12-09 16:00:00', 'Dance Cardio #30', '2026-11-18 12:00:00', 'cancelled'),
    ('ethan.hall19@example.com', '2026-11-16 10:00:00', 'Mobility & Stretch #07', '2026-11-19 12:00:00', 'no_show'),
    ('noah.young20@example.com', '2026-11-23 14:00:00', 'CrossFit Circuit #14', '2026-11-20 12:00:00', 'attended'),
    ('mia.allen21@example.com', '2026-11-30 08:00:00', 'Strength Basics #21', '2026-11-21 12:00:00', 'attended'),
    ('eva.king22@example.com', '2026-12-07 12:00:00', 'Indoor Cycling #28', '2026-11-22 12:00:00', 'booked'),
    ('liam.wright23@example.com', '2026-11-14 16:00:00', 'Boxing Fitness #05', '2026-11-23 12:00:00', 'cancelled'),
    ('mark.scott24@example.com', '2026-11-21 10:00:00', 'Morning Yoga #12', '2026-11-24 12:00:00', 'no_show'),
    ('paul.green25@example.com', '2026-11-28 14:00:00', 'Functional Training #19', '2026-11-25 12:00:00', 'attended'),
    ('ilya.baker26@example.com', '2026-12-05 08:00:00', 'Full Body Workout #26', '2026-11-26 12:00:00', 'attended'),
    ('artem.adams27@example.com', '2026-11-12 12:00:00', 'Pilates Core #03', '2026-11-27 12:00:00', 'booked'),
    ('kirill.nelson28@example.com', '2026-11-19 16:00:00', 'Dance Cardio #10', '2026-11-28 12:00:00', 'cancelled'),
    ('polina.hill29@example.com', '2026-11-26 10:00:00', 'Mobility & Stretch #17', '2026-11-29 12:00:00', 'no_show'),
    ('kira.campbell30@example.com', '2026-12-03 14:00:00', 'CrossFit Circuit #24', '2026-11-30 12:00:00', 'attended')
) AS v(client_email, workout_datetime, workout_name, booking_datetime, status)
JOIN clients c ON c.email = v.client_email
JOIN workouts w ON w.workout_datetime = v.workout_datetime::timestamp
              AND w.workout_name = v.workout_name;

-- 7. PAYMENTS: 30 платежей, по одному на абонемент
INSERT INTO payments (subscription_id, amount, payment_date, payment_method, payment_status)
SELECT s.subscription_id, v.amount, v.payment_date::timestamp, v.method, v.status
FROM (VALUES
    ('anna.ivanova1@example.com', 45.00, '2026-01-03 10:00:00', 'card', 'completed'),
    ('maria.petrova2@example.com', 125.00, '2026-01-10 10:00:00', 'cash', 'completed'),
    ('sofia.smirnova3@example.com', 230.00, '2026-01-17 10:00:00', 'bank_transfer', 'pending'),
    ('emily.brown4@example.com', 390.00, '2026-01-24 10:00:00', 'card', 'failed'),
    ('olivia.wilson5@example.com', 50.00, '2026-01-31 10:00:00', 'cash', 'refunded'),
    ('alice.taylor6@example.com', 130.00, '2026-02-07 10:00:00', 'bank_transfer', 'completed'),
    ('emma.anderson7@example.com', 220.00, '2026-02-14 10:00:00', 'card', 'completed'),
    ('victoria.thomas8@example.com', 395.00, '2026-02-21 10:00:00', 'cash', 'pending'),
    ('nina.moore9@example.com', 55.00, '2026-02-28 10:00:00', 'bank_transfer', 'failed'),
    ('daria.martin10@example.com', 120.00, '2026-03-07 10:00:00', 'card', 'refunded'),
    ('alex.jones11@example.com', 225.00, '2026-03-14 10:00:00', 'cash', 'completed'),
    ('daniel.miller12@example.com', 400.00, '2026-03-21 10:00:00', 'bank_transfer', 'completed'),
    ('michael.davis13@example.com', 45.00, '2026-03-28 10:00:00', 'card', 'pending'),
    ('david.garcia14@example.com', 125.00, '2026-04-04 10:00:00', 'cash', 'failed'),
    ('max.rodriguez15@example.com', 230.00, '2026-04-11 10:00:00', 'bank_transfer', 'refunded'),
    ('oliver.clark16@example.com', 390.00, '2026-04-18 10:00:00', 'card', 'completed'),
    ('james.lewis17@example.com', 50.00, '2026-04-25 10:00:00', 'cash', 'completed'),
    ('lucas.walker18@example.com', 130.00, '2026-05-02 10:00:00', 'bank_transfer', 'pending'),
    ('ethan.hall19@example.com', 220.00, '2026-05-09 10:00:00', 'card', 'failed'),
    ('noah.young20@example.com', 395.00, '2026-05-16 10:00:00', 'cash', 'refunded'),
    ('mia.allen21@example.com', 55.00, '2026-05-23 10:00:00', 'bank_transfer', 'completed'),
    ('eva.king22@example.com', 120.00, '2026-05-30 10:00:00', 'card', 'completed'),
    ('liam.wright23@example.com', 225.00, '2026-06-06 10:00:00', 'cash', 'pending'),
    ('mark.scott24@example.com', 400.00, '2026-06-13 10:00:00', 'bank_transfer', 'failed'),
    ('paul.green25@example.com', 45.00, '2026-06-20 10:00:00', 'card', 'refunded'),
    ('ilya.baker26@example.com', 125.00, '2026-06-27 10:00:00', 'cash', 'completed'),
    ('artem.adams27@example.com', 230.00, '2026-07-04 10:00:00', 'bank_transfer', 'completed'),
    ('kirill.nelson28@example.com', 390.00, '2026-07-11 10:00:00', 'card', 'pending'),
    ('polina.hill29@example.com', 50.00, '2026-07-18 10:00:00', 'cash', 'failed'),
    ('kira.campbell30@example.com', 130.00, '2026-07-25 10:00:00', 'bank_transfer', 'refunded')
) AS v(client_email, amount, payment_date, method, status)
JOIN clients c ON c.email = v.client_email
JOIN subscriptions s ON s.client_id = c.client_id;

COMMIT;

-- Проверка количества записей: в каждой таблице должно быть 30.
SELECT 'clients' AS table_name, COUNT(*) AS row_count FROM clients;
SELECT 'membership_plans' AS table_name, COUNT(*) AS row_count FROM membership_plans;
SELECT 'trainers' AS table_name, COUNT(*) AS row_count FROM trainers;
SELECT 'subscriptions' AS table_name, COUNT(*) AS row_count FROM subscriptions;
SELECT 'workouts' AS table_name, COUNT(*) AS row_count FROM workouts;
SELECT 'workout_bookings' AS table_name, COUNT(*) AS row_count FROM workout_bookings;
SELECT 'payments' AS table_name, COUNT(*) AS row_count FROM payments;
