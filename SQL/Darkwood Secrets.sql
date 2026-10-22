-- Part 1. Exploratory Data Analysis
-- Task 1. Exploring the share of paying users

-- 1.1. Share of paying users across all data:
-- Calculating total users, number of paying users, and the share of paying users
SELECT 
	COUNT(id) AS total_users,
	SUM(payer) AS total_paying_users,
	ROUND(SUM(payer)/COUNT(id)::NUMERIC, 4) AS paying_users_share
FROM fantasy.users;

-- 1.2. Share of paying users by character race:
-- Calculating total users, number of paying users, and the share of paying users broken down by race
SELECT 
	race, 
	COUNT(id) AS total_by_race, 
	SUM(payer) AS paying_by_race,
	ROUND(SUM(payer)/COUNT(DISTINCT id)::NUMERIC, 4) AS paying_by_race_share
FROM fantasy.race AS r
LEFT JOIN fantasy.users AS u USING(race_id)
GROUP BY race
ORDER BY paying_by_race_share DESC;

-- Task 2. In-game purchases analysis
-- 2.1. Statistical indicators for the amount field:
-- Calculating total purchases, total sum, minimum and maximum cost, as well as average, median, and standard deviation of the purchase cost
SELECT 
	COUNT(transaction_id) AS total_events, 
	SUM(amount) AS total_sum, 
	MIN(amount) AS min_amnt,
	MAX(amount) AS max_amnt, 
	AVG(amount)::NUMERIC(5,2) AS avg_amount,
	PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY amount) AS median_amnt,
	STDDEV(amount)::NUMERIC(6,2) AS std_dev
FROM fantasy.events; 

-- 2.2: Zero-value anomalous purchases:
-- Finding purchases with zero cost, determining their quantity and share of the total number of purchases
SELECT
    COUNT(*) FILTER (WHERE amount = 0) AS zero_value_total,
    COUNT(*) AS events_total,
    ROUND(COUNT(*) FILTER (WHERE amount = 0)::numeric 
        / COUNT(*), 4) AS zero_value_share
FROM fantasy.events;

-- 2.3: Popular epic items:
-- Calculating sales statistics broken down by epic items 
--(absolute and relative sales volume + share of players who bought the item at least once)
SELECT 
	game_items, 
	COUNT(transaction_id) AS sales_by_item, 
	COUNT(DISTINCT id) AS buyers_items, 
	ROUND(COUNT(*)::numeric / SUM(COUNT(*)) OVER(), 6) AS sales_share, 
	ROUND(COUNT(DISTINCT id)::numeric / (SELECT COUNT(DISTINCT id) FROM fantasy.events WHERE amount != 0), 4) AS buyers_share 
FROM fantasy.items 
LEFT JOIN fantasy.events USING(item_code)
WHERE amount != 0 
GROUP BY item_code 
ORDER BY sales_by_item DESC;

-- Part 2. Ad-hoc task solution
-- Task: Determining the dependence of player activity on character race:
WITH 
-- Calculating paying and total players broken down by race 
players_and_payers_by_race AS (
	SELECT 
		race_id, 
		COUNT(u.id) AS total_by_race,
		SUM(payer) AS paying_by_race
	FROM fantasy.users AS u
	GROUP BY race_id
),
-- Calculating paying users who made purchases broken down by race
paying_buyers AS (
	SELECT 
		race_id, 
		COUNT(DISTINCT id) AS paying_buyers_by_race
	FROM fantasy.events
	JOIN fantasy.users USING(id)
	WHERE payer = 1 AND amount !=0
	GROUP BY race_id
), 
-- Calculating the number of players who made purchases (buyers) and total number of purchases (total_events) broken down by race
buyers_by_race AS (
	SELECT 
		race_id, 
		COUNT(DISTINCT e.id) AS total_buyers, 
		COUNT(transaction_id) AS total_events, 
		-- Calculating the average number of purchases per 1 buyer
		ROUND(COUNT(transaction_id)::numeric/COUNT(DISTINCT e.id), 4) AS avg_events_per_buyer,
		-- Calculating the average cost of 1 purchase per 1 buyer
		AVG(amount)::NUMERIC(5,2) AS avg_sale_per_buyer, 
		-- Calculating the average total cost of all purchases per 1 buyer
		ROUND(SUM(amount)::NUMERIC/COUNT(DISTINCT id), 2) AS avg_sum_per_buyer
	FROM fantasy.events AS e
	LEFT JOIN fantasy.users AS u USING(id)
	WHERE amount !=0
	GROUP BY race_id
)
-- In the main query, output statistics (buyers share, paying share, average purchase amount, average purchase count) broken down by race
	SELECT 
		race, 
		total_by_race, 
		total_buyers, 
		-- Calculating the share of buyers relative to total players
		ROUND(total_buyers::NUMERIC/total_by_race, 4) AS buyers_share, 
		-- Calculating the share of paying users relative to buyers
		ROUND(paying_buyers_by_race::NUMERIC/total_buyers, 4) AS paying_share,
		avg_events_per_buyer, 
		avg_sale_per_buyer, 
		avg_sum_per_buyer
	FROM players_and_payers_by_race
	LEFT JOIN buyers_by_race USING(race_id)
	LEFT JOIN paying_buyers USING(race_id)
	JOIN fantasy.race AS r USING(race_id)
	ORDER BY buyers_share DESC;