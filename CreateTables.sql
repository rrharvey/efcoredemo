CREATE TABLE [dbo].[Authors]
(
  [AuthorId] NVARCHAR(100) NOT NULL,
  [Name] NVARCHAR(100) NULL,
  CONSTRAINT PK_Authors PRIMARY KEY (AuthorId)
)
GO

CREATE TABLE [dbo].[Books]
(
  [Id] INT NOT NULL IDENTITY,
  [WrittenBy] NVARCHAR(100) NOT NULL,
  [Title] NVARCHAR(100) NOT NULL,
  CONSTRAINT PK_Books PRIMARY KEY (Id),
  CONSTRAINT FK_Books_Author FOREIGN KEY ([WrittenBy]) REFERENCES [Authors] ([AuthorId])
)
GO

INSERT INTO [Authors] ([AuthorId], [Name]) VALUES ('hawking', 'Hawking, Stephen')
INSERT INTO [Authors] ([AuthorId], [Name]) VALUES ('steinbeck', 'Steinbeck, John')
GO

INSERT INTO [Books] ([WrittenBy], [Title]) VALUES ('hawking', 'God Created the Integers')
INSERT INTO [Books] ([WrittenBy], [Title]) VALUES ('hawking', 'The Theory of Everything')
INSERT INTO [Books] ([WrittenBy], [Title]) VALUES ('hawking', 'A Brief History of Time')
INSERT INTO [Books] ([WrittenBy], [Title]) VALUES ('steinbeck', 'The Winter of Our Discontent')
INSERT INTO [Books] ([WrittenBy], [Title]) VALUES ('steinbeck', 'Burning Bright')
INSERT INTO [Books] ([WrittenBy], [Title]) VALUES ('steinbeck', 'A Life in Letters')
GO
