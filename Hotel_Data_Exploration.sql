WITH HotelData as (
SELECT * FROM Project_Hotel_Analysis..['2018$']
UNION
SELECT * FROM Project_Hotel_Analysis..['2019$']
UNION 
SELECT * FROM Project_Hotel_Analysis..['2020$'])

Select * from HotelData as hotel
LEFT JOIN  Project_Hotel_Analysis..[market_segment$] as market
ON Hotel.market_segment = market.market_segment
LEFT JOIN Project_Hotel_Analysis..[meal_cost$] as meal
ON hotel.meal = meal.meal

/*
SELECT arrival_date_year, hotel, round(sum((stays_in_week_nights + stays_in_weekend_nights) * adr), 2) as DailyRevenue
FROM HotelData
GROUP BY arrival_date_year, hotel
8/

