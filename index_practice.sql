USE classicmodels;
EXPLAIN SELECT * FROM customers WHERE customerName = 'Land of Toys Inc.';
-- Tạo index cho cột customerName
ALTER TABLE customers ADD INDEX idx_customerName(customerName);

-- Kiểm tra lại sau khi thêm index
EXPLAIN SELECT * FROM customers WHERE customerName = 'Land of Toys Inc.';
-- Tạo index kết hợp 2 cột contactFirstName và contactLastName
ALTER TABLE customers ADD INDEX idx_full_name(contactFirstName, contactLastName);

-- Kiểm tra truy vấn
EXPLAIN SELECT * FROM customers WHERE contactFirstName = 'Jean' OR contactFirstName = 'King';

-- Xóa index vừa tạo
ALTER TABLE customers DROP INDEX idx_full_name;