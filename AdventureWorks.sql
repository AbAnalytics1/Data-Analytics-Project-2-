CREATE DATABASE Adventure_Works;
USE Adventure_Works;

-- Next create tables
-- Creating customer Table

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
