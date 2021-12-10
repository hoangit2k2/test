USE [master]
GO
/****** Object:  Database [QLSanPham]    Script Date: 10/12/2021 8:43:44 CH ******/
CREATE DATABASE [QLSanPham]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLSanPham', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\QLSanPham.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QLSanPham_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\QLSanPham_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QLSanPham] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLSanPham].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLSanPham] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLSanPham] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLSanPham] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLSanPham] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLSanPham] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLSanPham] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLSanPham] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLSanPham] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLSanPham] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLSanPham] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLSanPham] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLSanPham] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLSanPham] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLSanPham] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLSanPham] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QLSanPham] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLSanPham] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLSanPham] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLSanPham] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLSanPham] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLSanPham] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLSanPham] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLSanPham] SET RECOVERY FULL 
GO
ALTER DATABASE [QLSanPham] SET  MULTI_USER 
GO
ALTER DATABASE [QLSanPham] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLSanPham] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLSanPham] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLSanPham] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QLSanPham] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLSanPham', N'ON'
GO
USE [QLSanPham]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 10/12/2021 8:43:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[MaChiTietHD] [int] IDENTITY(1,1) NOT NULL,
	[MaHD] [int] NOT NULL,
	[IDSanPham] [int] NOT NULL,
	[SoLuong] [int] NOT NULL DEFAULT ((1)),
	[ThanhTien] [money] NOT NULL,
	[GhiChu] [nvarchar](200) NULL,
 CONSTRAINT [FK_ChiTietHoaDon] PRIMARY KEY CLUSTERED 
