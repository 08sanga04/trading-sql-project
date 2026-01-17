# Trader Performance & Risk Analysis using SQL

## 📌 Project Overview
This project analyzes trading performance using SQL to evaluate profitability, win rate, and risk-related metrics.
The objective is to understand why a trading system is unprofitable despite having a reasonable win rate.

## 📂 Dataset
- File: `trades.csv`
- Records: 1,000 trades
- Asset Classes: Forex, Equity, Crypto
- Data includes trade timing, PnL, strategy, and risk metrics

## 🧱 Table Schema
Key columns used in analysis:
- trade_date
- instrument
- direction
- pnl
- risk_amount
- strategy

## 🎯 Business Questions Answered
1. Do we have valid trading data?
2. What is the total profit or loss?
3. What is the overall win rate?
4. How do average wins compare to average losses?
5. What is the trading expectancy?
6. Is the system profitable based on profit factor?

## 📊 Key Findings
- Total PnL: **-5,775.23**
- Win Rate: **50.2%**
- Average Win: **+250**
- Average Loss: **-264**
- Expectancy: **-5.7 per trade**
- Profit Factor: **0.95**

Despite a win rate above 50%, the system is unprofitable due to slightly larger average losses compared to wins.

## 🛠 SQL Concepts Used
- SELECT, WHERE, GROUP BY
- CASE WHEN
- Aggregate functions (SUM, AVG, COUNT)
- Basic performance KPIs

## 🚀 Conclusion
This analysis demonstrates how profitability depends not only on win rate but also on risk–reward balance.
The project reflects a real-world analytical approach used in trading and finance roles.
