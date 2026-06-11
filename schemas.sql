-- Active: 1781147267056@@localhost@3306@shoppingdb
USE ShoppingDB;

-- CUSTOMER TABLE
CREATE TABLE customer (
    cust_id VARCHAR(5) PRIMARY KEY,
    f_name VARCHAR(50),
    l_name VARCHAR(50),
    area VARCHAR(10),
    phone_no VARCHAR(10)
);

-- CATEGORY TABLE
CREATE TABLE category (
    category_id VARCHAR(5) PRIMARY KEY,
    category_name VARCHAR(30)
);

-- PRODUCT TABLE
CREATE TABLE product (
    product_id VARCHAR(5) PRIMARY KEY,
    product_name VARCHAR(50),
    category_id VARCHAR(5) NOT NULL,
    price DECIMAL(8,2),
    stock INT,
    FOREIGN KEY (category_id) REFERENCES category(category_id)
);

-- ORDERS TABLE
CREATE TABLE orders (
    order_id VARCHAR(5) PRIMARY KEY,
    cust_id VARCHAR(5),
    order_date DATE,
    total_amount DECIMAL(10,2),
    FOREIGN KEY (cust_id) REFERENCES customer(cust_id)
);

-- ORDER_ITEMS TABLE
CREATE TABLE order_items (
    order_item_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id VARCHAR(5) NOT NULL,
    product_id VARCHAR(5) NOT NULL,
    quantity INT,
    price DECIMAL(8,2),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES product(product_id)
);

-- INVOICE TABLE
CREATE TABLE invoice (
    inv_no VARCHAR(5) PRIMARY KEY,
    order_id VARCHAR(5) NOT NULL,
    inv_date DATE,
    amount DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

-- PAYMENT TABLE
CREATE TABLE payment (
    payment_id VARCHAR(5) PRIMARY KEY,
    inv_no VARCHAR(5) NOT NULL,
    payment_date DATE,
    payment_mode VARCHAR(20),
    payment_status VARCHAR(15),
    FOREIGN KEY (inv_no) REFERENCES invoice(inv_no)
);




