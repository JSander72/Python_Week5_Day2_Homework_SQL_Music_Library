-- Create the Albums table
CREATE TABLE Albums (
    AlbumID INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(255) NOT NULL,
    ArtistID INT,
    GenreID INT,
    ReleaseYear YEAR,
    TotalTracks INT,
    Duration INT -- Total duration in minutes (added in Task 2)
);

-- Create the Genre table (assuming it doesn't exist yet)
CREATE TABLE Genre (
    GenreID INT PRIMARY KEY AUTO_INCREMENT,
    GenreName VARCHAR(100) NOT NULL
);

-- Create the Artists table (assuming it doesn't exist yet)
CREATE TABLE Artists (
    ArtistID INT PRIMARY KEY AUTO_INCREMENT,
    ArtistName VARCHAR(255) NOT NULL
);

-- Add the duration column to the Albums table
ALTER TABLE Albums
ADD COLUMN Duration INT;

-- Add foreign key constraints to the Albums table
ALTER TABLE Albums
ADD CONSTRAINT FK_Albums_Artists FOREIGN KEY (ArtistID) REFERENCES Artists(ArtistID),
ADD CONSTRAINT FK_Albums_Genre FOREIGN KEY (GenreID) REFERENCES Genre(GenreID);
