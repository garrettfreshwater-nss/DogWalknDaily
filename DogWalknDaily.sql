CREATE TABLE Neighborhood (
	Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
	[Name] VARCHAR(55) NOT NULL
);

CREATE TABLE [Owner] (
	Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
	[Name] VARCHAR(55) NOT NULL,
	[Address] VARCHAR(255) NOT NULL,
	NeighborhoodId INTEGER,
	Phone VARCHAR(55) NOT NULL,
	CONSTRAINT FK_Owner_Neighborhood FOREIGN KEY (NeighborhoodId) REFERENCES Neighborhood(Id)
);

CREATE TABLE Dog (
	Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
	[Name] VARCHAR(55) NOT NULL,
	OwnerId INTEGER NOT NULL,
	Breed VARCHAR(55) NOT NULL,
	Notes VARCHAR(255),
	CONSTRAINT FK_Dog_Owner FOREIGN KEY (OwnerId) REFERENCES [Owner](Id)
);

CREATE TABLE Walker (
	Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
	[Name] VARCHAR(55) NOT NULL,
	NeighborhoodId INTEGER,
	CONSTRAINT FK_Walker_Neighborhood FOREIGN KEY (NeighborhoodId) REFERENCES Neighborhood(Id)
);

CREATE TABLE Walks (
	Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
	[Date] DATETIME NOT NULL,
	Duration INTEGER NOT NULL,
	WalkerId INTEGER NOT NULL,
	DogId INTEGER NOT NULL,
	CONSTRAINT FK_Walks_Walker FOREIGN KEY (WalkerId) REFERENCES Walker(Id),
	CONSTRAINT FK_Walks_Dog FOREIGN KEY (DogId) REFERENCES Dog(Id)
);


-- Add some data to the tables

INSERT INTO Neighborhood ([Name]) VALUES ('Aberdale');
INSERT INTO Neighborhood ([Name]) VALUES ('Aron City');
INSERT INTO Neighborhood ([Name]) VALUES ('Bayport');

INSERT INTO [Owner] ([Name], [Address], NeighborhoodId, Phone) VALUES ('John Sanchez', '355 Main St', 1, '(615)-553-2456');
INSERT INTO [Owner] ([Name], [Address], NeighborhoodId, Phone) VALUES ('Patricia Young', '233 Washington St', 2, '(615)-448-5521');
INSERT INTO [Owner] ([Name], [Address], NeighborhoodId, Phone) VALUES ('Robert Brown', '145 Sixth Ave', 3, '(615)-323-7711');
INSERT INTO [Owner] ([Name], [Address], NeighborhoodId, Phone) VALUES ('Jennifer Wilson', '495 Cedar Rd', 1, '(615)-919-8944');
INSERT INTO [Owner] ([Name], [Address], NeighborhoodId, Phone) VALUES ('Michael Moore', '88 Oak St', 2, '(615)-556-7273');
INSERT INTO [Owner] ([Name], [Address], NeighborhoodId, Phone) VALUES ('Linda Green', '53 Lake Cir', 3, '(615)-339-4488');
INSERT INTO [Owner] ([Name], [Address], NeighborhoodId, Phone) VALUES ('William Anderson', '223 Hill St', 1, '(615)-232-6768');

INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) VALUES ('The Black Album', '11/14/2003', 2268, 'Def Jam', 27, 13);
INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) VALUES ('A Strange Arrangement', '09/08/2009', 2082, 'Stones Throw Records', 19, 1);
INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) VALUES ('How Do You Do', '10/11/2011', 2357, 'Stones Throw Records', 19, 1);
INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) VALUES ('Where Does This Door Go', '06/16/2013', 3114, 'Stones Throw Records', 19, 1);
INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) VALUES ('Revolver', '08/05/1966', 2083, 'Parlophone', 6, 2);
INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) VALUES ('Sgt. Pepper''s Lonely Hearts Club Band', '06/01/1967', 2392, 'Stones Throw Records', 6, 2);
INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) VALUES ('Magical Mystery Tour', '11/27/1967', 1148, 'Stones Throw Records', 6, 2);
INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) VALUES ('Screaming for Vengeance', '06/17/1982', 2322, 'Columbia', 1, 2);
INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) VALUES ('Point of Entry', '02/26/1981', 2262, 'Columbia', 1, 2);
INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) VALUES ('Defenders of the Faith', '01/04/1984', 2383, 'Columbia', 1, 2);
INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) VALUES ('Round About Midnight', '03/06/1957', 2327, 'Columbia', 24, 4);
INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) VALUES ('Miles Ahead', '10/21/1957', 2132, 'Columbia', 24, 4);
INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) VALUES ('Milestones', '09/02/1958', 2856, 'Columbia', 24, 4);
INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) VALUES ('Moanin'' in the Moonlight', '05/14/1959', 2033, 'Chess', 7, 3);
INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) VALUES ('Howlin'' Wolf', '10/21/1957', 1917, 'Chess', 7, 3);
INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) VALUES ('The Howlin'' Wolf Album', '09/02/1969', 2459, 'Chess', 7, 3);
INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) VALUES ('Eliminator', '3/23/1983', 2668, 'Warner Bros.', 3, 2);
INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) VALUES ('Afterburner', '1/1/2011', 417, 'Warner Bros.', 3, 2);
INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) VALUES ('Tres Hombres', '6/14/1979', 321, 'Warner Bros.', 3, 2);
INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) VALUES ('Damaged', '12/05/1981', 2098, 'SST', 8, 9);
INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) VALUES ('TV Party', '07/12/1982', 409, 'SST', 8, 9);
INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) VALUES ('Everything Went Black', '12/03/1982', 3718, 'SST', 8, 9);

INSERT INTO Dog ([Name], OwnerId, Breed) VALUES ('Ninni', 1, 'Rottweiler');
INSERT INTO Dog ([Name], OwnerId, Breed) VALUES ('Kuma', 1, 'Rottweiler');
INSERT INTO Dog ([Name], OwnerId, Breed) VALUES ('Remy', 2, 'Greyhound');
INSERT INTO Dog ([Name], OwnerId, Breed) VALUES ('Xyla', 3, 'Dalmation');
INSERT INTO Dog ([Name], OwnerId, Breed) VALUES ('Chewy', 3, 'Beagle');
INSERT INTO Dog ([Name], OwnerId, Breed) VALUES ('Groucho', 4, 'Dalmation');
INSERT INTO Dog ([Name], OwnerId, Breed) VALUES ('Finley', 5, 'Golden Retriever');
INSERT INTO Dog ([Name], OwnerId, Breed) VALUES ('Casper', 6, 'Golden Retriever');
INSERT INTO Dog ([Name], OwnerId, Breed) VALUES ('Bubba', 7, 'English Bulldog');
INSERT INTO Dog ([Name], OwnerId, Breed) VALUES ('Zeus', 7, 'Schnauzer');

INSERT INTO Walker ([Name], NeighborhoodId) VALUES ('Paul Thompson', 1);
INSERT INTO Walker ([Name], NeighborhoodId) VALUES ('Margaret Phillips', 1);
INSERT INTO Walker ([Name], NeighborhoodId) VALUES ('Anthony Gray', 2);
INSERT INTO Walker ([Name], NeighborhoodId) VALUES ('Melissa Perez', 3);

INSERT INTO Walks ([Date], Duration, WalkerId, DogId) VALUES ('2020-03-17 17:30:00', 1200, 1, 11);
INSERT INTO Walks ([Date], Duration, WalkerId, DogId) VALUES ('2020-03-17 17:30:00', 1200, 1, 12);
INSERT INTO Walks ([Date], Duration, WalkerId, DogId) VALUES ('2020-03-15 16:00:00', 900, 2, 19);
INSERT INTO Walks ([Date], Duration, WalkerId, DogId) VALUES ('2020-03-18 08:30:00', 1800, 2, 16);
INSERT INTO Walks ([Date], Duration, WalkerId, DogId) VALUES ('2020-03-15 12:00:00', 1750, 3, 13);
INSERT INTO Walks ([Date], Duration, WalkerId, DogId) VALUES ('2020-03-19 09:00:00', 1275, 3, 17);
INSERT INTO Walks ([Date], Duration, WalkerId, DogId) VALUES ('2020-03-16 13:30:00', 2000, 4, 14);
INSERT INTO Walks ([Date], Duration, WalkerId, DogId) VALUES ('2020-03-16 13:30:00', 2000, 4, 15);

-- BLOCK: CREATE TABLES AND DATA

-- Write a query to return all owners names and the name of their neighborhood.
SELECT o.[Name], n.[Name]
FROM [Owner] o
LEFT JOIN Neighborhood n ON o.NeighborhoodId = n.Id