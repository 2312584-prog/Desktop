create database ChuDe5
go
use ChuDe5
go
create table Category
(ID int primary key not null identity(1,1),
[Name]nvarchar(100) not null)

insert into Category values(N'Khai vi')
insert into Category values(N'Hải sản')
insert into Category values(N'Gà')
insert into Category values(N'Cơm')
insert into Category values(N'Thịt')
insert into Category values(N'Rau')
insert into Category values(N'Canh')
insert into Category values(N'Lẩu')
insert into Category values(N'Bia')
insert into Category values(N'Nước ngọt')
insert into Category values(N'Cà phê')
insert into Category values(N'Trà đá')
insert into Category values(N'Nướng')

CREATE TABLE Food (
    ID INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100) NOT NULL,
    Unit NVARCHAR(20),
    FoodCategoryID INT,
    Price INT,
    Notes NVARCHAR(200),
    FOREIGN KEY (FoodCategoryID) REFERENCES Category(ID)
)

INSERT INTO Food (Name, Unit, FoodCategoryID, Price, Notes)
VALUES
(N'Ếch thui rơm', N'Đĩa', 3, 70000, N''),
(N'Sò lông nướng mỡ hành', N'Đĩa', 3, 80000, N''),
(N'Càng cua hấp', N'Đĩa', 3, 100000, N''),
(N'Cơm chiên Dương Châu', N'Đĩa', 1, 35000, N''),
(N'Coca-Cola', N'Chai', 2, 15000, N''),
(N'Ba chỉ nướng mật ong', N'Đĩa', 4, 90000, N'');

CREATE TABLE BillDetails (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    BillID INT,
    FoodID INT,
    Quantity INT,
    FOREIGN KEY (FoodID) REFERENCES Food(ID)
)

INSERT INTO Food (Name, Unit, FoodCategoryID, Price)
VALUES 
(N'Cơm chiên', N'đĩa', 1, 45000),
(N'Phở bò', N'tô', 1, 40000),
(N'Cà phê sữa', N'ly', 2, 25000),
(N'Nước cam', N'ly', 2, 30000);

INSERT INTO BillDetails (BillID, FoodID, Quantity)
VALUES 
(1, 7, 5),  
(2, 7, 3),  
(3, 8, 2);  

go
CREATE PROCEDURE [InsertFood]
    @ID int OUTPUT,
    @Name nvarchar(1000),
    @Unit nvarchar(100),
    @FoodCategoryID int,
    @Price int,
    @Notes nvarchar(3000)
AS
BEGIN
    INSERT INTO [Food] ([Name], [Unit], [FoodCategoryID], [Price], [Notes])
    VALUES (@Name, @Unit, @FoodCategoryID, @Price, @Notes);

    SELECT @ID = SCOPE_IDENTITY();
END
GO

CREATE PROCEDURE [UpdateFood]
    @ID int,
    @Name nvarchar(1000),
    @Unit nvarchar(100),
    @FoodCategoryID int,
    @Price int,
    @Notes nvarchar(3000)
AS
BEGIN
    UPDATE [Food]
    SET [Name] = @Name,
        [Unit] = @Unit,
        [FoodCategoryID] = @FoodCategoryID,
        [Price] = @Price,
        [Notes] = @Notes
    WHERE ID = @ID;

    IF @@ERROR <> 0
        RETURN 0;
    ELSE
        RETURN 1;
END
GO