(
	[MaChiTietHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 10/12/2021 8:43:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[SoHoaDon] [varchar](15) NOT NULL,
	[NgayTaoHD] [date] NOT NULL DEFAULT (getdate()),
	[MaNhanVien] [int] NOT NULL,
	[MaKhachHang] [int] NOT NULL,
	[TongTien] [money] NOT NULL DEFAULT ((0)),
	[GhiChu] [nvarchar](250) NULL,
 CONSTRAINT [FK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 10/12/2021 8:43:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[TenKhachHang] [nvarchar](100) NULL,
	[DiaChi] [nvarchar](255) NULL,
	[GioiTinh] [bit] NULL DEFAULT ((1)),
	[SoDienThoai] [varchar](11) NULL,
	[LoaiKhachHang] [nvarchar](40) NOT NULL,
	[GhiChu] [nvarchar](250) NULL,
 CONSTRAINT [FK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 10/12/2021 8:43:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoaiSP] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](60) NOT NULL,
	[MoTa] [nvarchar](255) NULL CONSTRAINT [DF_LoaiSanPham_MoTa]  DEFAULT ('ko co'),
 CONSTRAINT [FK_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 10/12/2021 8:43:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNhanVien] [int] IDENTITY(1,1) NOT NULL,
	[TenNhanVien] [nvarchar](80) NOT NULL,
	[DiaChi] [nvarchar](255) NULL,
	[SoDienThoai] [varchar](11) NULL,
	[GioiTinh] [bit] NULL DEFAULT ((0)),
	[ChucVu] [nvarchar](30) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[NgayVaoLam] [date] NOT NULL,
 CONSTRAINT [FK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 10/12/2021 8:43:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SanPham](
	[IDSanPham] [int] IDENTITY(1,1) NOT NULL,
	[MaSP] [varchar](10) NOT NULL,
	[TenSP] [nvarchar](60) NOT NULL,
	[SoLuong] [int] NOT NULL DEFAULT ((1)),
	[DonViTinh] [nvarchar](15) NULL,
	[GiaNhap] [money] NOT NULL DEFAULT ((0)),
	[GiaBan] [money] NOT NULL DEFAULT ((0)),
	[MaLoaiSP] [int] NOT NULL,
	[MoTa] [nvarchar](255) NULL,
 CONSTRAINT [FK_SanPham] PRIMARY KEY CLUSTERED 
(
	[IDSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ChiTietHoaDon] ON 

INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [IDSanPham], [SoLuong], [ThanhTien], [GhiChu]) VALUES (6, 11, 4, 3, 39000000.0000, N'')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [IDSanPham], [SoLuong], [ThanhTien], [GhiChu]) VALUES (7, 11, 5, 3, 150000.0000, N'')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [IDSanPham], [SoLuong], [ThanhTien], [GhiChu]) VALUES (8, 12, 2, 1, 5000000.0000, N'12')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [IDSanPham], [SoLuong], [ThanhTien], [GhiChu]) VALUES (9, 13, 3, 1, 19000000.0000, N'')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [IDSanPham], [SoLuong], [ThanhTien], [GhiChu]) VALUES (10, 13, 4, 1, 13000000.0000, N'')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [IDSanPham], [SoLuong], [ThanhTien], [GhiChu]) VALUES (11, 14, 4, 1, 13000000.0000, N'')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [IDSanPham], [SoLuong], [ThanhTien], [GhiChu]) VALUES (12, 14, 6, 1, 60000.0000, N'')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [IDSanPham], [SoLuong], [ThanhTien], [GhiChu]) VALUES (13, 15, 2, 1, 5000000.0000, N'')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [IDSanPham], [SoLuong], [ThanhTien], [GhiChu]) VALUES (14, 15, 3, 1, 19000000.0000, N'')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [IDSanPham], [SoLuong], [ThanhTien], [GhiChu]) VALUES (15, 15, 5, 1, 50000.0000, N'')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [IDSanPham], [SoLuong], [ThanhTien], [GhiChu]) VALUES (16, 16, 1, 1, 9000000.0000, N'')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [IDSanPham], [SoLuong], [ThanhTien], [GhiChu]) VALUES (17, 16, 3, 1, 19000000.0000, N'')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [IDSanPham], [SoLuong], [ThanhTien], [GhiChu]) VALUES (18, 17, 1, 1, 9000000.0000, N'')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [IDSanPham], [SoLuong], [ThanhTien], [GhiChu]) VALUES (19, 18, 2, 2, 10000000.0000, N'')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [IDSanPham], [SoLuong], [ThanhTien], [GhiChu]) VALUES (20, 18, 6, 1, 60000.0000, N'')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [IDSanPham], [SoLuong], [ThanhTien], [GhiChu]) VALUES (21, 18, 5, 29, 1450000.0000, N'')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [IDSanPham], [SoLuong], [ThanhTien], [GhiChu]) VALUES (22, 20, 3, 1, 19000000.0000, N'')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [IDSanPham], [SoLuong], [ThanhTien], [GhiChu]) VALUES (23, 20, 4, 1, 13000000.0000, N'')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [IDSanPham], [SoLuong], [ThanhTien], [GhiChu]) VALUES (24, 21, 2, 1, 5000000.0000, N'')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [IDSanPham], [SoLuong], [ThanhTien], [GhiChu]) VALUES (25, 22, 1, 1, 9000000.0000, N'New')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [IDSanPham], [SoLuong], [ThanhTien], [GhiChu]) VALUES (26, 22, 4, 1, 13000000.0000, N'New')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [IDSanPham], [SoLuong], [ThanhTien], [GhiChu]) VALUES (27, 23, 1, 2, 18000000.0000, N'New')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [IDSanPham], [SoLuong], [ThanhTien], [GhiChu]) VALUES (28, 23, 6, 1, 60000.0000, N'likenew')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [IDSanPham], [SoLuong], [ThanhTien], [GhiChu]) VALUES (29, 24, 2, 1, 5000000.0000, N'')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [IDSanPham], [SoLuong], [ThanhTien], [GhiChu]) VALUES (30, 24, 3, 1, 19000000.0000, N'')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [IDSanPham], [SoLuong], [ThanhTien], [GhiChu]) VALUES (31, 25, 4, 1, 13000000.0000, N'')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [IDSanPham], [SoLuong], [ThanhTien], [GhiChu]) VALUES (32, 25, 1, 1, 9000000.0000, N'')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [IDSanPham], [SoLuong], [ThanhTien], [GhiChu]) VALUES (33, 28, 2, 1, 5000000.0000, N'')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [IDSanPham], [SoLuong], [ThanhTien], [GhiChu]) VALUES (34, 29, 2, 1, 5000000.0000, N'')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [IDSanPham], [SoLuong], [ThanhTien], [GhiChu]) VALUES (35, 30, 1, 1, 9000000.0000, N'')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [IDSanPham], [SoLuong], [ThanhTien], [GhiChu]) VALUES (36, 30, 5, 1, 50000.0000, N'')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [IDSanPham], [SoLuong], [ThanhTien], [GhiChu]) VALUES (37, 31, 5, 1, 50000.0000, N'')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [IDSanPham], [SoLuong], [ThanhTien], [GhiChu]) VALUES (38, 32, 4, 1, 13000000.0000, N'')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [IDSanPham], [SoLuong], [ThanhTien], [GhiChu]) VALUES (39, 33, 6, 1, 60000.0000, N'')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [IDSanPham], [SoLuong], [ThanhTien], [GhiChu]) VALUES (40, 33, 6, 2, 120000.0000, N'')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [IDSanPham], [SoLuong], [ThanhTien], [GhiChu]) VALUES (41, 34, 4, 1, 13000000.0000, N'')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [IDSanPham], [SoLuong], [ThanhTien], [GhiChu]) VALUES (42, 35, 3, 1, 19000000.0000, N'')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [IDSanPham], [SoLuong], [ThanhTien], [GhiChu]) VALUES (43, 36, 4, 1, 13000000.0000, N'')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [IDSanPham], [SoLuong], [ThanhTien], [GhiChu]) VALUES (44, 36, 5, 1, 50000.0000, N'')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [IDSanPham], [SoLuong], [ThanhTien], [GhiChu]) VALUES (45, 37, 4, 1, 13000000.0000, N'')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [IDSanPham], [SoLuong], [ThanhTien], [GhiChu]) VALUES (46, 38, 4, 1, 13000000.0000, N'')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [IDSanPham], [SoLuong], [ThanhTien], [GhiChu]) VALUES (47, 38, 3, 1, 19000000.0000, N'')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [IDSanPham], [SoLuong], [ThanhTien], [GhiChu]) VALUES (48, 39, 2, 1, 5000000.0000, N'')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [IDSanPham], [SoLuong], [ThanhTien], [GhiChu]) VALUES (49, 40, 3, 1, 19000000.0000, N'')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [IDSanPham], [SoLuong], [ThanhTien], [GhiChu]) VALUES (50, 40, 6, 1, 60000.0000, N'')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [IDSanPham], [SoLuong], [ThanhTien], [GhiChu]) VALUES (51, 41, 4, 1, 13000000.0000, N'')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [IDSanPham], [SoLuong], [ThanhTien], [GhiChu]) VALUES (52, 42, 5, 1, 50000.0000, N'')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [IDSanPham], [SoLuong], [ThanhTien], [GhiChu]) VALUES (53, 43, 5, 1, 50000.0000, N'')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [IDSanPham], [SoLuong], [ThanhTien], [GhiChu]) VALUES (54, 44, 6, 1, 60000.0000, N'')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [IDSanPham], [SoLuong], [ThanhTien], [GhiChu]) VALUES (55, 44, 3, 1, 19000000.0000, N'')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [IDSanPham], [SoLuong], [ThanhTien], [GhiChu]) VALUES (56, 44, 2, 1, 5000000.0000, N'')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [IDSanPham], [SoLuong], [ThanhTien], [GhiChu]) VALUES (57, 45, 5, 1, 50000.0000, N'')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [IDSanPham], [SoLuong], [ThanhTien], [GhiChu]) VALUES (58, 46, 3, 1, 19000000.0000, N'')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [IDSanPham], [SoLuong], [ThanhTien], [GhiChu]) VALUES (59, 49, 6, 4, 240000.0000, N'')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [IDSanPham], [SoLuong], [ThanhTien], [GhiChu]) VALUES (60, 57, 5, 1, 50000.0000, N'')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [IDSanPham], [SoLuong], [ThanhTien], [GhiChu]) VALUES (61, 57, 5, 1, 50000.0000, N'ok')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [IDSanPham], [SoLuong], [ThanhTien], [GhiChu]) VALUES (62, 65, 4, 1, 13000000.0000, N'123')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [IDSanPham], [SoLuong], [ThanhTien], [GhiChu]) VALUES (63, 66, 2, 2, 10000000.0000, N'')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [IDSanPham], [SoLuong], [ThanhTien], [GhiChu]) VALUES (64, 67, 5, 4, 200000.0000, N'okla')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [IDSanPham], [SoLuong], [ThanhTien], [GhiChu]) VALUES (65, 68, 4, 1, 13000000.0000, N'')
SET IDENTITY_INSERT [dbo].[ChiTietHoaDon] OFF
SET IDENTITY_INSERT [dbo].[HoaDon] ON 

INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNhanVien], [MaKhachHang], [TongTien], [GhiChu]) VALUES (11, N'191020005', CAST(N'2019-10-20' AS Date), 2, 2, 39150000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNhanVien], [MaKhachHang], [TongTien], [GhiChu]) VALUES (12, N'211201001', CAST(N'2021-12-01' AS Date), 2, 1, 5000000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNhanVien], [MaKhachHang], [TongTien], [GhiChu]) VALUES (13, N'211201002', CAST(N'2021-12-01' AS Date), 2, 1, 32000000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNhanVien], [MaKhachHang], [TongTien], [GhiChu]) VALUES (14, N'211201003', CAST(N'2021-12-01' AS Date), 2, 1, 13060000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNhanVien], [MaKhachHang], [TongTien], [GhiChu]) VALUES (15, N'211201004', CAST(N'2021-12-01' AS Date), 2, 1, 24050000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNhanVien], [MaKhachHang], [TongTien], [GhiChu]) VALUES (16, N'211201005', CAST(N'2021-12-01' AS Date), 2, 1, 28000000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNhanVien], [MaKhachHang], [TongTien], [GhiChu]) VALUES (17, N'211201006', CAST(N'2021-12-01' AS Date), 2, 1, 9000000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNhanVien], [MaKhachHang], [TongTien], [GhiChu]) VALUES (18, N'211201007', CAST(N'2021-12-01' AS Date), 2, 1, 11510000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNhanVien], [MaKhachHang], [TongTien], [GhiChu]) VALUES (19, N'211201008', CAST(N'2021-12-01' AS Date), 2, 1, 52050000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNhanVien], [MaKhachHang], [TongTien], [GhiChu]) VALUES (20, N'211201009', CAST(N'2021-12-01' AS Date), 2, 1, 32000000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNhanVien], [MaKhachHang], [TongTien], [GhiChu]) VALUES (21, N'211201010', CAST(N'2021-12-01' AS Date), 2, 1, 5000000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNhanVien], [MaKhachHang], [TongTien], [GhiChu]) VALUES (22, N'211201011', CAST(N'2021-12-01' AS Date), 2, 1, 22000000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNhanVien], [MaKhachHang], [TongTien], [GhiChu]) VALUES (23, N'211201012', CAST(N'2021-12-01' AS Date), 2, 1, 18060000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNhanVien], [MaKhachHang], [TongTien], [GhiChu]) VALUES (24, N'211201013', CAST(N'2021-12-01' AS Date), 2, 1, 24000000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNhanVien], [MaKhachHang], [TongTien], [GhiChu]) VALUES (25, N'211203001', CAST(N'2021-12-03' AS Date), 2, 1, 22000000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNhanVien], [MaKhachHang], [TongTien], [GhiChu]) VALUES (26, N'211203002', CAST(N'2021-12-03' AS Date), 2, 1, 114060000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNhanVien], [MaKhachHang], [TongTien], [GhiChu]) VALUES (27, N'211203002', CAST(N'2021-12-03' AS Date), 2, 1, 114060000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNhanVien], [MaKhachHang], [TongTien], [GhiChu]) VALUES (28, N'211203004', CAST(N'2021-12-03' AS Date), 2, 1, 5000000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNhanVien], [MaKhachHang], [TongTien], [GhiChu]) VALUES (29, N'211203005', CAST(N'2021-12-03' AS Date), 2, 1, 5000000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNhanVien], [MaKhachHang], [TongTien], [GhiChu]) VALUES (30, N'211203006', CAST(N'2021-12-03' AS Date), 2, 1, 9050000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNhanVien], [MaKhachHang], [TongTien], [GhiChu]) VALUES (31, N'211203007', CAST(N'2021-12-03' AS Date), 2, 3, 50000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNhanVien], [MaKhachHang], [TongTien], [GhiChu]) VALUES (32, N'211203008', CAST(N'2021-12-03' AS Date), 2, 1, 13000000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNhanVien], [MaKhachHang], [TongTien], [GhiChu]) VALUES (33, N'211203009', CAST(N'2021-12-03' AS Date), 2, 1, 180000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNhanVien], [MaKhachHang], [TongTien], [GhiChu]) VALUES (34, N'211203010', CAST(N'2021-12-03' AS Date), 2, 1, 13000000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNhanVien], [MaKhachHang], [TongTien], [GhiChu]) VALUES (35, N'211203011', CAST(N'2021-12-03' AS Date), 2, 1, 19000000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNhanVien], [MaKhachHang], [TongTien], [GhiChu]) VALUES (36, N'211203012', CAST(N'2021-12-03' AS Date), 2, 1, 13050000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNhanVien], [MaKhachHang], [TongTien], [GhiChu]) VALUES (37, N'211203013', CAST(N'2021-12-03' AS Date), 2, 1, 13000000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNhanVien], [MaKhachHang], [TongTien], [GhiChu]) VALUES (38, N'211203014', CAST(N'2021-12-03' AS Date), 2, 1, 32000000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNhanVien], [MaKhachHang], [TongTien], [GhiChu]) VALUES (39, N'211209001', CAST(N'2021-12-09' AS Date), 2, 1, 5000000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNhanVien], [MaKhachHang], [TongTien], [GhiChu]) VALUES (40, N'211209002', CAST(N'2021-12-09' AS Date), 2, 1, 19060000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNhanVien], [MaKhachHang], [TongTien], [GhiChu]) VALUES (41, N'211209003', CAST(N'2021-12-09' AS Date), 2, 1, 13000000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNhanVien], [MaKhachHang], [TongTien], [GhiChu]) VALUES (42, N'211209004', CAST(N'2021-12-09' AS Date), 2, 1, 50000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNhanVien], [MaKhachHang], [TongTien], [GhiChu]) VALUES (43, N'211209005', CAST(N'2021-12-09' AS Date), 2, 1, 50000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNhanVien], [MaKhachHang], [TongTien], [GhiChu]) VALUES (44, N'211210001', CAST(N'2021-12-10' AS Date), 2, 1, 24060000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNhanVien], [MaKhachHang], [TongTien], [GhiChu]) VALUES (45, N'211210002', CAST(N'2021-12-10' AS Date), 2, 1, 50000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNhanVien], [MaKhachHang], [TongTien], [GhiChu]) VALUES (46, N'211210003', CAST(N'2021-12-10' AS Date), 2, 1, 19000000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNhanVien], [MaKhachHang], [TongTien], [GhiChu]) VALUES (47, N'211210004', CAST(N'2021-12-10' AS Date), 2, 1, 174000000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNhanVien], [MaKhachHang], [TongTien], [GhiChu]) VALUES (48, N'211210004', CAST(N'2021-12-10' AS Date), 2, 1, 174000000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNhanVien], [MaKhachHang], [TongTien], [GhiChu]) VALUES (49, N'211210006', CAST(N'2021-12-10' AS Date), 2, 1, 240000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNhanVien], [MaKhachHang], [TongTien], [GhiChu]) VALUES (50, N'211210007', CAST(N'2021-12-10' AS Date), 2, 1, 172450000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNhanVien], [MaKhachHang], [TongTien], [GhiChu]) VALUES (51, N'211210007', CAST(N'2021-12-10' AS Date), 2, 1, 172450000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNhanVien], [MaKhachHang], [TongTien], [GhiChu]) VALUES (52, N'211210007', CAST(N'2021-12-10' AS Date), 2, 1, 172450000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNhanVien], [MaKhachHang], [TongTien], [GhiChu]) VALUES (53, N'211210007', CAST(N'2021-12-10' AS Date), 2, 1, 172450000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNhanVien], [MaKhachHang], [TongTien], [GhiChu]) VALUES (54, N'211210011', CAST(N'2021-12-10' AS Date), 2, 1, 3000000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNhanVien], [MaKhachHang], [TongTien], [GhiChu]) VALUES (55, N'211210011', CAST(N'2021-12-10' AS Date), 2, 1, 3000000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNhanVien], [MaKhachHang], [TongTien], [GhiChu]) VALUES (56, N'211210011', CAST(N'2021-12-10' AS Date), 2, 1, 3000000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNhanVien], [MaKhachHang], [TongTien], [GhiChu]) VALUES (57, N'211210014', CAST(N'2021-12-10' AS Date), 2, 1, 100000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNhanVien], [MaKhachHang], [TongTien], [GhiChu]) VALUES (58, N'211210015', CAST(N'2021-12-10' AS Date), 2, 1, 1450000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNhanVien], [MaKhachHang], [TongTien], [GhiChu]) VALUES (59, N'211210015', CAST(N'2021-12-10' AS Date), 2, 1, 1450000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNhanVien], [MaKhachHang], [TongTien], [GhiChu]) VALUES (60, N'211210015', CAST(N'2021-12-10' AS Date), 2, 1, 1450000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNhanVien], [MaKhachHang], [TongTien], [GhiChu]) VALUES (61, N'211210015', CAST(N'2021-12-10' AS Date), 2, 1, 1450000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNhanVien], [MaKhachHang], [TongTien], [GhiChu]) VALUES (62, N'211210015', CAST(N'2021-12-10' AS Date), 2, 1, 1450000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNhanVien], [MaKhachHang], [TongTien], [GhiChu]) VALUES (63, N'211210015', CAST(N'2021-12-10' AS Date), 2, 1, 1450000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNhanVien], [MaKhachHang], [TongTien], [GhiChu]) VALUES (64, N'211210021', CAST(N'2021-12-10' AS Date), 2, 1, 3000000.0000, N'123')
INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNhanVien], [MaKhachHang], [TongTien], [GhiChu]) VALUES (65, N'211210022', CAST(N'2021-12-10' AS Date), 2, 1, 13000000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNhanVien], [MaKhachHang], [TongTien], [GhiChu]) VALUES (66, N'211210023', CAST(N'2021-12-10' AS Date), 2, 1, 10000000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNhanVien], [MaKhachHang], [TongTien], [GhiChu]) VALUES (67, N'211210024', CAST(N'2021-12-10' AS Date), 2, 1, 200000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNhanVien], [MaKhachHang], [TongTien], [GhiChu]) VALUES (68, N'211210025', CAST(N'2021-12-10' AS Date), 2, 1, 13000000.0000, N'')
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKH], [TenKhachHang], [DiaChi], [GioiTinh], [SoDienThoai], [LoaiKhachHang], [GhiChu]) VALUES (1, N'Nguyễn Thanh Duy', N'88 Hàng Xanh, Tp.Hồ Chí Minh', 1, N'090000398', N'VIP', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKhachHang], [DiaChi], [GioiTinh], [SoDienThoai], [LoaiKhachHang], [GhiChu]) VALUES (2, N'Huỳnh Văn Trung', N'145 Lý Thường Kiệt, Tp.BMT', 1, N'092929292', N'Thường xuyên', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKhachHang], [DiaChi], [GioiTinh], [SoDienThoai], [LoaiKhachHang], [GhiChu]) VALUES (3, N'Trần Đình Nguyên', N'105 Lý Thường Kiệt, Tp.BMT', 0, N'028299383', N'Bình thường', NULL)
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
SET IDENTITY_INSERT [dbo].[LoaiSanPham] ON 

INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoai], [MoTa]) VALUES (1, N'Sách', N'Các sản phẩm điện thoại')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoai], [MoTa]) VALUES (2, N'Giáo Khoa', N'Các sản phẩm Laptop')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoai], [MoTa]) VALUES (3, N'Tiểu Thuyết', N'Các loại linh kiện điện thoại')
SET IDENTITY_INSERT [dbo].[LoaiSanPham] OFF
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [DiaChi], [SoDienThoai], [GioiTinh], [ChucVu], [NgaySinh], [NgayVaoLam]) VALUES (1, N'Nguyễn Bá Hoàng', N'73 Trường Chinh, Tp.BMT, DakLak', N'090000398', 0, N'Kỹ thuật viên', CAST(N'1994-11-10' AS Date), CAST(N'2014-11-20' AS Date))
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [DiaChi], [SoDienThoai], [GioiTinh], [ChucVu], [NgaySinh], [NgayVaoLam]) VALUES (2, N'Nguyễn Duy Hòa', N'72 Trường Chinh, Tp.BMT, DakLak', N'01234567890', 1, N'Nhân viên IT', CAST(N'1993-11-10' AS Date), CAST(N'2014-11-20' AS Date))
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [DiaChi], [SoDienThoai], [GioiTinh], [ChucVu], [NgaySinh], [NgayVaoLam]) VALUES (3, N'Bùi Quốc Thịnh', N'69 Hai Bà Trưng, Tp.Hồ Chí Minh', N'090000398', 1, N'Bảo vệ', CAST(N'1992-11-10' AS Date), CAST(N'2014-11-20' AS Date))
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([IDSanPham], [MaSP], [TenSP], [SoLuong], [DonViTinh], [GiaNhap], [GiaBan], [MaLoaiSP], [MoTa]) VALUES (1, N'DT01', N'Đắc Nhân Tâm', 10, N'Cái', 7000000.0000, 9000000.0000, 1, NULL)
INSERT [dbo].[SanPham] ([IDSanPham], [MaSP], [TenSP], [SoLuong], [DonViTinh], [GiaNhap], [GiaBan], [MaLoaiSP], [MoTa]) VALUES (2, N'DT02', N'Combo Nuôi Con Không Phải Là Cuộc Chiến 2 (Bộ 3 C', 19, N'Cái', 4000000.0000, 5000000.0000, 1, NULL)
INSERT [dbo].[SanPham] ([IDSanPham], [MaSP], [TenSP], [SoLuong], [DonViTinh], [GiaNhap], [GiaBan], [MaLoaiSP], [MoTa]) VALUES (3, N'LT01', N'Tiếng Người Trong Văn', 9, N'Cái', 17000000.0000, 19000000.0000, 2, NULL)
INSERT [dbo].[SanPham] ([IDSanPham], [MaSP], [TenSP], [SoLuong], [DonViTinh], [GiaNhap], [GiaBan], [MaLoaiSP], [MoTa]) VALUES (4, N'LT02', N'Khéo Ăn Nói Sẽ Có Được Thiên Hạ - Bản Mới', 4, N'Cái', 11000000.0000, 13000000.0000, 2, NULL)
INSERT [dbo].[SanPham] ([IDSanPham], [MaSP], [TenSP], [SoLuong], [DonViTinh], [GiaNhap], [GiaBan], [MaLoaiSP], [MoTa]) VALUES (5, N'LK01', N'Tiếng Nhật Cho Mọi Người - Sơ Cấp 1 - Bản Dịch Và', 29, N'Cái', 10000.0000, 50000.0000, 3, NULL)
INSERT [dbo].[SanPham] ([IDSanPham], [MaSP], [TenSP], [SoLuong], [DonViTinh], [GiaNhap], [GiaBan], [MaLoaiSP], [MoTa]) VALUES (6, N'LK02', N'Miếng dán keo', 50, N'Miếng', 20000.0000, 60000.0000, 3, NULL)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_HoaDon] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_HoaDon]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_SanPham] FOREIGN KEY([IDSanPham])
REFERENCES [dbo].[SanPham] ([IDSanPham])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_SanPham]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NhanVien]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSanPham] FOREIGN KEY([MaLoaiSP])
REFERENCES [dbo].[LoaiSanPham] ([MaLoaiSP])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSanPham]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [CK_SanPham_GiaBan_LonHon_GiaNhap] CHECK  (([GiaBan]>[GiaNhap]))
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [CK_SanPham_GiaBan_LonHon_GiaNhap]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [CK_SanPham_GiaNhapPhaiDuong] CHECK  (([GiaNhap]>=(0)))
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [CK_SanPham_GiaNhapPhaiDuong]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [CK_SanPham_SoLuong_PhaiLonHonHoacBang_0] CHECK  (([SoLuong]>=(0)))
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [CK_SanPham_SoLuong_PhaiLonHonHoacBang_0]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'So luong phai lon hon hoac bang 0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SanPham', @level2type=N'CONSTRAINT',@level2name=N'CK_SanPham_SoLuong_PhaiLonHonHoacBang_0'
GO
USE [master]
GO
ALTER DATABASE [QLSanPham] SET  READ_WRITE 
GO
