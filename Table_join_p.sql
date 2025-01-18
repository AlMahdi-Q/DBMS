CREATE TABLE "installments" (
	"TransactionID"	INTEGER,
	"Amount"	INTEGER,
	"CustomerID"	INTEGER,
	"Date"	TEXT,
	PRIMARY KEY("TransactionID"),
	FOREIGN KEY("CustomerID") REFERENCES "Customers"("CustomerID")
);
CREATE TABLE "Customers" (
	"CustomerID"	INTEGER,
	"Name"	TEXT,
	"Remaining"	INTEGER,
	PRIMARY KEY("CustomerID")
);
INSERT INTO "Customers" ("CustomerID", "Name", "Remaining")
VALUES 
    (1111, 'Hasan', 5000),
    (2222, 'Hiba', 6000),
    (3333, 'Mohamad', 7500),
    (4444, 'Hiba', 10000),
    (5555, 'Ibrahim', 2000),
    (6666, 'Ahmad', 5000),
    (7777, 'Hasan', 4500);
INSERT INTO "installments" ("Amount", "CustomerID", "Date")
VALUES 
    (450, 1111, '2020-10-05'),
    (300, 2222, '2020-11-09'),
    (700, 1111, '2020-06-05'),
    (300, 3333, '2020-10-15'),
    (500, 4444, '2020-11-05'),
    (450, 5555, '2020-11-05'),
    (350, 6666, '2020-06-20'),
    (250, 7777, '2020-11-05'),
    (150, 6666, '2020-07-08'),
    (400, 5555, '2020-11-25'),
    (700, 2222, '2020-10-02');
	
UPDATE customers SET Remaining = Remaining - (
	SELECT Amount From installments WHERE installments.CustomerID = Customers.CustomerID
);

