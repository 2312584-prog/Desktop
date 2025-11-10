Create database [Restaurant-Management]

USE [Restaurant-Management]
GO

drop database [Restaurant-Management]

select * from Account
select * from RoleAccount
select * from Rolee
select * from Ban
select * from BillDetails
select * from Bills
select * from Food  
select * from Category

--drop table Account
--drop table RoleAccount
--drop table Rolee
--drop table Ban
--drop table BillDetails
--drop table Bills
--drop table Food
--drop table Category

select * from Account
select * from RoleAccount
select * from Rolee
Select Account.AccountName, Password, FullName, Email, Tell, DateCreated, Actived from Account, RoleAccount where Account.AccountName = RoleAccount.AccountName and Actived = 0
select c.AccountName, c.Password, c.FullName, c.Email, c.Tell, c.DateCreated, a.Actived from RoleAccount a, Rolee b, Account c  where a.RoleID = b.ID and a.AccountName = c.AccountName and b.RoleName = N'Thu ngân'

/****** Object:  Table [dbo].[Account]    Script Date: 10/11/2025 12:50:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[AccountName] [nvarchar](100) NOT NULL,
	[Password] [nvarchar](200) NOT NULL,
	[FullName] [nvarchar](1000) NOT NULL,
	[Email] [nvarchar](1000) NULL,
	[Tell] [nvarchar](200) NULL,
	[DateCreated] [smalldatetime] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[AccountName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ban]    Script Date: 10/11/2025 12:50:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ban](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](1000) NULL,
	[Status] [int] NOT NULL,
	[Capacity] [int] NULL,
 CONSTRAINT [PK_Ban] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BillDetails]    Script Date: 10/11/2025 12:50:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BillDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceID] [int] NOT NULL,
	[FoodID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_BillDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bills]    Script Date: 10/11/2025 12:50:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bills](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](1000) NOT NULL,
	[TableID] [int] NOT NULL,
	[Amount] [int] NOT NULL,
	[Discount] [float] NULL,
	[Tax] [float] NULL,
	[Status] [bit] NOT NULL,
	[CheckoutDate] [smalldatetime] NULL,
	[Account] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Bills] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 10/11/2025 12:50:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](1000) NOT NULL,
	[Type] [int] NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Food]    Script Date: 10/11/2025 12:50:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Food](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](1000) NOT NULL,
	[Unit] [nvarchar](100) NOT NULL,
	[FoodCategoryID] [int] NOT NULL,
	[Price] [int] NOT NULL,
	[Notes] [nvarchar](3000) NULL,
    	[IsDeleted] [bit] NOT NULL,

 CONSTRAINT [PK_Food] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[RoleAccount]    Script Date: 10/11/2025 12:50:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleAccount](
	[RoleID] [int] NOT NULL,
	[AccountName] [nvarchar](100) NOT NULL,
	[Actived] [bit] NOT NULL,
	[Notes] [nvarchar](3000) NULL,
 CONSTRAINT [PK_RoleAccount] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC,
	[AccountName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rolee]    Script Date: 10/11/2025 12:50:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rolee](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](1000) NOT NULL,
	[Path] [nvarchar](3000) NULL,
	[Notes] [nvarchar](3000) NULL,
 CONSTRAINT [PK_Rolee] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

select A.Name from Food A, Category B where A.FoodCategoryID = B.ID

INSERT [dbo].[Account] ([AccountName], [Password], [FullName], [Email], [Tell], [DateCreated]) VALUES
(N'Lan', N'Lan123', N'Trần Thị Lan', N'lan@gmail.com', N'0901111222', CAST(N'2023-03-10T00:00:00' AS SmallDateTime)),
(N'Ngọc', N'Ngoc123', N'Phạm Thị Ngọc', N'ngoc@gmail.com', N'0902222333', CAST(N'2022-09-05T00:00:00' AS SmallDateTime)),
(N'Trung', N'Trung123', N'Lê Hữu Trung', N'trung@gmail.com', N'0903333444', CAST(N'2024-01-01T00:00:00' AS SmallDateTime)),
(N'Hà', N'Ha123', N'Nguyễn Thị Hà', N'ha@gmail.com', N'0904444555', CAST(N'2023-12-12T00:00:00' AS SmallDateTime)),
(N'Như', N'Nhu123', N'Phạm Nguyễn Quỳnh Như', N'nhu@gmail.com', N'0905555666', CAST(N'2023-04-02T00:00:00' AS SmallDateTime)),
(N'Quang', N'Quang123', N'Trần Hữu Quang', N'quang@gmail.com', N'0906666777', CAST(N'2024-05-01T00:00:00' AS SmallDateTime)),
(N'Hương', N'Huong123', N'Lê Thị Hương', N'huong@gmail.com', N'0907777888', CAST(N'2021-09-25T00:00:00' AS SmallDateTime)),
(N'Thảo', N'Thao123', N'Nguyễn Thị Thảo', N'thao@gmail.com', N'0908888999', CAST(N'2022-11-15T00:00:00' AS SmallDateTime)),
(N'Tài', N'Tai123', N'Phan Văn Tài', N'tai@gmail.com', N'0909999000', CAST(N'2024-02-20T00:00:00' AS SmallDateTime)),
(N'Ly', N'Ly123', N'Đỗ Mỹ Ly', N'ly@gmail.com', N'0911111222', CAST(N'2023-07-07T00:00:00' AS SmallDateTime)),
(N'Hiệp', N'Hiep123', N'Nguyễn Trung Hiệp', N'hiep@gmail.com', N'0123456789', CAST(N'2023-01-01T00:00:00' AS SmallDateTime)),
(N'Minh', N'Minh123', N'Lê Nguyễn Đức Minh', N'Minh@gmail.com', N'0987654321', CAST(N'2024-02-02T00:00:00' AS SmallDateTime)),
(N'Tuấn', N'Tuan123', N'Nguyễn Lê Anh Tuấn', N'Tuan@gmail.com', N'0845152447', CAST(N'2021-11-01T00:00:00' AS SmallDateTime));
GO
SET IDENTITY_INSERT [dbo].[Ban] ON
INSERT [dbo].[Ban] ([ID], [Name], [Status], [Capacity]) VALUES
(1, N'Table 1', 1, 4),
(2, N'Table 2', 1, 3),
(3, N'Table 3', 1, 1),
(4, N'Table 4', 0, 6),
(5, N'Table 5', 0, 15),
(6, N'Table 6', 1, 4),
(7, N'Table 7', 0, 8),
(8, N'Table 8', 1, 10),
(9, N'Table 9', 0, 2),
(10, N'Table 10', 1, 5),
(11, N'Table 11', 1, 3),
(12, N'Table 12', 0, 6),
(13, N'Table 13', 1, 12),
(14, N'Table 14', 0, 15),
(15, N'Table 15', 1, 20);
SET IDENTITY_INSERT [dbo].[Ban] OFF
GO
SET IDENTITY_INSERT [dbo].[BillDetails] ON 
INSERT [dbo].[BillDetails] ([ID], [InvoiceID], [FoodID], [Quantity]) VALUES
(1, 1, 1, 20),
(2, 1, 4, 2),
(3, 1, 5, 2),
(4, 1, 6, 3),
(5, 2, 3, 5),
(6, 2, 5, 1),
(7, 3, 2, 2),
(8, 3, 5, 4),
(9, 8, 9, 2),
(10, 8, 10, 3),
(11, 9, 13, 1),
(12, 9, 14, 2),
(13, 10, 11, 2),
(14, 11, 15, 3),
(15, 12, 16, 2),
(16, 13, 17, 4),
(17, 14, 18, 1),
(18, 17, 12, 2);

SET IDENTITY_INSERT [dbo].[BillDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Bills] ON 

INSERT [dbo].[Bills] ([ID], [Name], [TableID], [Amount], [Discount], [Tax], [Status], [CheckoutDate], [Account]) 
VALUES
(1, N'Tuấn', 1, 120000, 5, 8, 1, CAST(N'2025-08-21T00:00:00' AS SmallDateTime), N'Tuấn'),
(2, N'Hiếu', 2, 1600000, 10, 10, 0, CAST(N'2025-05-31T00:00:00' AS SmallDateTime), N'Hiếu'),
(3, N'Hiệp', 3, 900000, 0, 8, 1, CAST(N'2025-10-10T00:00:00' AS SmallDateTime), N'Hiệp'),
(4, N'Lan', 4, 650000, 15, 5, 1, CAST(N'2025-07-12T00:00:00' AS SmallDateTime), N'Lan'),
(5, N'Như', 5, 2250000, 10, 10, 1, CAST(N'2025-09-01T00:00:00' AS SmallDateTime), N'Ngọc'),
(6, N'Bình', 3, 1750000, 0, 8, 0, CAST(N'2025-06-18T00:00:00' AS SmallDateTime), N'Bình'),
(7, N'Trung', 5, 320000, 5, 5, 1, CAST(N'2025-10-05T00:00:00' AS SmallDateTime), N'Trung'),
(8, N'Lan', 6, 750000, 5, 8, 1, CAST(N'2025-08-15T00:00:00' AS SmallDateTime), N'Lan'),
(9, N'Ngọc', 7, 1350000, 0, 10, 1, CAST(N'2025-09-22T00:00:00' AS SmallDateTime), N'Ngọc'),
(10, N'Trung', 8, 980000, 5, 8, 1, CAST(N'2025-06-30T00:00:00' AS SmallDateTime), N'Trung'),
(11, N'Hà', 9, 450000, 0, 5, 1, CAST(N'2025-10-01T00:00:00' AS SmallDateTime), N'Hà'),
(12, N'Bình', 10, 2100000, 10, 8, 1, CAST(N'2025-07-05T00:00:00' AS SmallDateTime), N'Bình'),
(13, N'Quang', 11, 1230000, 0, 8, 0, CAST(N'2025-08-09T00:00:00' AS SmallDateTime), N'Quang'),
(14, N'Hương', 12, 1760000, 5, 10, 1, CAST(N'2025-09-01T00:00:00' AS SmallDateTime), N'Hương'),
(15, N'Thảo', 13, 890000, 0, 5, 1, CAST(N'2025-08-20T00:00:00' AS SmallDateTime), N'Thảo'),
(16, N'Tài', 14, 1650000, 10, 8, 1, CAST(N'2025-10-10T00:00:00' AS SmallDateTime), N'Tài'),
(17, N'Ly', 15, 740000, 0, 10, 1, CAST(N'2025-09-25T00:00:00' AS SmallDateTime), N'Ly');

SET IDENTITY_INSERT [dbo].[Bills] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([ID], [Name], [Type]) VALUES
(1, N'Món rau', 1),
(2, N'Món thịt', 1),
(3, N'Món tinh bột', 1),
(4, N'Nước ngọt', 1),
(5, N'Món cồn', 1),
(6, N'Trái cây', 1),
(7, N'Suối', 1),
(8, N'Bánh', 1),
(9, N'Đồ chay', 1),
(10, N'Hải sản', 1),
(11, N'Nước trái cây', 1),
(12, N'Bánh ngọt', 1),
(13, N'Cà phê', 1),
(14, N'Món Âu', 1),
(15, N'Món Á', 1),
(16, N'Nước ép', 1),
(17, N'Món nướng', 1),
(18, N'Kem', 1);

SET IDENTITY_INSERT [dbo].[Category] OFF

GO
SET IDENTITY_INSERT [dbo].[Food] ON 

INSERT [dbo].[Food] ([ID], [Name], [Unit], [FoodCategoryID], [Price], [Notes], [IsDeleted]) VALUES
(1, N'Bia', N'lon', 5, 24000, N'Cấm trẻ dưới 18', 0),
(2, N'Rượu', N'lít', 5, 100000, N'Bán khách quen', 0),
(3, N'Cháo trắng', N'tô', 3, 10000, N'Bán thêm', 0),
(4, N'Rau trộn', N'dĩa', 1, 120000, NULL, 0),
(5, N'Bò nướng tảng', N'dĩa', 2, 60000, NULL, 0),
(6, N'Nước suối', N'chai', 4, 10000, NULL, 0),
(7, N'coca', N'lon', 4, 15500, N'Ngon hon khi uong voi da.', 0),
(8, N'pepsi', N'lon', 4, 15000, N'Ngon hon khi uong voi da.', 0),
(9, N'Cà phê sữa', N'ly', 13, 25000, N'Đậm đà hương vị Việt', 0),
(10, N'Sinh tố bơ', N'ly', 16, 40000, N'Làm từ bơ tươi 100%', 0),
(11, N'Mực nướng muối ớt', N'dĩa', 17, 85000, N'Cay nhẹ', 0),
(12, N'Salad trộn dầu giấm', N'dĩa', 1, 55000, N'Tươi mát', 0),
(13, N'Cá hồi nướng', N'dĩa', 10, 180000, N'Món Âu cao cấp', 0),
(14, N'Bánh flan', N'chén', 12, 20000, N'Thêm caramel', 0),
(15, N'Bún chay', N'tô', 9, 45000, N'Món chay thanh đạm', 0),
(16, N'Kem vani', N'ly', 18, 30000, N'Lạnh ngọt mát', 0),
(17, N'Cơm gà Hải Nam', N'dĩa', 15, 65000, N'Món Á đặc trưng', 0),
(18, N'Tôm hùm nướng', N'dĩa', 10, 350000, N'Món sang trọng', 0);

GO
SET IDENTITY_INSERT [dbo].[Food] OFF

INSERT [dbo].[RoleAccount] ([RoleID], [AccountName], [Actived], [Notes]) VALUES
(1, N'Lan', 1, N'PartTime'),
(2, N'Ngọc', 1, N'Làm lâu'),
(3, N'Trung', 0, N'Lao Công'),
(4, N'Hà', 0, N'Sad thủ'),
(5, N'Như', 0, N'Vợ người ta'),
(6, N'Quang', 1, N'Ca sáng'),
(7, N'Hương', 1, N'Ca chiều'),
(8, N'Thảo', 1, N'Đón khách'),
(9, N'Tài', 1, N'Ca tối'),
(10, N'Ly', 0, N'Nấu món chính'),
(11, N'Hiệp', 0, N'Phụ nấu'),
(12, N'Minh', 0, N'Giám sát'),
(13, N'Tuấn', 1, N'Quản lý kho')

GO
SET IDENTITY_INSERT [dbo].[Rolee] ON 

INSERT [dbo].[Rolee] ([ID], [RoleName], [Path], [Notes]) VALUES
(1, N'Thu ngân', N'v', N'Dọn bàn và bưng món'),
(2, N'Admin', N'v', N'Nấu ăn'),
(3, N'Lao công', N'v', N'Kiểm tra và trang trí món ăn'),
(4, N'Order', N'v', N'Gọi món'),
(5, N'Thu ngân', N'v', N'Thu tiền và in hóa đơn'),
(6, N'Bồi bàn', N'v', N'Phục vụ khách'),
(7, N'Bảo vệ', N'v', N'Giữ xe và bảo an'),
(8, N'Lễ tân', N'v', N'Chào khách và ghi nhận bàn'),
(9, N'Pha chế', N'v', N'Pha đồ uống'),
(10, N'Đầu bếp', N'v', N'Nấu ăn chính'),
(11, N'Phụ bếp', N'v', N'Hỗ trợ đầu bếp'),
(12, N'Quản lý ca', N'v', N'Giám sát nhân viên'),
(13, N'Thủ kho', N'v', N'Quản lý nguyên liệu'),
(14, N'Bảo trì', N'v', N'Sửa chữa thiết bị'),
(15, N'Tạp vụ', N'v', N'Vệ sinh quán');
SET IDENTITY_INSERT [dbo].[Rolee] OFF
GO
ALTER TABLE [dbo].[BillDetails]  WITH CHECK ADD  CONSTRAINT [FK_BillDetails_Bills] FOREIGN KEY([InvoiceID])
REFERENCES [dbo].[Bills] ([ID])
GO
ALTER TABLE [dbo].[BillDetails] CHECK CONSTRAINT [FK_BillDetails_Bills]
GO
ALTER TABLE [dbo].[BillDetails]  WITH CHECK ADD  CONSTRAINT [FK_BillDetails_Food] FOREIGN KEY([FoodID])
REFERENCES [dbo].[Food] ([ID])
GO
ALTER TABLE [dbo].[BillDetails] CHECK CONSTRAINT [FK_BillDetails_Food]
GO
ALTER TABLE [dbo].[Bills]  WITH CHECK ADD  CONSTRAINT [FK_Bills_Ban] FOREIGN KEY([TableID])
REFERENCES [dbo].[Ban] ([ID])
GO
ALTER TABLE [dbo].[Bills] CHECK CONSTRAINT [FK_Bills_Ban]
GO
ALTER TABLE [dbo].[Food]  WITH CHECK ADD  CONSTRAINT [FK_Food_Category] FOREIGN KEY([FoodCategoryID])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[Food] CHECK CONSTRAINT [FK_Food_Category]
GO
ALTER TABLE [dbo].[RoleAccount]  WITH CHECK ADD CONSTRAINT [FK_RoleAccount_Account] FOREIGN KEY([AccountName])
REFERENCES [dbo].[Account] ([AccountName])
GO
ALTER TABLE [dbo].[RoleAccount] CHECK CONSTRAINT [FK_RoleAccount_Account]
GO
ALTER TABLE [dbo].[RoleAccount]  WITH CHECK ADD  CONSTRAINT [FK_RoleAccount_Rolee] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Rolee] ([ID])
GO
ALTER TABLE [dbo].[RoleAccount] CHECK CONSTRAINT [FK_RoleAccount_Rolee]
GO
/****** Object:  StoredProcedure [dbo].[Account_Delete]    Script Date: 10/11/2025 12:50:53 PM ******/

