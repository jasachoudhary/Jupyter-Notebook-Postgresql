
-- Create a schema if it doesn't exist
CREATE SCHEMA IF NOT EXISTS trade;


-- Create the trades table if it doesn't exist
CREATE TABLE IF NOT EXISTS trade.trades (
    account_id INT NOT NULL,
    symbol TEXT,
    side TEXT,
    qty INT,
    timestamp TIMESTAMP
);

COPY trade.trades FROM '/docker-entrypoint-initdb.d/trades.csv' DELIMITER ',' CSV HEADER;