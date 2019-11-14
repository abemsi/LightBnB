SELECT properties.*, reservations.*, AVG(rating) AS average_rating
FROM reservations
JOIN properties ON reservations.property_id = properties.id
JOIN property_reviews ON properties.id = property_reviews.property_id 
WHERE reservations.guest_id = 1
AND reservations.end_date < now()::date
GROUP BY properties.id, reservations.id
ORDER BY reservations.start_date
LIMIT 10;

-- ORIGINAL ATTEMPT - SIMILAR ANSWER (1 EXTRA ROW)

-- SELECT properties.*, reservations.*, AVG(property_reviews.rating) AS average_rating
-- FROM properties
-- JOIN property_reviews ON properties.id = property_reviews.property_id
-- JOIN reservations ON properties.id = reservations.property_id
-- WHERE reservations.guest_id = 1 AND reservations.end_date < now()::date
-- GROUP BY reservations.id, properties.id
-- ORDER BY reservations.start_date
-- LIMIT 10;