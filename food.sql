-- Create a database for the food delivery app
CREATE DATABASE food_delivery_db;

-- Use the new database
USE food_delivery_db;

-- Create a table for restaurants
CREATE TABLE restaurants (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL
);

-- Create a table for food items
CREATE TABLE food_items (
    id INT AUTO_INCREMENT PRIMARY KEY,
    restaurant_id INT,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2) NOT NULL,
    category VARCHAR(255) NOT NULL
);

-- Create a table for orders
CREATE TABLE orders (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    total_amount DECIMAL(10, 2) NOT NULL
);

-- Create a table for order items (to associate food items with orders)
CREATE TABLE order_items (
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    food_item_id INT,
    quantity INT NOT NULL,
    price DECIMAL(10, 2) NOT NULL
);

-- Create a table for user details
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(255) NOT NULL
);
