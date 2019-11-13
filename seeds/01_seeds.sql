DELETE FROM users;
DELETE FROM properties;
DELETE FROM rates;
DELETE FROM reservations;
DELETE FROM property_reviews;
DELETE FROM guest_reviews;

INSERT INTO users (id, name, email, password)
VALUES (1, 'Eva Stanley', 'evastanley@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
(2, 'Louisa Meyer', 'louisameyer@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
(3, 'Dominic Parks', 'dominicparks@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u');

INSERT INTO properties (id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, street, city, province, post_code, country, active)
VALUES (1, 'Speed Lamp', 'description', 'https://images.pexels.com/photos/2121121/pexels-photo-2121121.jpeg?auto=compress&cs=tinysrgb&h=350', 'https://images.pexels.com/photos/2121121/pexels-photo-2121121.jpeg', 650, 4, 5, 6, '536 Namsub Highway', 'Sotboske', 'Quebec', 'T2T0E7', 'Canada', true),
(2, 'Blank Corner', 'description', 'https://images.pexels.com/photos/2080018/pexels-photo-22080018.jpeg?auto=compress&cs=tinysrgb&h=350', 'https://images.pexels.com/photos/2080018/pexels-photo-22080018.jpeg', 750, 3, 4, 6, '651 Nami Road', 'Calgary', 'Alberta', 'T2R0F9', 'Canada', true),
(3, 'Habit Mix', 'description', 'https://images.pexels.com/photos/1029599/pexels-photo-1029599.jpeg?auto=compress&cs=tinysrgb&h=350', 'https://images.pexels.com/photos/1029599/pexels-photo-1029599.jpeg', 850, 4, 4, 4, '513 Powov Grove', 'Kingston', 'Ontario', 'W2F0P8', 'Canada', true);

INSERT INTO rates (id, start_date, end_date, cost_per_night, property_id)
VALUES (1, '2018-08-11', '2018-09-26', 650, (SELECT id FROM properties WHERE title = 'Speed Lamp')),
(2, '2018-08-11', '2018-09-26', 750, (SELECT id FROM properties WHERE title = 'Blank Corner')),
(3, '2019-01-04', '2019-02-01', 850, (SELECT id FROM properties WHERE title = 'Habit Mix'));

INSERT INTO reservations (id, start_date, end_date, property_id, guest_id)
VALUES (1, '2018-08-11', '2018-09-26', 1, 1),
(2, '2018-08-11', '2018-09-26', 2, 2),
(3, '2019-01-04', '2019-02-01', 3, 3);

INSERT INTO property_reviews (id, guest_id, property_id, reservation_id, rating, message)
VALUES (1, 1, 1, 1, 3, 'message'),
(2, 2, 2, 2, 5, 'message'),
(3, 3, 3, 3, 4, 'message');

INSERT INTO guest_reviews (id, guest_id, owner_id, reservation_id, rating, message)
VALUES (1, 1, 1, 1, 3, 'message'),
(2, 2, 2, 2, 5, 'message'),
(3, 3, 3, 3, 4, 'message');