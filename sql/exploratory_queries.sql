------- Query n°1 --- Average price by neighbourhood group -------------------------------------------------------

SELECT neighbourhood_group, AVG(price) AS average_price, COUNT(*) AS n_listings

FROM `table.airbnb` 

GROUP BY neighbourhood_group
ORDER BY neighbourhood_group

------------------------------------------------------------------------------------------------------------------


------- Query n°2 --- Average price by room type -----------------------------------------------------------------

SELECT room_type, AVG(price) AS average_price, COUNT(*) AS n_listings

FROM `table.airbnb` 

GROUP BY room_type
ORDER BY room_type

------------------------------------------------------------------------------------------------------------------


------- Query n°3 --- Distribution of listings by room type for each neighbourhood group -------------------------

SELECT room_type, neighbourhood_group, AVG(price) AS average_price, COUNT(*) AS n_listings

FROM `table.airbnb`

GROUP BY room_type, neighbourhood_group
ORDER BY room_type, neighbourhood_group;

------------------------------------------------------------------------------------------------------------------


------- Query n°4 --- Number of listings by neighbourhoods -------------------------------------------------------

SELECT neighbourhood_group, neighbourhood, AVG(price) AS average_price, COUNT(*) AS n_listings

FROM `table.airbnb`

GROUP BY neighbourhood_group, neighbourhood
ORDER BY neighbourhood_group, neighbourhood;

------------------------------------------------------------------------------------------------------------------


------- Query n°5 --- Number of listings by minimum nights -------------------------------------------------------

SELECT minimum_nights, COUNT(*) AS n_listings

FROM `table.airbnb`

GROUP BY minimum_nights
ORDER BY minimum_nights;

------------------------------------------------------------------------------------------------------------------


------- Query n°6 --- Number of listings by price ----------------------------------------------------------------

SELECT price, COUNT(*) AS n_listings

FROM `table.airbnb`

GROUP BY price
ORDER BY price;

------------------------------------------------------------------------------------------------------------------


------- Query n°7 --- For the estimated monthly revenue by neighbourhood group -----------------------------------

SELECT neighbourhood_group, AVG(price) AS average_price, AVG(reviews_per_month) AS average_monthly_n_reviews, AVG(minimum_nights) AS average_minimum_nights

FROM `table.airbnb`

GROUP BY neighbourhood_group
ORDER BY neighbourhood_group;

------------------------------------------------------------------------------------------------------------------


------- Query n°8 --- For the estimated monthly revenue by neighbourhood group per room type ---------------------

SELECT neighbourhood_group, room_type, AVG(price) AS average_price, AVG(reviews_per_month) AS average_n_reviews_per_month, AVG(minimum_nights) AS average_minimum_nights

FROM `table.airbnb`

GROUP BY neighbourhood_group, room_type
ORDER BY neighbourhood_group, room_type;

------------------------------------------------------------------------------------------------------------------


------- Query n°9 --- Average availability by neighbourhood group ------------------------------------------------

SELECT neighbourhood_group, AVG(availability_365) AS average_availability

FROM `table.airbnb`

GROUP BY neighbourhood_group
ORDER BY neighbourhood_group;

------------------------------------------------------------------------------------------------------------------


------- Query n°10 --- Top neighbourhoods by less availability ---------------------------------------------------

SELECT neighbourhood_group, neighbourhood, COUNT(*) AS n_listings, AVG(availability_365) AS average_availability

FROM `table.airbnb`

GROUP BY neighbourhood_group, neighbourhood
HAVING n_listings > 10
ORDER BY average_availability ASC

LIMIT 15;

------------------------------------------------------------------------------------------------------------------


------- Query n°11 --- Total monthly reviews by neighbourhood group ----------------------------------------------

SELECT neighbourhood_group, ROUND(SUM(reviews_per_month),0) AS total_reviews_per_month

FROM `table.airbnb`

GROUP BY neighbourhood_group
ORDER BY neighbourhood_group;

------------------------------------------------------------------------------------------------------------------