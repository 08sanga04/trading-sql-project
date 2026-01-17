-- ===============================
-- KPIs Analysis
-- ===============================

-- What is the total profit or loss?
SELECT SUM(pnl) AS total_pnl
FROM trades;

-- What is the win rate?
SELECT
    COUNT(CASE WHEN pnl > 0 THEN 1 END) * 100.0 / COUNT(*) AS win_rate_percentage
FROM trades;

-- What is the average winning trade vs average losing trade?
SELECT
    AVG(CASE WHEN pnl > 0 THEN pnl END) AS avg_win,
    AVG(CASE WHEN pnl < 0 THEN pnl END) AS avg_loss
FROM trades;

-- What is the trading expectancy?
SELECT
    (
        (COUNT(CASE WHEN pnl > 0 THEN 1 END) * 1.0 / COUNT(*)) * 
        AVG(CASE WHEN pnl > 0 THEN pnl END)
    ) +
    (
        (COUNT(CASE WHEN pnl < 0 THEN 1 END) * 1.0 / COUNT(*)) * 
        AVG(CASE WHEN pnl < 0 THEN pnl END)
    ) AS expectancy
FROM trades;

-- What is the profit factor?
SELECT
    SUM(CASE WHEN pnl > 0 THEN pnl END) /
    ABS(SUM(CASE WHEN pnl < 0 THEN pnl END)) AS profit_factor
FROM trades;
