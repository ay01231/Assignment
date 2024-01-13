DROP DATABASE IF EXISTS bank;

CREATE DATABASE bank;

USE bank;

CREATE TABLE IF NOT EXISTS productlines (
    productLineID INT AUTO_INCREMENT PRIMARY KEY,
    productLine VARCHAR(50) UNIQUE NOT NULL,
    textDescription TEXT,
    htmlDescription TEXT,
    image BLOB
);


INSERT INTO `productlines` (`productLineID`, `productLine`, `textDescription`, `htmlDescription`, `image`) VALUES
(1, 'Automobile', 'A wide range of automobiles from luxury sedans to off-road pickups.', '<p>A wide range of automobiles from luxury sedans to off-road pickups.</p>', NULL),
(2, 'Motorcycle', 'High-performance motorcycles for various riding preferences.', '<p>High-performance motorcycles for various riding preferences.</p>', NULL),
(3, 'Electronics', 'Cutting-edge electronic devices and gadgets.', '<p>Cutting-edge electronic devices and gadgets.</p>', NULL),
(4, 'Furniture', 'Elegant and durable furniture for modern living spaces.', '<p>Elegant and durable furniture for modern living spaces.</p>', NULL),
(5, 'Toys', 'Fun and educational toys for children of all ages.', '<p>Fun and educational toys for children of all ages.</p>', NULL),
(6, 'Clothing', 'Trendy and stylish clothing for men, women, and children.', '<p>Trendy and stylish clothing for men, women, and children.</p>', NULL),
(7, 'Jewelry', 'Exquisite jewelry pieces for every occasion.', '<p>Exquisite jewelry pieces for every occasion.</p>', NULL);


CREATE TABLE IF NOT EXISTS offices (
  officeCode VARCHAR(10) PRIMARY KEY,
  city VARCHAR(50) NOT NULL,
  phone VARCHAR(20),
  addressLine1 VARCHAR(100),
  addressLine2 VARCHAR(100),
  state VARCHAR(2),
  country VARCHAR(50),
  postalCode VARCHAR(10),
  territory VARCHAR(10)
);


INSERT INTO `offices` (`officeCode`, `city`, `phone`, `addressLine1`, `addressLine2`, `state`, `country`, `postalCode`, `territory`) VALUES
('IDN001', 'Jakarta', '+62 21 12345678', 'Jl. Sudirman No. 123', 'Tower A, 15th Floor', 'JK', 'Indonesia', '12345', 'IDN'),
('IDN002', 'Surabaya', '+62 31 98765432', 'Jl. Majapahit No. 456', 'Suite 200', 'JB', 'Indonesia', '67890', 'IDN'),
('IDN003', 'Bandung', '+62 22 11112222', 'Jl. Asia Afrika No. 789', '8th Floor', 'JB', 'Indonesia', '54321', 'IDN'),
('SGP001', 'Singapore', '+65 98765432', 'Marina Bay Sands', 'Tower 3, 18th Floor', 'SG', 'Singapore', '123456', 'SGP'),
('SGP002', 'Singapore', '+65 87654321', 'Raffles Place', 'Level 10', 'SG', 'Singapore', '654321', 'SGP'),
('SGP003', 'Singapore', '+65 65432109', 'Orchard Road', 'Unit 15', 'SG', 'Singapore', '987654', 'SGP'),
('SGP004', 'Singapore', '+65 12345678', 'Sentosa Island', 'Villa 25', 'SG', 'Singapore', '111222', 'SGP');


CREATE TABLE IF NOT EXISTS employees (
  employeeNumber INT AUTO_INCREMENT PRIMARY KEY,
  lastName VARCHAR(50) NOT NULL,
  firstName VARCHAR(50) NOT NULL,
  extension VARCHAR(10),
  email VARCHAR(100),
  officeCode VARCHAR(10) NOT NULL,
  reportsTo INT,
  jobTitle VARCHAR(50) NOT NULL,
  CONSTRAINT fk_office
    FOREIGN KEY (officeCode)
    REFERENCES offices(officeCode)
    ON DELETE CASCADE,
  CONSTRAINT fk_reportsTo
    FOREIGN KEY (reportsTo)
    REFERENCES employees(employeeNumber)
);


