-- ==================================
-- Database & Table Schema
-- ==================================

CREATE DATABASE trading_analysis;
USE trading_analysis;

CREATE TABLE trades (
    trade_id INT PRIMARY KEY,
    trade_date DATE,
    open_time DATETIME,
    close_time DATETIME,
    instrument VARCHAR(20),
    asset_class VARCHAR(20),
    direction VARCHAR(10),
    entry_price DECIMAL(10,4),
    exit_price DECIMAL(10,4),
    quantity DECIMAL(10,2),
    pnl DECIMAL(10,2),
    risk_amount DECIMAL(10,2),
    strategy VARCHAR(30),
    account_id VARCHAR(10),
    trader_id VARCHAR(10)
);



