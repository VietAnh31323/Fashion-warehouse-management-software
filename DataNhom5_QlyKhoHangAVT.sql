USE [DoAnC#_QuanLyKhoHang]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 4/14/2024 4:53:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[taikhoan] [nvarchar](255) NOT NULL,
	[matkhau] [nvarchar](255) NULL,
	[chucvu] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[taikhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChitietHDN]    Script Date: 4/14/2024 4:53:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChitietHDN](
	[SoHDN] [nvarchar](255) NULL,
	[MaSP] [nvarchar](255) NULL,
	[SLNhap] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChitietHDX]    Script Date: 4/14/2024 4:53:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChitietHDX](
	[SoHDX] [nvarchar](255) NULL,
	[MaSP] [nvarchar](255) NULL,
	[SL] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DangKyLichLamViec]    Script Date: 4/14/2024 4:53:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DangKyLichLamViec](
	[MaNV] [varchar](255) NULL,
	[HoTen] [nvarchar](255) NULL,
	[CaLam] [nchar](20) NULL,
	[NgayLamViec] [date] NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HangHoa]    Script Date: 4/14/2024 4:53:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HangHoa](
	[MaSP] [nvarchar](255) NOT NULL,
	[TenSP] [nvarchar](255) NULL,
	[PhanLoai] [nvarchar](255) NULL,
	[GiaSP] [nvarchar](255) NULL,
	[SoLuongSP] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoadonNhap]    Script Date: 4/14/2024 4:53:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoadonNhap](
	[SoHDN] [nvarchar](255) NOT NULL,
	[MaSP] [nvarchar](255) NULL,
	[MaNV] [nvarchar](255) NULL,
	[NgayNhap] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[SoHDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoadonXuat]    Script Date: 4/14/2024 4:53:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoadonXuat](
	[SoHDX] [nvarchar](255) NOT NULL,
	[MaKH] [nvarchar](255) NULL,
	[MaNV] [nvarchar](255) NULL,
	[DonviVC] [nvarchar](255) NULL,
	[NgayXuat] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[SoHDX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 4/14/2024 4:53:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [nvarchar](255) NOT NULL,
	[TenKH] [nvarchar](255) NULL,
	[Phone] [nvarchar](255) NULL,
	[DiaChi] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 4/14/2024 4:53:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [nvarchar](255) NULL,
	[TenNV] [nvarchar](255) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [nvarchar](255) NULL,
	[DiaChi] [nvarchar](255) NULL,
	[SDT] [nvarchar](255) NULL,
	[ChucVu] [nvarchar](255) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([taikhoan], [matkhau], [chucvu]) VALUES (N'NV24001', N'NV24001', N'Quản Lý')
INSERT [dbo].[Account] ([taikhoan], [matkhau], [chucvu]) VALUES (N'NV24002', N'NV24002', N'Nhân viên')
INSERT [dbo].[Account] ([taikhoan], [matkhau], [chucvu]) VALUES (N'NV24003', N'NV24003', N'Kiểm Kho')
GO
INSERT [dbo].[ChitietHDN] ([SoHDN], [MaSP], [SLNhap]) VALUES (N'HDN001', N'SP009', 1)
INSERT [dbo].[ChitietHDN] ([SoHDN], [MaSP], [SLNhap]) VALUES (N'HDN001', N'SP004', 2)
INSERT [dbo].[ChitietHDN] ([SoHDN], [MaSP], [SLNhap]) VALUES (N'HDN004', N'SP008', 21)
INSERT [dbo].[ChitietHDN] ([SoHDN], [MaSP], [SLNhap]) VALUES (N'HDN001', N'SP010', 3)
INSERT [dbo].[ChitietHDN] ([SoHDN], [MaSP], [SLNhap]) VALUES (N'HDN003', N'SP008', 2)
INSERT [dbo].[ChitietHDN] ([SoHDN], [MaSP], [SLNhap]) VALUES (N'HDN003', N'SP009', 2)
INSERT [dbo].[ChitietHDN] ([SoHDN], [MaSP], [SLNhap]) VALUES (N'HDN003', N'SP012', 3)
INSERT [dbo].[ChitietHDN] ([SoHDN], [MaSP], [SLNhap]) VALUES (N'HDN003', N'SP008', 3)
INSERT [dbo].[ChitietHDN] ([SoHDN], [MaSP], [SLNhap]) VALUES (N'HDN006', N'SP011', 10)
INSERT [dbo].[ChitietHDN] ([SoHDN], [MaSP], [SLNhap]) VALUES (N'HDN004', N'SP018', 2)
INSERT [dbo].[ChitietHDN] ([SoHDN], [MaSP], [SLNhap]) VALUES (N'HDN001', N'SP005', 2)
INSERT [dbo].[ChitietHDN] ([SoHDN], [MaSP], [SLNhap]) VALUES (N'HDN001', N'SP002', 2)
INSERT [dbo].[ChitietHDN] ([SoHDN], [MaSP], [SLNhap]) VALUES (N'HDN001', N'SP005', 0)
INSERT [dbo].[ChitietHDN] ([SoHDN], [MaSP], [SLNhap]) VALUES (N'HDN001', N'SP008', 0)
INSERT [dbo].[ChitietHDN] ([SoHDN], [MaSP], [SLNhap]) VALUES (N'HDN008', N'SP003', 3)
GO
INSERT [dbo].[ChitietHDX] ([SoHDX], [MaSP], [SL]) VALUES (N'HDX004', N'SP003', 3)
INSERT [dbo].[ChitietHDX] ([SoHDX], [MaSP], [SL]) VALUES (N'HDX004', N'SP007', 1)
INSERT [dbo].[ChitietHDX] ([SoHDX], [MaSP], [SL]) VALUES (N'HDX008', N'SP007', 1)
INSERT [dbo].[ChitietHDX] ([SoHDX], [MaSP], [SL]) VALUES (N'HDX004', N'SP012', 1)
INSERT [dbo].[ChitietHDX] ([SoHDX], [MaSP], [SL]) VALUES (N'HDX008', N'SP015', 2)
INSERT [dbo].[ChitietHDX] ([SoHDX], [MaSP], [SL]) VALUES (N'NDX012', N'SP011', 10)
INSERT [dbo].[ChitietHDX] ([SoHDX], [MaSP], [SL]) VALUES (N'HDX004', N'SP010', 1)
INSERT [dbo].[ChitietHDX] ([SoHDX], [MaSP], [SL]) VALUES (N'HDX004', N'SP012', 2)
GO
SET IDENTITY_INSERT [dbo].[DangKyLichLamViec] ON 

INSERT [dbo].[DangKyLichLamViec] ([MaNV], [HoTen], [CaLam], [NgayLamViec], [Id]) VALUES (N'NV24001', N'NguyenViet Anh', N'Ca sáng             ', CAST(N'2024-04-01' AS Date), 7)
INSERT [dbo].[DangKyLichLamViec] ([MaNV], [HoTen], [CaLam], [NgayLamViec], [Id]) VALUES (N'NV24001', N'Nguyễn Vũ Hà Anh', N'Ca sáng             ', CAST(N'2024-04-14' AS Date), 9)
INSERT [dbo].[DangKyLichLamViec] ([MaNV], [HoTen], [CaLam], [NgayLamViec], [Id]) VALUES (N'NV24002', N'Trần Văn Anh', N'Ca tối              ', CAST(N'2024-04-14' AS Date), 10)
INSERT [dbo].[DangKyLichLamViec] ([MaNV], [HoTen], [CaLam], [NgayLamViec], [Id]) VALUES (N'NV24005', N'Nguyễn Thị Lan', N'Ca chiều            ', CAST(N'2024-04-14' AS Date), 11)
INSERT [dbo].[DangKyLichLamViec] ([MaNV], [HoTen], [CaLam], [NgayLamViec], [Id]) VALUES (N'NV24001', N'Nguyễn Vũ Hà Anh', N'Ca tối              ', CAST(N'2024-04-14' AS Date), 12)
INSERT [dbo].[DangKyLichLamViec] ([MaNV], [HoTen], [CaLam], [NgayLamViec], [Id]) VALUES (N'NV24007', N'Trần Thị Mai', N'Ca chiều            ', CAST(N'2024-04-14' AS Date), 13)
INSERT [dbo].[DangKyLichLamViec] ([MaNV], [HoTen], [CaLam], [NgayLamViec], [Id]) VALUES (N'NV24008', N'Trần Văn Hùng', N'Ca sáng             ', CAST(N'2024-04-14' AS Date), 14)
INSERT [dbo].[DangKyLichLamViec] ([MaNV], [HoTen], [CaLam], [NgayLamViec], [Id]) VALUES (N'NV24005', N'Nguyễn Thị Lan', N'Ca sáng             ', CAST(N'2024-04-14' AS Date), 15)
INSERT [dbo].[DangKyLichLamViec] ([MaNV], [HoTen], [CaLam], [NgayLamViec], [Id]) VALUES (N'NV24003', N'Lê Thị Bình', N'Ca chiều            ', CAST(N'2024-04-14' AS Date), 16)
INSERT [dbo].[DangKyLichLamViec] ([MaNV], [HoTen], [CaLam], [NgayLamViec], [Id]) VALUES (N'NV24001', N'Nguyễn Vũ Hà Anh', N'Ca sáng             ', CAST(N'2024-04-16' AS Date), 17)
INSERT [dbo].[DangKyLichLamViec] ([MaNV], [HoTen], [CaLam], [NgayLamViec], [Id]) VALUES (N'NV24003', N'Lễ Thị Bình', N'Ca sáng             ', CAST(N'2024-04-16' AS Date), 18)
INSERT [dbo].[DangKyLichLamViec] ([MaNV], [HoTen], [CaLam], [NgayLamViec], [Id]) VALUES (N'NV24005', N'Nguyễn Thị Lan', N'Ca sáng             ', CAST(N'2024-04-16' AS Date), 19)
INSERT [dbo].[DangKyLichLamViec] ([MaNV], [HoTen], [CaLam], [NgayLamViec], [Id]) VALUES (N'NV24002', N'Trần Văn Anh', N'Ca chiều            ', CAST(N'2024-04-16' AS Date), 20)
INSERT [dbo].[DangKyLichLamViec] ([MaNV], [HoTen], [CaLam], [NgayLamViec], [Id]) VALUES (N'NV24004', N'Phạm Minh Đức', N'Ca chiều            ', CAST(N'2024-04-16' AS Date), 21)
INSERT [dbo].[DangKyLichLamViec] ([MaNV], [HoTen], [CaLam], [NgayLamViec], [Id]) VALUES (N'NV24006', N'Hoàng Văn Tuấn', N'Ca chiều            ', CAST(N'2024-04-16' AS Date), 22)
INSERT [dbo].[DangKyLichLamViec] ([MaNV], [HoTen], [CaLam], [NgayLamViec], [Id]) VALUES (N'NV24007', N'Trần Thị Mai', N'Ca tối              ', CAST(N'2024-04-16' AS Date), 23)
INSERT [dbo].[DangKyLichLamViec] ([MaNV], [HoTen], [CaLam], [NgayLamViec], [Id]) VALUES (N'NV24008', N'Nguyễn Văn Hùng', N'Ca tối              ', CAST(N'2024-04-16' AS Date), 24)
INSERT [dbo].[DangKyLichLamViec] ([MaNV], [HoTen], [CaLam], [NgayLamViec], [Id]) VALUES (N'NV24001', N'Nguyễn Việt Anh', N'Ca tối              ', CAST(N'2024-04-16' AS Date), 25)
INSERT [dbo].[DangKyLichLamViec] ([MaNV], [HoTen], [CaLam], [NgayLamViec], [Id]) VALUES (N'NV24003', N'Lê Thị Bình', N'Ca tối              ', CAST(N'2024-04-16' AS Date), 26)
INSERT [dbo].[DangKyLichLamViec] ([MaNV], [HoTen], [CaLam], [NgayLamViec], [Id]) VALUES (N'NV24008', N'Nguyễn Văn Hùng', N'Ca sáng             ', CAST(N'2024-04-16' AS Date), 27)
INSERT [dbo].[DangKyLichLamViec] ([MaNV], [HoTen], [CaLam], [NgayLamViec], [Id]) VALUES (N'NV24005', N'Nguyễn Thị Lan', N'Ca chiều            ', CAST(N'2024-04-16' AS Date), 28)
SET IDENTITY_INSERT [dbo].[DangKyLichLamViec] OFF
GO
INSERT [dbo].[HangHoa] ([MaSP], [TenSP], [PhanLoai], [GiaSP], [SoLuongSP]) VALUES (N'SP001', N'Quan Beggi Basic cho nam', N'Thoi Trang Nam', N'140000', 20)
INSERT [dbo].[HangHoa] ([MaSP], [TenSP], [PhanLoai], [GiaSP], [SoLuongSP]) VALUES (N'SP002', N'Ao phong Clown Z Unisex', N'Thoi Trang Nu', N'150000', 24)
INSERT [dbo].[HangHoa] ([MaSP], [TenSP], [PhanLoai], [GiaSP], [SoLuongSP]) VALUES (N'SP003', N'Set Ðo Ngu cho Be ', N'Thoi Trang Tre Em', N'150000', 53)
INSERT [dbo].[HangHoa] ([MaSP], [TenSP], [PhanLoai], [GiaSP], [SoLuongSP]) VALUES (N'SP004', N'Giay Nike AirForce Thoi Trang Ca Tinh', N'Giay', N'2560000', 12)
INSERT [dbo].[HangHoa] ([MaSP], [TenSP], [PhanLoai], [GiaSP], [SoLuongSP]) VALUES (N'SP005', N'Vong deo tay Pandonra ', N'Phu Kien', N'3210000', 20)
INSERT [dbo].[HangHoa] ([MaSP], [TenSP], [PhanLoai], [GiaSP], [SoLuongSP]) VALUES (N'SP006', N'Ao somi nhung tam Xam', N'Thoi Trang Nam', N'142000', 5)
INSERT [dbo].[HangHoa] ([MaSP], [TenSP], [PhanLoai], [GiaSP], [SoLuongSP]) VALUES (N'SP007', N'Chan vay mix quan', N'Thoi Trang Nu', N'155000', 89)
INSERT [dbo].[HangHoa] ([MaSP], [TenSP], [PhanLoai], [GiaSP], [SoLuongSP]) VALUES (N'SP008', N'Dep tap di cho be 15-24 thang', N'Thoi Trang Tre Em', N'220000', 51)
INSERT [dbo].[HangHoa] ([MaSP], [TenSP], [PhanLoai], [GiaSP], [SoLuongSP]) VALUES (N'SP009', N'Lac bac ma TiTan', N'Phu Kien', N'1005000', 12)
INSERT [dbo].[HangHoa] ([MaSP], [TenSP], [PhanLoai], [GiaSP], [SoLuongSP]) VALUES (N'SP010', N'Nhan ma Crom Unisex', N'Phu Kien', N'240000', 15)
INSERT [dbo].[HangHoa] ([MaSP], [TenSP], [PhanLoai], [GiaSP], [SoLuongSP]) VALUES (N'SP011', N'Giay Balenciaga form Basic', N'Giay', N'2560000', 10)
INSERT [dbo].[HangHoa] ([MaSP], [TenSP], [PhanLoai], [GiaSP], [SoLuongSP]) VALUES (N'SP012', N'Vay ngu goi cam, mong, nhe', N'Thoi Trang Nu', N'124000', 10)
INSERT [dbo].[HangHoa] ([MaSP], [TenSP], [PhanLoai], [GiaSP], [SoLuongSP]) VALUES (N'SP013', N'Quan dui nam mac tai nha', N'Thoi Trang Nam', N'156000', 16)
INSERT [dbo].[HangHoa] ([MaSP], [TenSP], [PhanLoai], [GiaSP], [SoLuongSP]) VALUES (N'SP014', N'Quan Jean cho tre', N'Thoi Trang Tre Em', N'123000', 24)
INSERT [dbo].[HangHoa] ([MaSP], [TenSP], [PhanLoai], [GiaSP], [SoLuongSP]) VALUES (N'SP015', N'Vong co dinh kim cuong', N'Phu Kien', N'1450000', 2)
INSERT [dbo].[HangHoa] ([MaSP], [TenSP], [PhanLoai], [GiaSP], [SoLuongSP]) VALUES (N'SP016', N'Nhan Dior dinh Kim Cuong', N'Phu Kien', N'1200000', 12)
INSERT [dbo].[HangHoa] ([MaSP], [TenSP], [PhanLoai], [GiaSP], [SoLuongSP]) VALUES (N'SP017', N'Tui xach Hermest BirKin', N'Phu Kien', N'15420130', 1)
INSERT [dbo].[HangHoa] ([MaSP], [TenSP], [PhanLoai], [GiaSP], [SoLuongSP]) VALUES (N'SP018', N'Vong Tay Unisex', N'Phu Kien', N'1423000', 52)
GO
INSERT [dbo].[HoadonNhap] ([SoHDN], [MaSP], [MaNV], [NgayNhap]) VALUES (N'HDN001', N'SP001', N'NV24001', CAST(N'2024-02-04' AS Date))
INSERT [dbo].[HoadonNhap] ([SoHDN], [MaSP], [MaNV], [NgayNhap]) VALUES (N'HDN002', N'SP005', N'NV24002', CAST(N'2024-12-03' AS Date))
INSERT [dbo].[HoadonNhap] ([SoHDN], [MaSP], [MaNV], [NgayNhap]) VALUES (N'HDN003', N'SP007', N' NV24005', CAST(N'2024-04-04' AS Date))
INSERT [dbo].[HoadonNhap] ([SoHDN], [MaSP], [MaNV], [NgayNhap]) VALUES (N'HDN004', N'SP011', N'NV24007', CAST(N'2024-06-02' AS Date))
INSERT [dbo].[HoadonNhap] ([SoHDN], [MaSP], [MaNV], [NgayNhap]) VALUES (N'HDN005', N'SP002', N' NV24003', CAST(N'2024-04-06' AS Date))
INSERT [dbo].[HoadonNhap] ([SoHDN], [MaSP], [MaNV], [NgayNhap]) VALUES (N'HDN006', N'SP014', N'NV24009', CAST(N'2024-09-01' AS Date))
INSERT [dbo].[HoadonNhap] ([SoHDN], [MaSP], [MaNV], [NgayNhap]) VALUES (N'HDN007', N'SP008', N'NV24007', CAST(N'2024-04-07' AS Date))
INSERT [dbo].[HoadonNhap] ([SoHDN], [MaSP], [MaNV], [NgayNhap]) VALUES (N'HDN008', N'SP011', N'NV24009', CAST(N'2024-12-08' AS Date))
INSERT [dbo].[HoadonNhap] ([SoHDN], [MaSP], [MaNV], [NgayNhap]) VALUES (N'HDN009', N'SP015', N' NV24003', CAST(N'2024-11-09' AS Date))
INSERT [dbo].[HoadonNhap] ([SoHDN], [MaSP], [MaNV], [NgayNhap]) VALUES (N'HDN010', N'SP008', N'NV24007', CAST(N'2024-09-10' AS Date))
INSERT [dbo].[HoadonNhap] ([SoHDN], [MaSP], [MaNV], [NgayNhap]) VALUES (N'HDN011', N'SP013', N' NV24004', CAST(N'2024-11-10' AS Date))
INSERT [dbo].[HoadonNhap] ([SoHDN], [MaSP], [MaNV], [NgayNhap]) VALUES (N'HDN012', N'SP009', N'NV24001', CAST(N'2024-12-10' AS Date))
INSERT [dbo].[HoadonNhap] ([SoHDN], [MaSP], [MaNV], [NgayNhap]) VALUES (N'HDN013', N'SP005', N' NV24004', CAST(N'2024-06-11' AS Date))
INSERT [dbo].[HoadonNhap] ([SoHDN], [MaSP], [MaNV], [NgayNhap]) VALUES (N'HDN014', N'SP003', N' NV24005', CAST(N'2024-04-12' AS Date))
INSERT [dbo].[HoadonNhap] ([SoHDN], [MaSP], [MaNV], [NgayNhap]) VALUES (N'HDN015', N'SP012', N'NV24007', CAST(N'2024-04-12' AS Date))
GO
INSERT [dbo].[HoadonXuat] ([SoHDX], [MaKH], [MaNV], [DonviVC], [NgayXuat]) VALUES (N'HDX001', N'KH001', N'NV24001', N'NowShip', CAST(N'2024-01-04' AS Date))
INSERT [dbo].[HoadonXuat] ([SoHDX], [MaKH], [MaNV], [DonviVC], [NgayXuat]) VALUES (N'HDX002', N'KH0031', N' NV24006', N'NowShip', CAST(N'2024-09-01' AS Date))
INSERT [dbo].[HoadonXuat] ([SoHDX], [MaKH], [MaNV], [DonviVC], [NgayXuat]) VALUES (N'HDX003', N'KH0045', N' NV24005', N'J&T Express Vietnam', CAST(N'2024-06-01' AS Date))
INSERT [dbo].[HoadonXuat] ([SoHDX], [MaKH], [MaNV], [DonviVC], [NgayXuat]) VALUES (N'HDX004', N'KH0029', N'NV24001', N'VNPost ', CAST(N'2024-02-01' AS Date))
INSERT [dbo].[HoadonXuat] ([SoHDX], [MaKH], [MaNV], [DonviVC], [NgayXuat]) VALUES (N'HDX005', N'KH0043', N'NV24008', N'VNPost ', CAST(N'2024-09-02' AS Date))
INSERT [dbo].[HoadonXuat] ([SoHDX], [MaKH], [MaNV], [DonviVC], [NgayXuat]) VALUES (N'HDX006', N'KH0035', N' NV24005', N'ShipChung', CAST(N'2024-06-02' AS Date))
INSERT [dbo].[HoadonXuat] ([SoHDX], [MaKH], [MaNV], [DonviVC], [NgayXuat]) VALUES (N'HDX007', N'KH0019', N'NV24009', N'AhaMove', CAST(N'2024-01-02' AS Date))
INSERT [dbo].[HoadonXuat] ([SoHDX], [MaKH], [MaNV], [DonviVC], [NgayXuat]) VALUES (N'HDX008', N'KH0031', N' NV24006', N'GrabExpress', CAST(N'2024-12-03' AS Date))
INSERT [dbo].[HoadonXuat] ([SoHDX], [MaKH], [MaNV], [DonviVC], [NgayXuat]) VALUES (N'HDX009', N'KH0017', N'NV24007', N'GrabExpress', CAST(N'2024-11-03' AS Date))
INSERT [dbo].[HoadonXuat] ([SoHDX], [MaKH], [MaNV], [DonviVC], [NgayXuat]) VALUES (N'NDX010', N'KH0018', N'NV24009', N'NowShip', CAST(N'2024-05-04' AS Date))
INSERT [dbo].[HoadonXuat] ([SoHDX], [MaKH], [MaNV], [DonviVC], [NgayXuat]) VALUES (N'NDX011', N'KH0037', N' NV24006', N'ShipChung', CAST(N'2024-10-05' AS Date))
INSERT [dbo].[HoadonXuat] ([SoHDX], [MaKH], [MaNV], [DonviVC], [NgayXuat]) VALUES (N'NDX012', N'KH0046', N'NV24007', N'J&T Express Vietnam', CAST(N'2024-12-05' AS Date))
INSERT [dbo].[HoadonXuat] ([SoHDX], [MaKH], [MaNV], [DonviVC], [NgayXuat]) VALUES (N'NDX013', N'KH0014', N' NV24002', N'ViettelPost', CAST(N'2024-12-05' AS Date))
INSERT [dbo].[HoadonXuat] ([SoHDX], [MaKH], [MaNV], [DonviVC], [NgayXuat]) VALUES (N'NDX014', N'KH0039', N'NV24001', N'GHN ', CAST(N'2024-09-06' AS Date))
INSERT [dbo].[HoadonXuat] ([SoHDX], [MaKH], [MaNV], [DonviVC], [NgayXuat]) VALUES (N'NDX015', N'KH0049', N'NV24008', N'EMS Vietnam ', CAST(N'2024-10-06' AS Date))
INSERT [dbo].[HoadonXuat] ([SoHDX], [MaKH], [MaNV], [DonviVC], [NgayXuat]) VALUES (N'NDX016', N'KH0012', N' NV24002', N'VNPost ', CAST(N'2024-02-07' AS Date))
INSERT [dbo].[HoadonXuat] ([SoHDX], [MaKH], [MaNV], [DonviVC], [NgayXuat]) VALUES (N'NDX017', N'KH0034', N'NV24009', N'VNPost ', CAST(N'2024-12-08' AS Date))
GO
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Phone], [DiaChi]) VALUES (N'KH0001', N'Nguyen Viet Anh', N'0982848203', N' P.An Tuong, Tuyen Quang')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Phone], [DiaChi]) VALUES (N'KH0002', N'Ðo Hong An', N'0332224978', N'Thi xa Pho Yen, Thai Nguyen')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Phone], [DiaChi]) VALUES (N'KH0003', N'Le Viet Anh', N'0325612541', N'Thanh pho Thanh Hoa, Thanh Hoa')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Phone], [DiaChi]) VALUES (N'KH0004', N'Tran Bui Ðuc Anh', N'0245126543', N'Quan Bac Tu Liem, Ha Noi')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Phone], [DiaChi]) VALUES (N'KH0005', N'Luong Son Ba', N'0383865601', N'Huyen Gia Vien, Ninh Binh')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Phone], [DiaChi]) VALUES (N'KH0006', N'Nguyen Hai Binh', N'0354126547', N'Thanh pho Tam Diep, Ninh Binh')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Phone], [DiaChi]) VALUES (N'KH0007', N'Nguyen Tien Cap', N'0838922669', N'Huyen Phu Cu, Hung Yen')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Phone], [DiaChi]) VALUES (N'KH0008', N'Bui Phap Danh', N'0321456712', N'Huyen Can Loc, Ha Tinh')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Phone], [DiaChi]) VALUES (N'KH0009', N'Nguyen Thi Duyen', N'0324158157', N'Huyen Quynh Phu, Thai Binh')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Phone], [DiaChi]) VALUES (N'KH0010', N'Tran Thanh Dang', N'0975462154', N'Quan Thanh Xuan, Ha Noi')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Phone], [DiaChi]) VALUES (N'KH0011', N'Nguyen Duy Dat', N'0214567894', N'Huyen Thanh Oai, Ha Noi')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Phone], [DiaChi]) VALUES (N'KH0012', N'Nguyen Huu Duc', N'0974561235', N'Huyen Nghia Dan, Nghe An')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Phone], [DiaChi]) VALUES (N'KH0013', N'Pham Hai Ðuc', N'0145267895', N'Huyen Quynh Phu, Thai Binh')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Phone], [DiaChi]) VALUES (N'KH0014', N'Truong Nam Dung', N'0987475621', N'Quan Tay Ho, Ha Noi')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Phone], [DiaChi]) VALUES (N'KH0015', N'Luong Thi Hien', N'0945126333', N'Huyen Quynh Phu, Thai Binh')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Phone], [DiaChi]) VALUES (N'KH0016', N'Le Ngo Hieu', N'0321425614', N'Huyen Yen Dinh, Thanh Hoa')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Phone], [DiaChi]) VALUES (N'KH0017', N'Tu Trung Hieu', N'0945211666', N'Thanh pho Hai Duong, Hai Duong')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Phone], [DiaChi]) VALUES (N'KH0018', N'Pham Huy Hoang', N'0912556666', N'Huyen Tran Yen, Yen Bai')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Phone], [DiaChi]) VALUES (N'KH0019', N'Nguyen Duy Huy', N'0124561241', N'Quan Nam Tu Liem, Ha Noi')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Phone], [DiaChi]) VALUES (N'KH0020', N'Vu Ngoc Huyen', N'0654121111', N'Quan Bac Tu Liem, Ha Noi')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Phone], [DiaChi]) VALUES (N'KH0021', N'Tran Huu Hung', N'0312111457', N'Thanh pho Vinh, Nghe An')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Phone], [DiaChi]) VALUES (N'KH0022', N'Nguyen Quang Huong', N'0314521413', N'Huyen Thach That, Ha Noi')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Phone], [DiaChi]) VALUES (N'KH0023', N'Vo Tri Hung', N'0945666154', N'Quan Hoang Mai, Ha Noi')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Phone], [DiaChi]) VALUES (N'KH0024', N'Hoang Gia Khanh', N'0314111457', N'Huyen Song Lo, Vinh Phuc')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Phone], [DiaChi]) VALUES (N'KH0025', N'Nguyen Thao Linh', N'0941256321', N'Huyen Gia Lam, Ha Noi')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Phone], [DiaChi]) VALUES (N'KH0026', N'Nguyen Vu Minh Long', N'0214511226', N'Quan Hoan Kiem, Ha Noi')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Phone], [DiaChi]) VALUES (N'KH0027', N'Nguyen Hai Long', N'0345666777', N'Quan Hai Ba Trung, Ha Noi')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Phone], [DiaChi]) VALUES (N'KH0028', N'Hoang Tam Minh', N'0211456789', N'Huyen Tam Duong, Vinh Phuc')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Phone], [DiaChi]) VALUES (N'KH0029', N'Nguyen Tuan Minh', N'0978611456', N'Huyen Dong Da, Ha Noi')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Phone], [DiaChi]) VALUES (N'KH0030', N'Cao Tran Duc Manh', N'0456123455', N'Thanh pho Vinh, Nghe An')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Phone], [DiaChi]) VALUES (N'KH0031', N'Nguyen Thanh Nam', N'0963144353', N'Huyen Hung Ha, Thai Binh')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Phone], [DiaChi]) VALUES (N'KH0032', N'Bui Thanh Nghia', N'0366215478', N'Huyen Soc Son, Ha Noi')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Phone], [DiaChi]) VALUES (N'KH0033', N'Vu Xuan Ngoc', N'0785462112', N'Quan Ba Dinh, Ha Noi')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Phone], [DiaChi]) VALUES (N'KH0034', N'Nguyen Thi Tam Nhi', N'0988456778', N'Huyen Hoai Duc, Ha Noi')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Phone], [DiaChi]) VALUES (N'KH0035', N'Nguyen Hong Phi', N'0123457841', N'Huyen Me Linh, Ha Noi')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Phone], [DiaChi]) VALUES (N'KH0036', N'Bui Bich Phuong', N'0986541111', N'Quan Hoang Mai, Ha Noi')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Phone], [DiaChi]) VALUES (N'KH0037', N'Nguyen Bao Phuc', N'0985461444', N'Thanh pho Cam Pha, Quang Ninh')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Phone], [DiaChi]) VALUES (N'KH0038', N'Trinh Ngoc Quyen', N'0314751240', N'Huyen Nong Cong, Thanh Hoa')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Phone], [DiaChi]) VALUES (N'KH0039', N'Nguyen Minh Quan', N'0641251222', N'Huyen Quynh Luu, Nghe An')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Phone], [DiaChi]) VALUES (N'KH0040', N'Lai Quang Son', N'0988745777', N'Huyen Chuong My, Ha Noi')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Phone], [DiaChi]) VALUES (N'KH0041', N'Nguyen Thi Le Thu', N'0415111245', N'Quan Ha Dong, Ha Noi')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Phone], [DiaChi]) VALUES (N'KH0042', N'Nguyen Thi Anh Thu', N'0541555461', N'Thanh pho Cao Bang, Cao Bang')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Phone], [DiaChi]) VALUES (N'KH0043', N'Le Phuong Thao', N'0999874521', N'Huyen Ba Vi, Ha Noi')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Phone], [DiaChi]) VALUES (N'KH0044', N'Nguyen Chu Kieu Trang', N'0321461782', N'Quan Ba Dinh, Ha Noi')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Phone], [DiaChi]) VALUES (N'KH0045', N'Le Dinh Trieu', N'0214561121', N'Huyen Huong Khe, Ha Tinh')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Phone], [DiaChi]) VALUES (N'KH0046', N'Tran Minh Truc', N'0415621422', N'Huyen Nghia Dan, Nghe An')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Phone], [DiaChi]) VALUES (N'KH0047', N'Nguyen Huu Tuan', N'0347814621', N'Quan Nam Tu Liem, Ha Noi')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Phone], [DiaChi]) VALUES (N'KH0048', N'Ha Huy Tan', N'0988546214', N'Huyen Huu Lung, Lang Son')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Phone], [DiaChi]) VALUES (N'KH0049', N'Phan Van Tuoi', N'0457915467', N'Huyen Thieu Hoa, Thanh Hoa')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Phone], [DiaChi]) VALUES (N'KH0050', N'Lai Hoang Tu', N'0974751624', N'Quan Hai Ba Trung, Ha Noi')
GO
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [ChucVu]) VALUES (N'NV24001', N'Nguyễn Vũ Hà Anh', CAST(N'1996-12-12' AS Date), N'Nam', N'P.An Tường, TP. Tuyên Quang', N'0982848203', N'Nhân viên')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [ChucVu]) VALUES (N' NV24002', N' Trần Văn Anh', CAST(N'1995-05-15' AS Date), N'Nam', N' Thị Xã Phổ Yên, Thái Nguyên', N' 0982848204', N'Quản Lý')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [ChucVu]) VALUES (N' NV24003', N' Lê Thị Bình', CAST(N'1994-08-20' AS Date), N'Nữ', N' Phường An Tiên, Thanh Hóa', N' 0982848205', N'Nhân viên')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [ChucVu]) VALUES (N' NV24004', N' Phạm Minh Đức', CAST(N'1990-09-10' AS Date), N'Nam', N' Phường An Phú, Lạng Sơn', N' 0982848206', N'Kiểm Kho')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [ChucVu]) VALUES (N' NV24005', N'Nguyễn Thị Lan', CAST(N'1988-07-05' AS Date), N'Nữ', N' Phường An Khánh, Thanh Hóa', N' 0982848207', N'Nhân viên')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [ChucVu]) VALUES (N'NV24009', N'Lê Văn Khoa', CAST(N'1992-04-17' AS Date), N'Nam', N'Phường An Bằng, Thanh Hóa', N' 0982848211', N'Kiểm Kho')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [ChucVu]) VALUES (N' NV24006', N'Hoàng Văn Tuấn', CAST(N'1987-02-28' AS Date), N'Nam', N'Đống Đa, Hà Nội', N' 0982848208', N'Nhân viên')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [ChucVu]) VALUES (N'NV24007', N'Trần Thị Mai', CAST(N'1986-11-19' AS Date), N'Nữ', N'Phường An Hội, Lạng Sơn', N' 0982848209', N'Nhân viên')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [ChucVu]) VALUES (N'NV24008', N'Nguyễn Văn Hùng', CAST(N'1993-10-24' AS Date), N'Nam', N'Phường Đại Mỗ, Nam Từ Liêm, Hà Nội', N' 0982848210', N'Kiểm Kho')
GO