CREATE PROCEDURE [dbo].[Account_Delete]
(
    @Name nvarchar(100)
)
AS
BEGIN
    set nocount on
    if exists (select * from RoleAccount where AccountName = @Name)
    begin
        print N'Không thể xóa vì tồn tại Name Account trong bảng RoleAccount'
        return;
    end
    DELETE FROM Account
    WHERE AccountName = @Name
END
GO
/****** Object:  StoredProcedure [dbo].[Account_Insert]    Script Date: 10/11/2025 12:50:53 PM ******/

create PROCEDURE [dbo].[Account_Insert]
(
    @name nvarchar(100), @password nvarchar(200), @fullname nvarchar(1000),
    @email nvarchar(1000) = NULL, @tell nvarchar(200) = NULL, @datecreated smalldatetime = NULL
)
as
begin
    if not exists (select * from Account where AccountName = @name)
    begin
        insert into Account(AccountName, Password, FullName, Email, Tell, DateCreated)
        values (@name, @password, @fullname, @email, @tell, @datecreated)
    end
    else
    begin
        raiserror(N'Da ton tai account name.', 16, 1)
        return;
    end
end
GO
/****** Object:  StoredProcedure [dbo].[Account_Update]    Script Date: 10/11/2025 12:50:53 PM ******/

