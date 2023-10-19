SELECT properties.id AS id, properties.title AS title, properties.cost_per_night AS cost_per_night, AVG(property_reviews.rating)
FROM properties
JOIN property_reviews ON property_reviews.property_id = properties.id
WHERE properties.city LIKE '%ancouver%'
GROUP BY properties.id
HAVING AVG(property_reviews.rating) >= 4
ORDER BY cost_per_night
LIMIT 10;
