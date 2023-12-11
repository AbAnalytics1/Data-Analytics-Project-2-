CREATE DATABASE Adventure_Works;
USE Adventure_Works;

-- Next create tables
-- Creating customer Table and proceed

CREATE TABLE CUSTOMERS(
	CustomerID			INT NOT NULL,
    Firstname			VARCHAR(25),
    Lastname			VARCHAR(25),
    MaritalStatus		VARCHAR(25),
    Gender				VARCHAR(10),
    Email_Address		VARCHAR(25),
    AnnualIncome		DECIMAL,
    TotalChildren		SMALLINT,
    EducationLevel		VARCHAR(25),
    Occupation			VARCHAR(25),
    HomeOwner			VARCHAR(25)
    
);

ALTER TABLE CUSTOMERS
ADD PRIMARY KEY (CustomerID); 

-- Added more columns to the table

ALTER TABLE CUSTOMERS
ADD COLUMN NewBirthDate 		DATE,
ADD COLUMN `Parent` 			VARCHAR(25),
ADD COLUMN DomainName 			VARCHAR(25),
ADD COLUMN Priority 			VARCHAR(25),
ADD COLUMN FullName 			VARCHAR(25),
ADD COLUMN SalaryRange 			DECIMAL(10,2);

SELECT * FROM CUSTOMERS;


SELECT * FROM CUSTOMERS;
-- Creating Product category table. In this table i  will manually input the data
-- This is because the data is small. 

CREATE TABLE PRODUCT_CATEGORY(

	CategoryKey		SMALLINT NOT NULL,
    CategoryName	VARCHAR(50),
    PRIMARY KEY (CategoryKey)
);

INSERT INTO  PRODUCT_CATEGORY VALUES
(1,"Bikes"),
(2, "Components"),
(3, "Clothing"),
(4, "Accessories");

SELECT * FROM PRODUCT_CATEGORY;

CREATE TABLE PRODUCT_SUBCATEGORY(

	SubCategoryKey		SMALLINT NOT NULL,
    SubCategoryName		VARCHAR(100),
    CategoryKey			SMALLINT NOT NULL,
    FOREIGN KEY (CategoryKey) REFERENCES PRODUCT_CATEGORY(CategoryKey)
);

-- Data will be import the data for this table.

ALTER TABLE PRODUCT_SUBCATEGORY
ADD PRIMARY KEY (SubCategoryKey);


SELECT * FROM PRODUCT_SUBCATEGORY;

-- Creating the Product lookup table


CREATE TABLE PRODUCT(

	ProductKey			SMALLINT NOT NULL,
	SubCategoryKey		SMALLINT NOT NULL,
    ProductSKU			VARCHAR(25),
    ProductName			VARCHAR(50),
    ModelName			VARCHAR(25),
    ProductDescription	VARCHAR(250),
    ProductColor		VARCHAR(25),
    ProductSize			INT,
    ProductStyle		VARCHAR(25),
    ProductCost			DECIMAL,
    ProductPrice		DECIMAL,
    PRIMARY KEY (ProductKey),
    FOREIGN KEY (SubCategoryKey) REFERENCES PRODUCT_SUBCATEGORY(SubCategoryKey)
);

-- Creating the Calender lookup table 

CREATE TABLE Calendar (
    CalendarDate DATE PRIMARY KEY,
    DayOfWeek VARCHAR(20),
    DayOfMonth INT,
    DayOfYear INT,
    WeekOfMonth INT,
    Month INT,
    MonthName VARCHAR(20),
    Quarter INT,
    Year INT,
    StartOfWeek DATE,
    StartOfMonth DATE,
    StartOfYear DATE
);

ALTER TABLE Calendar
ADD StartOfQuater	DATE;

-- Data will be imported into this table.

-- Creating the territory table.


CREATE TABLE TERRITORY(

TerritoryKey		SMALLINT NOT NULL,
REGION				VARCHAR(50),
COUNTRY				VARCHAR(50),
CONTINENT			VARCHAR(50),
PRIMARY KEY (TerritoryKey)
);



INSERT INTO TERRITORY VALUES 
(1,"Northwest","United States","North America"),
(2,"Northeast","Unoted States","North America"),
(3,"Central","Unoted States","North America"),
(4,"Sothwest","United States","North America"),
(5,"Southeast","United States","North America"),
(6,"Canada","Canada","North Americs"),
(7,"France","France","Europe"),
(8,"Germany","Germany","Europe"),
(9,"Australia","Australia","Pacific"),
(10,"United Kingdom","United Kingdom","Europe");



UPDATE TERRITORY
SET COUNTRY = 'United States'
WHERE TerritoryKey = 2 OR TerritoryKey = 3;


SELECT * FROM TERRITORY;

-- sales table 

CREATE TABLE SALES(

OrderDate		DATE,
StockDate		DATE,
OrderNumber		SMALLINT NOT NULL,
ProductKey		SMALLINT NOT NULL,
CustomerID		INT NOT NULL,
TerritoryKey	SMALLINT NOT NULL,
OrderItem		INT,
OrderQuantity	INT,
FOREIGN KEY (ProductKey) REFERENCES PRODUCT(ProductKey),
FOREIGN KEY (CustomerID) REFERENCES CUSTOMERS(CustomerID),
FOREIGN KEY (TerritoryKey)REFERENCES TERRITORY(TerritoryKey)	

);



-- creating the returns table.


CREATE TABLE RETURNS(

ReturnDate		DATE,
ProductKey		SMALLINT NOT NULL,
TerritoryKey	SMALLINT NOT NULL,
ReturnQuantity	INT,
FOREIGN KEY (ProductKey) REFERENCES PRODUCT(ProductKey),
FOREIGN KEY (TerritoryKey)REFERENCES TERRITORY(TerritoryKey)	

);




-- Upload  done 
-- Data Manipulation:
-- Data Querying:
-- Data Filtering:






