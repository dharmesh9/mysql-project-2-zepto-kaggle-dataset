CREATE TABLE products (
    category VARCHAR(100),
    name VARCHAR(255),
    mrp DECIMAL(10,2),
    discountPercent DECIMAL(5,2) DEFAULT 0,
    availableQuantity INT,
    discountedSellingPrice DECIMAL(10,2),
    weightInGms INT,
    outOfStock BOOLEAN DEFAULT FALSE,
    quantity INT
);
