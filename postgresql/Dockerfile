# Use an official PostgreSQL image as base image
FROM postgres:latest

# Set environment variables
ENV POSTGRES_DB=mydb
ENV POSTGRES_USER=myuser
ENV POSTGRES_PASSWORD=mypass

# Copy the trades.csv file into the container
COPY /input_data/trades.csv /docker-entrypoint-initdb.d/

# Copy SQL script to create table and import data
COPY /sql_script/table.sql /docker-entrypoint-initdb.d/

RUN chmod a+r /docker-entrypoint-initdb.d/*

# Expose the PostgreSQL port
EXPOSE 5432



