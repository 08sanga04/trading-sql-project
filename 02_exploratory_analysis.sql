-- ==========================================
-- Performance Overview Analysis
-- ==========================================

-- Do I actually have data?
SELECT COUNT(*) FROM trades;

-- Do I have the top 5 trades?
SELECT * FROM trades LIMIT 5;

-- Describe the trades?
DESCRIBE trades;

-- Count the trades according to direction?
SELECT direction, COUNT(*) AS total_trades
FROM trades
GROUP BY direction;

-- Exploring the data
SELECT DISTINCT instrument FROM trades;
SELECT DISTINCT strategy FROM trades;
SELECT MIN(trade_date), MAX(trade_date) FROM trades;

-- COUNT WINNING VS LOSING TRADES?
SELECT
    CASE
        WHEN pnl > 0 THEN 'Profit'
        ELSE 'Loss'
    END AS trade_result,
    COUNT(*) AS total_trades
FROM trades
GROUP BY trade_result;