CREATE PROCEDURE [dbo].[Account_Update]
    @AccountName NVARCHAR(100), @Password NVARCHAR(200), @FullName NVARCHAR(1000),
    @Email NVARCHAR(1000) = NULL, @Tell NVARCHAR(200) = NULL, @DateCreated SMALLDATETIME = NULL
AS
BEGIN
    SET NOCOUNT ON;
    IF NOT EXISTS (SELECT * FROM Account WHERE AccountName = @AccountName)
    BEGIN
        RAISERROR(N'Tài khoản không tồn tại', 16, 1);
        RETURN;
    END
    UPDATE Account
    SET Password = @Password, FullName = @FullName, Email = @Email,
        Tell = @Tell, DateCreated = @DateCreated
    WHERE AccountName = @AccountName;
END
GO
/****** Object:  StoredProcedure [dbo].[AddRoleWithAssign]    Script Date: 10/11/2025 12:50:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddRoleWithAssign]
    @RoleName NVARCHAR(100),
    @Path NVARCHAR(50) = NULL,
    @Notes NVARCHAR(255) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @NewRoleID INT;

    -- 1. Thêm Role mới
    INSERT INTO Rolee(RoleName, Path, Notes)
    VALUES (@RoleName, @Path, @Notes);

    SET @NewRoleID = SCOPE_IDENTITY();

    -- 2. Gán Role này cho tất cả User hiện có (Active = 0, Notes = NULL)
    INSERT INTO RoleAccount(RoleID, AccountName, Actived, Notes)
    SELECT @NewRoleID, u.AccountName, 0, NULL
    FROM (SELECT DISTINCT AccountName FROM RoleAccount) u;
END;
GO

CREATE PROCEDURE [dbo].[Ban_Delete]
    @ID INT
AS
BEGIN
    SET NOCOUNT ON;
    IF NOT EXISTS (SELECT * FROM Ban WHERE ID = @ID)
    BEGIN
        RAISERROR(N'ID không tồn tại!', 16, 1)
        RETURN;
    END;
    if exists (select * from Bills where TableID = @ID)
    begin
        print N'Không thể xóa vì tồn tại ID table trong bảng Bills'
        return;
    end
    DELETE FROM Ban
    WHERE ID = @ID
END
GO
/****** Object:  StoredProcedure [dbo].[Ban_Insert]    Script Date: 10/11/2025 12:50:53 PM ******/
create PROCEDURE [dbo].[Ban_Insert]
(
    @id int output, @Name NVARCHAR(50), @Status INT, @Capacity INT                   
)
AS
BEGIN
    IF NOT EXISTS (SELECT * FROM Ban WHERE Name = @Name)
    begin
        INSERT INTO Ban(Name, Status, Capacity)
        VALUES (@Name, @Status, @Capacity)

        SET @ID = @@IDENTITY
    end
    else
    begin
        RAISERROR(N'Da ton tai ten ban.', 16, 1)
        RETURN;
    end
