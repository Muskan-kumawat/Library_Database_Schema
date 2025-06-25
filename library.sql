create database Library;
USE Library;

CREATE TABLE Authors(
	authorID INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE Books(
	bookID INT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    authorID INT,
    FOREIGN KEY (authorID) REFERENCES Authors(authorID)
);

CREATE TABLE Students(
	studentID INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    class VARCHAR(50)
);

CREATE TABLE IssuedBooks(
	issueID INT PRIMARY KEY,
    studentID INT,
    bookID INT,
    issueDate DATE,
    returnDate DATE,
    FOREIGN KEY (studentID) REFERENCES Students(studentID),
    FOREIGN KEY (bookID) REFERENCES Books(bookID)
);