INSERT INTO `employees` (`employeeNumber`, `lastName`, `firstName`, `extension`, `email`, `officeCode`, `reportsTo`, `jobTitle`) VALUES
(1001, 'Doe', 'John', 'x1234', 'john.doe@example.com', 'IDN001', NULL, 'Manager'),
(1002, 'Smith', 'Jane', 'x5678', 'jane.smith@example.com', 'IDN002', 1001, 'Sales Representative'),
(1003, 'Johnson', 'Robert', 'x9012', 'robert.johnson@example.com', 'IDN001', 1001, 'Marketing Coordinator'),
(1004, 'Lee', 'Sara', 'x3456', 'sara.lee@example.com', 'IDN003', 1001, 'HR Specialist'),
(1005, 'Tan', 'Michael', 'x7890', 'michael.tan@example.com', 'SGP001', NULL, 'Finance Manager'),
(1006, 'Wong', 'Emily', 'x2345', 'emily.wong@example.com', 'SGP002', 1005, 'IT Analyst'),
(1007, 'Lim', 'David', 'x6789', 'david.lim@example.com', 'SGP003', 1005, 'Customer Support Specialist');


CREATE TABLE IF NOT EXISTS customers (
  customerNumber INT AUTO_INCREMENT PRIMARY KEY,
  customerName VARCHAR(255) NOT NULL,
  contactLastName VARCHAR(50) NOT NULL,
  contactFirstName VARCHAR(50) NOT NULL,
  phone VARCHAR(20),
  addressLine1 VARCHAR(100),
  addressLine2 VARCHAR(100),
  city VARCHAR(50),
  state VARCHAR(2),
  postalCode VARCHAR(10),
  country VARCHAR(50),
  salesRepEmployeeNumber INT,
  creditLimit DECIMAL(10,2),
  CONSTRAINT fk_salesRep
    FOREIGN KEY (salesRepEmployeeNumber)
    REFERENCES employees(employeeNumber)
);


INSERT INTO `customers` (`customerNumber`, `customerName`, `contactLastName`, `contactFirstName`, `phone`, `addressLine1`, `addressLine2`, `city`, `state`, `postalCode`, `country`, `salesRepEmployeeNumber`, `creditLimit`) VALUES
(101, 'IndoTech Solutions', 'Wibowo', 'Budi', '+62 21 98765432', 'Jl. Thamrin No. 123', 'Suite 456', 'Jakarta', 'JK', '12345', 'Indonesia', 1002, 50000.00),
(102, 'SingaElectronics', 'Lim', 'Wei', '+65 12345678', 'Orchard Road', 'Block C, 10th Floor', 'Singapore', NULL, '54321', 'Singapore', 1005, 75000.00),
(103, 'JavaFurniture', 'Suryono', 'Putri', '+62 31 87654321', 'Jl. Ahmad Yani No. 789', '8th Floor', 'Surabaya', 'JB', '67890', 'Indonesia', 1003, 60000.00),
(104, 'SGPlaza', 'Tan', 'Heng', '+65 98765432', 'Raffles Place', 'Level 15', 'Singapore', NULL, '65432', 'Singapore', 1001, 80000.00),
(105, 'BaliCrafts', 'Ketut', 'Made', '+62 361 23456789', 'Jl. Legian No. 456', 'Villa 25', 'Denpasar', 'BA', '54321', 'Indonesia', 1004, 70000.00),
(106, 'SINDesign', 'Chua', 'Ling', '+65 87654321', 'Marina Bay Sands', 'Tower 3, 20th Floor', 'Singapore', NULL, '98765', 'Singapore', 1006, 90000.00),
(107, 'BatikEmporium', 'Widodo', 'Sari', '+62 22 11112222', 'Jl. Asia Afrika No. 789', '12th Floor', 'Bandung', 'JB', '54321', 'Indonesia', 1007, 55000.00);


CREATE TABLE IF NOT EXISTS payments (
  paymentID INT AUTO_INCREMENT PRIMARY KEY,
  customerNumber INT NOT NULL,
  checkNumber VARCHAR(50) NOT NULL,
  paymentDate DATE NOT NULL,
  amount DECIMAL(10,2) NOT NULL,
  CONSTRAINT fk_customer
    FOREIGN KEY (customerNumber)
    REFERENCES customers(customerNumber)
    ON DELETE CASCADE,
  UNIQUE (customerNumber, checkNumber)
);


INSERT INTO `payments` (`paymentID`, `customerNumber`, `checkNumber`, `paymentDate`, `amount`) VALUES
(1, 101, 'CHK123456', '2024-01-12', 5000.00),
(2, 102, 'CHK789012', '2024-01-15', 7500.00),
(3, 103, 'CHK345678', '2024-01-20', 6000.00),
(4, 104, 'CHK901234', '2024-01-25', 8000.00),
(5, 105, 'CHK567890', '2024-01-30', 7000.00),
(6, 106, 'CHK234567', '2024-02-05', 9000.00),
(7, 107, 'CHK890123', '2024-02-10', 5500.00);


CREATE TABLE IF NOT EXISTS orders (
  orderNumber INT AUTO_INCREMENT PRIMARY KEY,
  orderDate DATE NOT NULL,
  requiredDate DATE,
  shippedDate DATE,
  status VARCHAR(20) NOT NULL,
  comments TEXT,
  customerNumber INT NOT NULL,
  CONSTRAINT fk_customer_order
    FOREIGN KEY (customerNumber)
    REFERENCES customers(customerNumber)
    ON DELETE CASCADE
);


