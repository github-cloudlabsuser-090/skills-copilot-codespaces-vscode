-- Create a table for 5 products with product names and prices.

CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL
);

INSERT INTO products (product_name, price) VALUES ('Apple', 0.99);
INSERT INTO products (product_name, price) VALUES ('Banana', 0.79);
INSERT INTO products (product_name, price) VALUES ('Orange', 1.29);
INSERT INTO products (product_name, price) VALUES ('Pineapple', 2.99);
INSERT INTO products (product_name, price) VALUES ('Strawberry', 1.49);

-- Path: app.js
// Import the MySQL library.
const mysql = require('mysql');

// Create a connection to the MySQL database.
const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'demo'
});

// Connect to the database.
connection.connect();

// Select all products from the products table.
connection.query('SELECT * FROM products', (error, results, fields) => {
    if (error) {
        console.error('An error occurred: ' + error.message);
        return;
    }

    // Print the results to the console.
    console.log('Products:');
    results.forEach((product) => {
        console.log(`- ${product.product_name}: $${product.price.toFixed(2)}`);
    });
});

// Close the connection to the database.
connection.end();

// Run the application using Node.js.
// $ node app.js
// Products:
// - Apple: $0.99
// - Banana: $0.79
// - Orange: $1.29
// - Pineapple: $2.99
// - Strawberry: $1.49