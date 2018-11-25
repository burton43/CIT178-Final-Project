/*create database TandemStorage
Create Table AppleStorage
(BoxID int Primary Key identity,
Variety Varchar(50) NOT NULL,
Grower Varchar(50) NULL,
DateIn Smalldatetime NOT NULL, 
DateOut smalldatetime null,
BatchID int null);
Create Table Batch
(BatchID int primary key identity,
CiderType Varchar(50) Not Null,
GallonsFilled INt null,
FermentTankID int not null,
DateFilled smalldatetime null,
CarbTankID int null);
Alter Table AppleStorage 
ADD Foreign key (BatchID) references Batch(BatchID)
Create Table Fermentors 
(FermentTankID int primary key identity,
TankDescription Varchar(50) null,
GallonCap int null)
Create Table CarbTanks
(CarbTankID int primary key identity,
TankDescription Varchar(50) null,
GallonCap int null)
Create Table CiderBottles
(BottleRunID int primary Key Identity,
BatchID int null,
DateBottled smalldatetime null,
#ofBottles int null)
Alter Table CiderBottles
Add foreign key (BatchID) references Batch(BatchID)
Create Table CiderCans
(CanRunID int primary key identity, 
BatchID int null,
DateCanned smalldatetime null,
#ofCanCases int null)
Alter Table CiderCans
Add foreign key (BatchID) references Batch(BatchID);
Create Table CiderKegs
(KegRunID int primary key identity,
BatchID int null,
DateKegged smalldatetime null,
#ofsixths int null,
#ofhalves int null)
Alter table CiderKegs
Add foreign key (BatchID) references Batch(BatchID);
Create Table CidertoTRDraft
(TRDraftTransferID int primary key identity,
DateofTransfer smalldatetime null,
BatchID int null,
DraftGallons int null,
LilWoodyGallons int null)
Alter table CidertoTRDraft
Add foreign key (BatchID) references Batch(BatchID);
Create table CidertoTRBackRoom
(TRBackroomTransferID int primary key identity,
DateofTransfer smalldatetime null,
BottleRunID int null,
#ofBottleCases int null,
KegRunID int null,
KegHalfInGallons int null,
KegSixthInGallons int null,
CanRunID int null,
NumberofCanCases int null)
Alter table CidertoTRBackRoom
Add foreign key (BottleRunID) references CiderBottles(BottleRunID)
Alter table CidertoTRBackRoom
Add foreign key (KegRunID) references CiderKegs(KegRunID)
Alter table CidertoTRBackRoom
Add foreign key (CanRunID) references CiderCans(CanRunID);
Create table CidertoLBStorage
(LBTransferID int primary key identity,
DateofTransfer smalldatetime null,
BottleRunID int null,
#ofBottleCases int null,
KegRunID int null,
KegHalfInGallons int null,
KegSixthInGallons int null,
CanRunID int null,
NumberofCanCases int null)
Alter table CidertoLBStorage
Add foreign key (BottleRunID) references CiderBottles(BottleRunID)
Alter table CidertoLBStorage
Add foreign key (KegRunID) references CiderKegs(KegRunID)
Alter table CidertoLBStorage
Add foreign key (CanRunID) references CiderCans(CanRunID);
Create table CidertoRBStorage
(RBSTransferID int primary key identity,
DateofTransfer smalldatetime null,
BottleRunID int null,
#ofBottleCases int null,
KegRunID int null,
KegHalfInGallons int null,
KegSixthInGallons int null,
CanRunID int null,
NumberofCanCases int null)
Alter table CidertoRBStorage
Add foreign key (BottleRunID) references CiderBottles(BottleRunID)
Alter table CidertoRBStorage
Add foreign key (KegRunID) references CiderKegs(KegRunID)
Alter table CidertoRBStorage
Add foreign key (CanRunID) references CiderCans(CanRunID);
INSERT INTO AppleStorage
(Variety, Grower, DateIn, DateOut)
VALUES 
('McIntosh', 'CBO', '2017-9-22', '2018-3-22');
INSERT INTO AppleStorage
(Variety, Grower, DateIn, DateOut)
VALUES 
('RIG', 'Wunch', '2017-9-22', '2018-3-22');
Alter table Batch
Add foreign key (FermentTankID) references Fermentors(FermentTankID)
Alter table Batch
Add foreign key (CarbTankID) references CarbTanks(CarbTankID);
INSERT INTO Fermentors
(TankDescription, GallonCap)
Values
('VanceNorth', 1500);
INSERT INTO CarbTanks
(TankDescription, GallonCap)
VALUES
('VanceNorthCarb', 1500)
INSERT INTO Batch
(CiderType, GallonsFilled, FermentTankID, DateFilled, CarbTankID)
Values
('Smackintosh', 1500, 1, '2018-3-22', 1);
INSERT INTO Fermentors
(TankDescription, GallonCap)
VALUES
('VanceSouth', 1500);
INSERT INTO Fermentors
(TankDescription, GallonCap)
VALUES
('PBCNorth', 1600);
INSERT INTO Fermentors
(TankDescription, GallonCap)
VALUES
('PBCSouth', 1500);
INSERT INTO Fermentors
(TankDescription, GallonCap)
VALUES
('Weymouth', 1800);
INSERT INTO Fermentors
(TankDescription, GallonCap)
VALUES
('TinCanNorth', 500);
INSERT INTO Fermentors
(TankDescription, GallonCap)
VALUES
('TinCanSouth', 500);

INSERT INTO CarbTanks
(TankDescription, GallonCap)
VALUES
('VanceNorthMiddle', 1500);
INSERT INTO Carbtanks
(TankDescription, GallonCap)
VALUES
('VanceSouthMiddle', 1500);
INSERT INTO Carbtanks
(TankDescription, GallonCap)
VALUES
('VanceSouth', 1500);
INSERT INTO CarbTanks
(TankDescription, GallonCap)
VALUES
('SmallGrundy', 1500);
INSERT INTO CarbTanks
(TankDescription, GallonCap)
VALUES
('SmallGrundy2', 1500);
INSERT INTO CarbTanks
(TankDescription, GallonCap)
VALUES
('SmallGrundy3', 1500);
INSERT INTO CarbTanks
(TankDescription, GallonCap)
VALUES
('SmallGrundy4', 1500);*/