INSERT INTO `orders` (`orderNumber`, `orderDate`, `requiredDate`, `shippedDate`, `status`, `comments`, `customerNumber`) VALUES
(10101, '2024-01-12', '2024-01-18', '2024-01-15', 'Shipped', 'Items shipped on time.', 101),
(10102, '2024-01-15', '2024-01-22', '2024-01-20', 'Shipped', 'Express shipping requested.', 102),
(10103, '2024-01-18', '2024-01-25', '2024-01-23', 'Shipped', 'Customer prefers eco-friendly packaging.', 103),
(10104, '2024-01-20', '2024-01-28', '2024-01-26', 'Shipped', 'Gift wrapping requested.', 104),
(10105, '2024-01-22', '2024-01-30', '2024-01-28', 'Shipped', 'Fragile items, handle with care.', 105),
(10106, '2024-01-25', '2024-02-01', NULL, 'Processing', 'Awaiting item availability.', 106),
(10107, '2024-01-28', '2024-02-05', NULL, 'Processing', 'Special order in progress.', 107);


CREATE TABLE IF NOT EXISTS products (
    productID INT AUTO_INCREMENT PRIMARY KEY,
    productCode VARCHAR(50) UNIQUE NOT NULL,
    productName VARCHAR(100) NOT NULL,
    productLine VARCHAR(50) NOT NULL,
    productScale VARCHAR(20),
    productVendor VARCHAR(50),
    productDescription TEXT,
    quantityInStock INT,
    buyPrice DECIMAL(10,2),
    MSRP DECIMAL(10,2),
    CONSTRAINT fk_productLine
        FOREIGN KEY (productLine)
        REFERENCES productlines(productLine)
        ON DELETE CASCADE
);


INSERT INTO `products` (`productID`, `productCode`, `productName`, `productLine`, `productScale`, `productVendor`, `productDescription`, `quantityInStock`, `buyPrice`, `MSRP`) VALUES
(1, 'CAR001', 'Luxury Sedan', 'Automobile', '1:18', 'AutoLux', 'High-end luxury sedan with advanced features.', 50, 50000.00, 75000.00),
(2, 'MOT001', 'Sports Motorcycle', 'Motorcycle', '1:12', 'SpeedBikes', 'Powerful sports motorcycle for enthusiasts.', 30, 12000.00, 18000.00),
(3, 'CAR002', 'Compact SUV', 'Automobile', '1:24', 'CityDrives', 'Compact SUV with spacious interiors and modern design.', 40, 35000.00, 50000.00),
(4, 'MOT002', 'Touring Motorcycle', 'Motorcycle', '1:10', 'AdventureRide', 'Comfortable touring motorcycle for long rides.', 25, 18000.00, 25000.00),
(5, 'CAR003', 'Electric Hatchback', 'Automobile', '1:32', 'GreenCars', 'Environmentally friendly electric hatchback.', 60, 25000.00, 35000.00),
(6, 'MOT003', 'Cruiser Motorcycle', 'Motorcycle', '1:8', 'ClassicCycles', 'Classic cruiser motorcycle for a laid-back ride.', 20, 22000.00, 30000.00),
(7, 'CAR004', 'Off-Road Pickup', 'Automobile', '1:16', 'AdventureTrucks', 'Sturdy off-road pickup for adventurous drives.', 35, 40000.00, 55000.00);


CREATE TABLE IF NOT EXISTS orderdetails (
  orderLineNumber INT AUTO_INCREMENT PRIMARY KEY,
  orderNumber INT NOT NULL,
  productCode VARCHAR(50) NOT NULL,
  quantityOrdered INT NOT NULL,
  priceEach DECIMAL(10,2) NOT NULL,
  CONSTRAINT fk_order
    FOREIGN KEY (orderNumber)
    REFERENCES orders(orderNumber)
    ON DELETE CASCADE,
  CONSTRAINT fk_product
    FOREIGN KEY (productCode)
    REFERENCES products(productCode)
);

INSERT INTO `orderdetails` (`orderLineNumber`, `orderNumber`, `productCode`, `quantityOrdered`, `priceEach`) VALUES
(1, 10101, 'CAR001', 2, 60000.00),
(2, 10102, 'MOT001', 1, 15000.00),
(3, 10103, 'CAR002', 3, 40000.00),
(4, 10104, 'MOT002', 2, 20000.00),
(5, 10105, 'CAR003', 4, 30000.00),
(6, 10106, 'MOT003', 1, 25000.00),
(7, 10107, 'CAR004', 2, 50000.00);

