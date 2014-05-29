USE LearningSystemDB
go

CREATE TABLE Class
(
	ClassID int Identity(1,1) NOT NULL PRIMARY KEY,
	Name varchar(30) NOT NULL,
	[Description] varchar(1000) NULL,
	StartDate DATETIME NOT NULL,
	EndDate DATETIME NOT NULL,
	Archived BIT,
	GradeLevel INT NOT NULL

)

CREATE TABLE AssignmentType
(
	AssignmentTypeID INT Identity(1,1) NOT NULL PRIMARY KEY,
	[Type] VARCHAR (30)
)


CREATE TABLE Assignment
(
	AssignmentID INT Identity(1,1) NOT NULL PRIMARY KEY,
	Name VARCHAR(30) NOT NULL,
	[Description] VARCHAR(1000) NULL,
	DueDate DATETIME NOT NULL,
	PointsPossible INT NOT NULL,
	AssignmentTypeID INT  NOT NULL FOREIGN KEY REFERENCES AssignmentType(AssignmentTypeID)
)

CREATE TABLE UserType
(
	UserTypeID INT Identity(1,1) NOT NULL PRIMARY KEY,
	[Type] VARCHAR(30) NOT NULL
)