END
GO
/****** Object:  StoredProcedure [dbo].[Ban_Update]    Script Date: 10/11/2025 12:50:53 PM ******/
CREATE PROCEDURE [dbo].[Ban_Update]
    @ID INT,
    @Name NVARCHAR(1000) = NULL,
    @Status INT,
    @Capacity INT = NULL
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE Ban
    SET Name = @Name, Status = @Status, Capacity = @Capacity
    WHERE ID = @ID;
END
GO
/****** Object:  StoredProcedure [dbo].[BillDetails_Delete]    Script Date: 10/11/2025 12:50:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BillDetails_Delete]
(
    @IDivc INT, @IDfd INT
)
AS
BEGIN
    set nocount on
    if exists (select * from BillDetails where InvoiceID = @IDivc and FoodID = @IDfd)
    begin
        DELETE FROM BillDetails
        WHERE InvoiceID = @IDivc and FoodID = @IDfd
    end
    else
    begin
        print N'Không tìm thấy InvoiceID và FoodID trong bảng BillDetails'
        return;
    end
END
GO
/****** Object:  StoredProcedure [dbo].[BillDetails_Insert]    Script Date: 10/11/2025 12:50:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[BillDetails_Insert]
(
    @id int output,            
    @invoiceid int, @foodid int, @quantity int                
)
as
begin
    if exists (select * from Bills where ID = @invoiceid)
    begin
        if exists (select * from Food where ID = @foodid)
        begin
            insert into BillDetails(InvoiceID, FoodID, Quantity)
            values (@invoiceid, @foodid, @quantity)

            SET @ID = @@IDENTITY
        end
        else
        begin
            raiserror(N'Khong ton tai food id', 16, 1)
            return;
        end 
    end
    else
    begin
        raiserror(N'Khong ton tai bill id', 16, 1)
        return;
    end
end
GO
/****** Object:  StoredProcedure [dbo].[BillDetails_Update]    Script Date: 10/11/2025 12:50:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BillDetails_Update]
    @ID INT, @InvoiceID INT, @FoodID INT, @Quantity INT
AS
BEGIN
    SET NOCOUNT ON;
    IF NOT EXISTS (SELECT * FROM Bills WHERE ID = @InvoiceID)
    BEGIN
        RAISERROR(N'InvoiceID không tồn tại', 16, 1);
        RETURN;
    END
    IF NOT EXISTS (SELECT * FROM Food WHERE ID = @FoodID)
    BEGIN
        RAISERROR(N'FoodID không tồn tại', 16, 1);
        RETURN;
    END
    UPDATE BillDetails
    SET InvoiceID = @InvoiceID, FoodID = @FoodID, Quantity = @Quantity
    WHERE ID = @ID;
END
GO
/****** Object:  StoredProcedure [dbo].[Bills_Delete]    Script Date: 10/11/2025 12:50:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Bills_Delete]
    @ID INT
AS
BEGIN
    SET NOCOUNT ON;
    IF NOT EXISTS (SELECT * FROM Bills WHERE ID = @ID)
    BEGIN
        PRINT N'Không tìm thấy hóa đơn ID'
        return;
    END
    IF EXISTS (SELECT * FROM BillDetails WHERE InvoiceID = @ID)
    BEGIN
        PRINT N'Không thể xóa vì tồn tại ID invoice trong bảng BillDetails'
        return;
    END
    DELETE FROM Bills
        WHERE ID = @ID;
END;
GO
/****** Object:  StoredProcedure [dbo].[Bills_Insert]    Script Date: 10/11/2025 12:50:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Bills_Insert]
(
    @id int output, @Name nvarchar(1000), @tableid int, @amount int, 
    @discount float = NULL, @tax float = NULL, @status bit, @codate smalldatetime, @account nvarchar(1000)                 
)
AS
BEGIN
    IF EXISTS (SELECT * FROM Ban WHERE ID = @tableid)
    begin
        INSERT INTO Bills(Name, TableID, Amount, Discount, Tax, Status, CheckoutDate, Account)
        VALUES (@Name, @tableid, @amount, @discount, @tax, @status, @codate, @account)

        SET @ID = @@IDENTITY
    end
    else
    begin
        RAISERROR(N'Khong ton tai ID ban.', 16, 1)
        RETURN;
    end
END
GO
/****** Object:  StoredProcedure [dbo].[Bills_Update]    Script Date: 10/11/2025 12:50:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Bills_Update]
    @ID INT, @Name NVARCHAR(1000), @TableID INT, @Amount INT, @Discount FLOAT = NULL,
    @Tax FLOAT = NULL, @Status BIT, @CheckoutDate SMALLDATETIME = NULL, @Account NVARCHAR(100)
AS
BEGIN
    SET NOCOUNT ON;

    IF NOT EXISTS (SELECT * FROM Bills WHERE ID = @ID)
    BEGIN
        RAISERROR(N'ID kHONG TON TAI', 16, 1);
        RETURN;
    END;
    UPDATE Bills
    SET 
        Name = @Name, TableID = @TableID, Amount = @Amount, Discount = @Discount, Tax = @Tax,
        Status = @Status, CheckoutDate = @CheckoutDate, Account = @Account
    WHERE ID = @ID;
END
GO
/****** Object:  StoredProcedure [dbo].[Category_Delete]    Script Date: 10/11/2025 12:50:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Category_Delete]
(
    @ID INT
)
AS
BEGIN
    set nocount on
    if exists (select * from Food where ID = @ID)
    begin
        print N'Không thể xóa vì tồn tại ID Category trong bảng Food'
        return;
    end
    DELETE FROM Category
    WHERE ID = @ID
END
GO
/****** Object:  StoredProcedure [dbo].[Category_Insert]    Script Date: 10/11/2025 12:50:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Category_Insert]
(
    @ID INT OUTPUT,            
    @Name NVARCHAR(1000),      
    @Type INT                   
)
AS
BEGIN
    IF NOT EXISTS (SELECT Name FROM Category WHERE Name = @Name)
        INSERT INTO Category (Name, Type)
        VALUES (@Name, @Type)

        SET @ID = @@IDENTITY
END
GO
/****** Object:  StoredProcedure [dbo].[Category_Update]    Script Date: 10/11/2025 12:50:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Category_Update]
    @ID INT, @Name NVARCHAR(1000), @Type INT
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE Category
    SET 
        Name = @Name, Type = @Type
    WHERE ID = @ID;
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteByID]    Script Date: 10/11/2025 12:50:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[DeleteByID]
(
    @TableName nvarchar(200),  
    @id int                     
)
as
begin
    set nocount on
    declare @sql nvarchar(1000);

    if @TableName = N'Ban'
    begin
        if exists (select * from Bills where TableID = @id)
        begin
            print N'Tồn tại ID bàn trong bảng Bills'
            return;
        end
    end
    else if @TableName = N'Bills'
    begin
        if exists (select * from BillDetails where InvoiceID = @id)
        begin
            print N'Tồn tại ID bill trong bảng BillDetails'
            return;
        end
    end
    else if @TableName = N'Category'
    begin
        if exists (select * from Food where FoodCategoryID = @id)
        begin
            print N'Tồn tại ID category trong bảng Food'
            return;
        end
    end
    else if @TableName = N'Food'
    begin
        if exists (select * from BillDetails where FoodID = @id)
        begin
            print N'Tồn tại ID Food trong bảng BillDetails'
            return;
        end
    end
    else if @TableName = N'Rolee'
    begin
        if exists (select * from RoleAccount where RoleID = @id)
        begin
            print N'Tồn tại ID Role trong bảng RoleAccount'
            return;
        end
    end
    if @TableName = N'Account' or @TableName = N'RoleAccount'
    begin
        print N'Không có ID tăng tự động.'
        return;
    end

    set @sql = 'delete from ' + @TableName + ' where ID = ' + cast(@id as nvarchar);

    exec (@sql);
end;
GO
/****** Object:  StoredProcedure [dbo].[Food_Delete]    Script Date: 10/11/2025 12:50:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Food_Delete]
(
    @ID INT
)
AS
BEGIN
    set nocount on
    if exists (select * from BillDetails where FoodID = @ID)
    begin
        print N'Không thể xóa vì tồn tại ID Food trong bảng BillDetails'
        return;
    end
    DELETE FROM Food
    WHERE ID = @ID
END
GO
/****** Object:  StoredProcedure [dbo].[Food_Insert]    Script Date: 10/11/2025 12:50:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Food_Insert]
(
    @id int output,            
    @name nvarchar(1000), @unit nvarchar(100), @fcid int,      
    @price INT, @notes nvarchar(3000) = NULL                   
)
AS
BEGIN
    IF EXISTS (SELECT * FROM Category WHERE ID = @fcid)
    begin
        INSERT INTO Food(Name, Unit, FoodCategoryID, Price, Notes)
        VALUES (@name, @unit, @fcid, @price, @notes)

        SET @ID = @@IDENTITY
    end
    else
    begin
        raiserror(N'Khong ton tai category id', 16, 1)
        return;
    end
END
GO

exec Food_Insert  0, N'Nuoc gi do', N'Cais', 4, 8000, N'Co mui'

select * from Category
select * from Food

/****** Object:  StoredProcedure [dbo].[Food_Update]    Script Date: 10/11/2025 12:50:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Food_Update]
    @ID INT, @Name NVARCHAR(1000), @Unit NVARCHAR(100),
    @FoodCategoryID INT, @Price INT, @Notes NVARCHAR(3000) = NULL
AS
BEGIN
    SET NOCOUNT ON;
    IF NOT EXISTS (SELECT * FROM Category WHERE ID = @FoodCategoryID)
    BEGIN
        RAISERROR(N'Category ID không tồn tại', 16, 1);
        RETURN;
    END
    UPDATE Food
    SET 
        Name = @Name, Unit = @Unit, FoodCategoryID = @FoodCategoryID,
        Price = @Price, Notes = @Notes
    WHERE ID = @ID;
END
GO

exec Food_Update 9, N'Nuoc co mui', N'Cais', 4, 10000, N'Khai'


/****** Object:  StoredProcedure [dbo].[GetAll]    Script Date: 10/11/2025 12:50:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetAll]
(
    @TableName nvarchar(200)
)
as
begin
    set nocount on
    declare @sql nvarchar(1000)
    set @sql = 'select * from ' + @TableName
    exec (@sql)
end
GO
/****** Object:  StoredProcedure [dbo].[GetByID]    Script Date: 10/11/2025 12:50:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetByID]
(
    @TableName nvarchar(200),  
    @id int                     
)
as
begin
    set nocount on
    declare @sql nvarchar(1000);

    set @sql = 'select * from ' + @TableName + ' where ID = ' + cast(@id as nvarchar);

    exec (@sql);
end;
GO
/****** Object:  StoredProcedure [dbo].[RoleAccount_Delete]    Script Date: 10/11/2025 12:50:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[RoleAccount_Delete]
(
    @IDrl INT, @name nvarchar(100)
)
AS
BEGIN
    set nocount on
    if exists (select * from RoleAccount where RoleID = @IDrl and AccountName = @name)
    begin
        DELETE FROM RoleAccount
        WHERE RoleID = @IDrl and AccountName = @name
    end
    else
    begin
        print N'Không tìm thấy Role ID và Account Name'
        return;
    end
END
GO
/****** Object:  StoredProcedure [dbo].[RoleAccount_Insert]    Script Date: 10/11/2025 12:50:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[RoleAccount_Insert]
(
    @roleid int, @aname nvarchar(100), @actived bit, @notes nvarchar(3000) = NULL               
)
as
begin
    if exists (select * from Rolee where ID = @roleid)
    begin
        if exists (select * from Account where AccountName = @aname)
        begin
            insert into RoleAccount(RoleID, AccountName, Actived, Notes)
            values (@roleid, @aname, @actived, @notes)
        end
        else
        begin
            raiserror(N'Khong ton tai ten account', 16, 1)
            return;
        end 
    end
    else
    begin
        raiserror(N'Khong ton tai role id', 16, 1)
        return;
    end
end
GO
/****** Object:  StoredProcedure [dbo].[RoleAccount_Update]    Script Date: 10/11/2025 12:50:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[RoleAccount_Update]
    @RoleID INT, @AccountName NVARCHAR(100),
    @IsActive BIT, @Notes NVARCHAR(3000) = NULL
AS
BEGIN
    SET NOCOUNT ON;
    IF NOT EXISTS (SELECT * FROM Rolee WHERE ID = @RoleID)
    BEGIN
        RAISERROR(N'RoleID không tồn tại', 16, 1);
        RETURN;
    END
    IF NOT EXISTS (SELECT * FROM Account WHERE AccountName = @AccountName)
    BEGIN
        RAISERROR(N'AccountName không tồn tại', 16, 1);
        RETURN;
    END
    UPDATE RoleAccount
    SET Actived = @IsActive, Notes = @Notes
    WHERE RoleID = @RoleID AND AccountName = @AccountName;
END
GO
/****** Object:  StoredProcedure [dbo].[Rolee_Delete]    Script Date: 10/11/2025 12:50:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Rolee_Delete]
(
    @ID INT
)
AS
BEGIN
    set nocount on
    if exists (select * from RoleAccount where RoleID = @ID)
    begin
        print N'Không thể xóa vì tồn tại ID Role trong bảng RoleAccount'
        return;
    end
    DELETE FROM Rolee
    WHERE ID = @ID
END
GO
/****** Object:  StoredProcedure [dbo].[Rolee_Insert]    Script Date: 10/11/2025 12:50:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Rolee_Insert]
(
    @id int output,            
    @rname nvarchar(1000), @path nvarchar(3000) = NULL, 
    @notes nvarchar(3000) = NULL               
)
as
begin
    if not exists (select * from Rolee where RoleName = @rname)
    begin
        insert into Rolee(RoleName, Path, Notes)
        values (@rname, @path, @notes)

        SET @id = @@IDENTITY
    end
    else
    begin
        raiserror(N'Da ton tai ten role.', 16, 1)
        return;
    end
end
GO
exec Rolee_Insert
/****** Object:  StoredProcedure [dbo].[Rolee_Update]    Script Date: 10/11/2025 12:50:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Rolee_Update]
    @ID INT, @RoleName NVARCHAR(1000),
    @Path NVARCHAR(3000) = NULL,
    @Notes NVARCHAR(3000) = NULL
AS
BEGIN
    SET NOCOUNT ON;
    IF NOT EXISTS (SELECT * FROM Rolee WHERE ID = @ID)
    BEGIN
        RAISERROR(N'Role ID không tồn tại', 16, 1);
        RETURN;
    END
    UPDATE Rolee
    SET RoleName = @RoleName, Path = @Path, Notes = @Notes
    WHERE ID = @ID;
END
GO


create function TimTheoNgay(@ngayBD smalldatetime, @ngayKT smalldatetime) returns table
as
return(
    Select *
    From Bills
    WHERE 
           TRY_CONVERT(DATE, @ngayBD, 103) <= TRY_CONVERT(DATE, CheckoutDate, 103) and 
              TRY_CONVERT(DATE, CheckoutDate, 103)  <= TRY_CONVERT(DATE, @ngayKT, 103)
)
go

drop function TimTheoNgay

Select * from TimTheoNgay(CAST(N'2025-08-21T00:00:00' AS SmallDateTime), CAST(N'2025-10-21T00:00:00' AS SmallDateTime))

-- Thủ tục lấy tất cả dữ liệu bảng Category
CREATE PROCeDURE [dbo].[Category_GetAll]
AS
BEGIN
    SELECT * FROM Category
END
GO

exec Category_GetAll

-- Thủ tục lấy tất cả dữ liệu bảng Food
CREATE PROCEDURE [dbo].[Food_GetAll]
AS
BEGIN
    SELECT * FROM Food
END
GO

exec Food_GetAll

-- Thủ tục thêm, xóa, sửa bảng Category
CREATE PROCEDURE [dbo].[Category_InsertUpdateDelete]
    @ID INT OUTPUT,                -- Biến ID tự tăng, khi thêm xong phải lấy ra
    @Name NVARCHAR(200),           -- Tên
    @Type INT,                     -- Loại
    @Action INT                    -- Biến cho biết thêm, xóa, hay sửa
AS
BEGIN
    IF @Action = 0     -- Thêm dữ liệu
    BEGIN
        INSERT INTO [Category] ([Name], [Type])
        VALUES (@Name, @Type)
        SET @ID = @@IDENTITY       -- Thiết lập ID tự tăng
    END
    ELSE IF @Action = 1   -- Cập nhật dữ liệu
    BEGIN
        UPDATE [Category]
        SET [Name] = @Name, [Type] = @Type
        WHERE [ID] = @ID
    END
    ELSE IF @Action = 2   -- Xóa dữ liệu
    BEGIN
        DELETE FROM [Category]
        WHERE [ID] = @ID
    END
END
GO

-- Thủ tục thêm, xóa, sửa bảng Food
CREATE PROCEDURE [dbo].[Food_InsertUpdateDelete]
    @ID INT OUTPUT,                -- Biến ID tự tăng, khi thêm xong phải lấy ra
    @Name NVARCHAR(1000),
    @Unit NVARCHAR(100),
    @FoodCategoryID INT,
    @Price INT,
    @Notes NVARCHAR(3000),
    @Action INT                    -- Biến cho biết thêm, xóa, hay sửa
AS
BEGIN
    IF @Action = 0     -- Thêm dữ liệu
    BEGIN
        INSERT INTO [Food] ([Name], [Unit], [FoodCategoryID], [Price], [Notes])
        VALUES (@Name, @Unit, @FoodCategoryID, @Price, @Notes)
        SET @ID = @@IDENTITY
    END
    ELSE IF @Action = 1   -- Cập nhật dữ liệu
    BEGIN
        UPDATE [Food]
        SET [Name] = @Name,
            [Unit] = @Unit,
            [FoodCategoryID] = @FoodCategoryID,
            [Price] = @Price,
            [Notes] = @Notes
        WHERE [ID] = @ID
    END
    ELSE IF @Action = 2   -- Xóa dữ liệu
    BEGIN
        DELETE FROM [Food]
        WHERE [ID] = @ID
    END
END
GO

/****** Object:  StoredProcedure [dbo].[Account_InsertUpdateDelete]    Script Date: 10/31/2025 11:44:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Account_InsertUpdateDelete]
  @AccountName NVARCHAR(100) OUTPUT, @Password NVARCHAR(200), @FullName NVARCHAR(1000),
  @Email NVARCHAR(1000)=NULL, @Tell NVARCHAR(200)=NULL, @DateCreated SMALLDATETIME=NULL,
  @Action INT
AS
BEGIN
  SET NOCOUNT ON;
  IF @Action=0 BEGIN
    IF EXISTS(SELECT 1 FROM Account WHERE AccountName=@AccountName) RAISERROR(N'Đã tồn tại',16,1);
    ELSE INSERT Account(AccountName,Password,FullName,Email,Tell,DateCreated)
         VALUES(@AccountName,@Password,@FullName,@Email,@Tell,@DateCreated);
  END
  ELSE IF @Action=1 BEGIN
    UPDATE Account SET Password=@Password,FullName=@FullName,Email=@Email,Tell=@Tell,DateCreated=@DateCreated
    WHERE AccountName=@AccountName;
  END
  ELSE IF @Action=2 BEGIN
    DELETE Account WHERE AccountName=@AccountName;
  END
END
GO
/****** Object:  StoredProcedure [dbo].[Account_Update]    Script Date: 10/31/2025 11:44:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[Ban_InsertUpdateDelete]    Script Date: 10/31/2025 11:44:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Ban_InsertUpdateDelete]
  @ID INT OUTPUT, @Name NVARCHAR(1000), @Status INT, @Capacity INT=NULL, @Action INT
AS
BEGIN
  SET NOCOUNT ON;
  IF @Action=0 BEGIN
    INSERT Ban(Name,Status,Capacity) VALUES(@Name,@Status,@Capacity);
    SET @ID=SCOPE_IDENTITY();
  END
  ELSE IF @Action=1 BEGIN
    UPDATE Ban SET Name=@Name,Status=@Status,Capacity=@Capacity WHERE ID=@ID;
  END
  ELSE IF @Action=2 BEGIN
    DELETE Ban WHERE ID=@ID;
  END
END
GO

/****** Object:  StoredProcedure [dbo].[BillDetails_InsertUpdateDelete2]    Script Date: 10/31/2025 11:44:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[BillDetails_InsertUpdateDelete2]
  @ID INT OUTPUT, @InvoiceID INT, @FoodID INT, @Quantity INT, @Action INT
AS
BEGIN
  SET NOCOUNT ON;
  IF @Action=0 BEGIN
    INSERT BillDetails(InvoiceID,FoodID,Quantity) VALUES(@InvoiceID,@FoodID,@Quantity);
    SET @ID=SCOPE_IDENTITY();
  END
  ELSE IF @Action=1 BEGIN
    UPDATE BillDetails SET InvoiceID=@InvoiceID,FoodID=@FoodID,Quantity=@Quantity WHERE ID=@ID;
  END
  ELSE IF @Action=2 BEGIN
    DELETE BillDetails WHERE ID=@ID;
  END
END
GO

/****** Object:  StoredProcedure [dbo].[Bills_InsertUpdateDelete2]    Script Date: 10/31/2025 11:44:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Bills_InsertUpdateDelete2]
  @ID INT OUTPUT, @Name NVARCHAR(1000), @TableID INT, @Amount INT,
  @Discount FLOAT=NULL, @Tax FLOAT=NULL, @Status BIT, @CheckoutDate SMALLDATETIME=NULL, @Account NVARCHAR(100),
  @Action INT
AS
BEGIN
  SET NOCOUNT ON;
  IF @Action=0 BEGIN
    INSERT Bills(Name,TableID,Amount,Discount,Tax,Status,CheckoutDate,Account)
    VALUES(@Name,@TableID,@Amount,@Discount,@Tax,@Status,@CheckoutDate,@Account);
    SET @ID=SCOPE_IDENTITY();
  END
  ELSE IF @Action=1 BEGIN
    UPDATE Bills SET Name=@Name,TableID=@TableID,Amount=@Amount,Discount=@Discount,Tax=@Tax,
                     Status=@Status,CheckoutDate=@CheckoutDate,Account=@Account
    WHERE ID=@ID;
  END
  ELSE IF @Action=2 BEGIN
    DELETE Bills WHERE ID=@ID;
  END
END
GO

/****** Object:  StoredProcedure [dbo].[RoleAccount_InsertUpdateDelete2]    Script Date: 10/31/2025 11:44:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[RoleAccount_InsertUpdateDelete2]
  @RoleID INT, @AccountName NVARCHAR(100), @Actived BIT, @Notes NVARCHAR(3000)=NULL, @Action INT
AS
BEGIN
  SET NOCOUNT ON;
  IF @Action=0 BEGIN
    INSERT RoleAccount(RoleID,AccountName,Actived,Notes) VALUES(@RoleID,@AccountName,@Actived,@Notes);
  END
  ELSE IF @Action=1 BEGIN
    UPDATE RoleAccount SET Actived=@Actived,Notes=@Notes WHERE RoleID=@RoleID AND AccountName=@AccountName;
  END
  ELSE IF @Action=2 BEGIN
    DELETE RoleAccount WHERE RoleID=@RoleID AND AccountName=@AccountName;
  END
END
GO

/****** Object:  StoredProcedure [dbo].[Rolee_InsertUpdateDelete2]    Script Date: 10/31/2025 11:44:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Rolee_InsertUpdateDelete2]
  @ID INT OUTPUT, @RoleName NVARCHAR(1000), @Path NVARCHAR(3000)=NULL, @Notes NVARCHAR(3000)=NULL, @Action INT
AS
BEGIN
  SET NOCOUNT ON;
  IF @Action=0 BEGIN
    INSERT Rolee(RoleName,Path,Notes) VALUES(@RoleName,@Path,@Notes);
    SET @ID=SCOPE_IDENTITY();
  END
  ELSE IF @Action=1 BEGIN
    UPDATE Rolee SET RoleName=@RoleName,Path=@Path,Notes=@Notes WHERE ID=@ID;
  END
  ELSE IF @Action=2 BEGIN
    DELETE Rolee WHERE ID=@ID;
  END
END
GO

