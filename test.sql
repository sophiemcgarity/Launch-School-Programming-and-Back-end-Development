create table Buildings(
	buildingid int identity(1,1) not null,
	building varchar(100) null,
	length int not null,
  height int not null,
	width int not null,
  cost decimal(10,2) null,
	constraint [PK_Buildings] primary key clustered(buildingid asc) on [primary]
)

insert into Buildings(building, length, height, width, cost)
values
('Hut', 5, 5, 5, 10),
('Mansion', 20, 50, 20, 300000),
('Office', 10, 30, 10, 50000)

create table BuildingParts(
	PartID int identity(1,1) not null,
	PartName varchar(50) not null,
	constraint [PK_Parts] primary key clustered (PartID asc)
)

insert into BuildingParts(PartName)
values
('Wood Plank'),
('Stick'),
('Metal Bar'),
('Couch'),
('Cement Wall'),
('Stair Case')

create table BuildingXParts(
	BuildingID int not null,
	PartID int not null,
	Quantity int not null,
	constraint [FK_Building] foreign key (BuildingID) references Buildings (BuildingID),
  constraint [FK_Parts] foreign key (PartID) references BuildingParts (PartID)
)

-- 1)
INSERT INTO BuildingXParts(BuildingID, PartID, Quantity)
VALUES
(1, 2, 3),
(1, 1, 4),
(2, 3, 10),
(2, 4, 6),
(2, 6, 2),
(3, 5, 5),
(3, 3, 2)

-- 2)
SELECT Buildings.building,
       BuildingParts.PartName, 
       BuildingXParts.Quantity 
FROM Buildings 
INNER JOIN BuildingXParts ON (BuildingXParts.BuildingID = Buildings.BuildingID)
INNER JOIN BuildingParts ON (BuildingParts.PartID = BuildingXParts.PartID)
WHERE building = 'Mansion';

-- 3)
SELECT * FROM BuildingParts
WHERE BuildingParts.PartID NOT IN 
(
  SELECT BuildingXParts.PartID FROM BuildingXParts        
  INNER JOIN BuildingParts ON (BuildingParts.PartID = BuildingXParts.PartID)
  INNER JOIN Buildings ON (BuildingXParts.BuildingID = Buildings.BuildingID)
  WHERE Buildings.building = 'Mansion'
);

-- 4)
SELECT Buildings.building,
       sum(BuildingXParts.Quantity) AS total_parts
FROM Buildings 
INNER JOIN BuildingXParts ON (BuildingXParts.BuildingID = Buildings.BuildingID)
INNER JOIN BuildingParts ON (BuildingParts.PartID = BuildingXParts.PartID)
GROUP BY building;

-- 5)
ALTER TABLE BuildingXParts
  DROP CONSTRAINT FK_Building;

ALTER TABLE BuildingXParts
  ADD CONSTRAINT FK_Building_Cascade
  FOREIGN KEY (BuildingID) REFERENCES Buildings (BuildingID) ON DELETE CASCADE;

DELETE FROM Buildings
WHERE building = 'Mansion';
