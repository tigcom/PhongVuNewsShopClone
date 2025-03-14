USE [techshop]
GO
/****** Object:  Table [dbo].[ChiTietLichSuMuaHang]    Script Date: 26/02/2025 3:04:26 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietLichSuMuaHang](
	[MaChiTietLichSu] [int] IDENTITY(1,1) NOT NULL,
	[MaLichSu] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[GiaBan] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChiTietLichSu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HinhAnh]    Script Date: 26/02/2025 3:04:26 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HinhAnh](
	[MaHinhAnh] [int] IDENTITY(1,1) NOT NULL,
	[MaSP] [int] NOT NULL,
	[DuongDanHinh] [nvarchar](500) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHinhAnh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichSuMuaHang]    Script Date: 26/02/2025 3:04:26 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichSuMuaHang](
	[MaLichSu] [int] IDENTITY(1,1) NOT NULL,
	[MaNguoiDung] [int] NOT NULL,
	[NgayMua] [datetime] NULL,
	[TongTien] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLichSu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiHang]    Script Date: 26/02/2025 3:04:26 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiHang](
	[MaLoaiHang] [nvarchar](10) NOT NULL,
	[TenLoaiHang] [nvarchar](255) NOT NULL,
	[hinhanh] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoaiHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 26/02/2025 3:04:26 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[MaNguoiDung] [int] IDENTITY(1,1) NOT NULL,
	[TenDangNhap] [nvarchar](255) NOT NULL,
	[MatKhau] [nvarchar](255) NOT NULL,
	[HoTen] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[SoDienThoai] [nvarchar](15) NULL,
	[VaiTro] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNguoiDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 26/02/2025 3:04:26 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](255) NOT NULL,
	[MoTa] [nvarchar](max) NULL,
	[Sale] [float] NULL,
	[Price] [float] NULL,
	[Title] [nvarchar](255) NULL,
	[ThongTinChitiet] [nvarchar](max) NULL,
	[MaLoaiHang] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongTinThuocTinh]    Script Date: 26/02/2025 3:04:26 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinThuocTinh](
	[MaThongTinThuocTinh] [int] IDENTITY(1,1) NOT NULL,
	[MaThuocTinh] [nvarchar](10) NOT NULL,
	[MaSP] [int] NOT NULL,
	[GiaTri] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaThongTinThuocTinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThuocTinh]    Script Date: 26/02/2025 3:04:26 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThuocTinh](
	[MaThuocTinh] [nvarchar](10) NOT NULL,
	[MaLoaiHang] [nvarchar](10) NOT NULL,
	[TenThuocTinh] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaThuocTinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChiTietLichSuMuaHang] ON 

INSERT [dbo].[ChiTietLichSuMuaHang] ([MaChiTietLichSu], [MaLichSu], [MaSP], [SoLuong], [GiaBan]) VALUES (21, 16, 16, 1, 0)
INSERT [dbo].[ChiTietLichSuMuaHang] ([MaChiTietLichSu], [MaLichSu], [MaSP], [SoLuong], [GiaBan]) VALUES (22, 17, 13, 1, 454083700)
INSERT [dbo].[ChiTietLichSuMuaHang] ([MaChiTietLichSu], [MaLichSu], [MaSP], [SoLuong], [GiaBan]) VALUES (23, 18, 15, 1, 163630800)
INSERT [dbo].[ChiTietLichSuMuaHang] ([MaChiTietLichSu], [MaLichSu], [MaSP], [SoLuong], [GiaBan]) VALUES (24, 18, 13, 1, 454083700)
INSERT [dbo].[ChiTietLichSuMuaHang] ([MaChiTietLichSu], [MaLichSu], [MaSP], [SoLuong], [GiaBan]) VALUES (25, 21, 13, 1, 454083700)
SET IDENTITY_INSERT [dbo].[ChiTietLichSuMuaHang] OFF
GO
SET IDENTITY_INSERT [dbo].[HinhAnh] ON 

INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (345, 4, N'Laptop_Acer_Nitro_16_Phoenix_AN16-_41-R5M4_(Đen)_1.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (346, 4, N'Laptop_Acer_Nitro_16_Phoenix_AN16-_41-R5M4_(Đen)_2.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (347, 4, N'Laptop_Acer_Nitro_16_Phoenix_AN16-_41-R5M4_(Đen)_3.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (348, 4, N'Laptop_Acer_Nitro_16_Phoenix_AN16-_41-R5M4_(Đen)_4.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (349, 4, N'Laptop_Acer_Nitro_16_Phoenix_AN16-_41-R5M4_(Đen)_5.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (350, 4, N'Laptop_Acer_Nitro_16_Phoenix_AN16-_41-R5M4_(Đen)_6.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (351, 5, N'A12VE_1.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (352, 5, N'A12VE_2.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (353, 5, N'A12VE_3.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (354, 5, N'A12VE_4.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (355, 5, N'A12VE_5.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (356, 5, N'A12VE_6.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (357, 6, N'Laptop_Gaming_Acer_Nitro_5_AN515-57-77KU_NH.QDGSV.001_1.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (358, 6, N'Laptop_Gaming_Acer_Nitro_5_AN515-57-77KU_NH.QDGSV.001_2.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (359, 6, N'Laptop_Gaming_Acer_Nitro_5_AN515-57-77KU_NH.QDGSV.001_3.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (360, 6, N'Laptop_Gaming_Acer_Nitro_5_AN515-57-77KU_NH.QDGSV.001_4.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (361, 6, N'Laptop_Gaming_Acer_Nitro_5_AN515-57-77KU_NH.QDGSV.001_5.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (362, 6, N'Laptop_Gaming_Acer_Nitro_5_AN515-57-77KU_NH.QDGSV.001_6.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (363, 7, N'Laptop_Asus_Vivobook_co_151_E1504FA-NJ454W_(AMD_Ryzen_5-7520U)_1.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (364, 7, N'Laptop_Asus_Vivobook_co_151_E1504FA-NJ454W_(AMD_Ryzen_5-7520U)_2.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (365, 7, N'Laptop_Asus_Vivobook_co_151_E1504FA-NJ454W_(AMD_Ryzen_5-7520U)_3.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (366, 7, N'Laptop_Asus_Vivobook_co_151_E1504FA-NJ454W_(AMD_Ryzen_5-7520U)_4.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (367, 7, N'Laptop_Asus_Vivobook_co_151_E1504FA-NJ454W_(AMD_Ryzen_5-7520U)_5.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (368, 7, N'Laptop_Asus_Vivobook_co_151_E1504FA-NJ454W_(AMD_Ryzen_5-7520U)_6.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (369, 8, N'MacBook_Air_M1_2020_13_inch_(8GB_256GB_SSD)_1.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (370, 8, N'MacBook_Air_M1_2020_13_inch_(8GB_256GB_SSD)_2.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (371, 8, N'MacBook_Air_M1_2020_13_inch_(8GB_256GB_SSD)_3.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (372, 8, N'MacBook_Air_M1_2020_13_inch_(8GB_256GB_SSD)_4.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (373, 8, N'MacBook_Air_M1_2020_13_inch_(8GB_256GB_SSD)_5.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (374, 8, N'MacBook_Air_M1_2020_13_inch_(8GB_256GB_SSD)_6.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (375, 12, N'iPhone_15_Pro_Max_256GB_1.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (376, 12, N'iPhone_15_Pro_Max_256GB_2.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (377, 12, N'iPhone_15_Pro_Max_256GB_3.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (378, 12, N'iPhone_15_Pro_Max_256GB_4.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (379, 12, N'iPhone_15_Pro_Max_256GB_5.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (380, 12, N'iPhone_15_Pro_Max_256GB_6.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (381, 13, N'Laptop_Acer_Nitro_5_Tiger_AN515-58-52SP__1.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (382, 13, N'Laptop_Acer_Nitro_5_Tiger_AN515-58-_52SP_1.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (383, 13, N'Laptop_Acer_Nitro_5_Tiger_AN515-58-_52SP_2.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (384, 13, N'Laptop_Acer_Nitro_5_Tiger_AN515-58-_52SP_3.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (385, 13, N'Laptop_Acer_Nitro_5_Tiger_AN515-58-_52SP_4.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (386, 13, N'Laptop_Acer_Nitro_5_Tiger_AN515-58-_52SP_5.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (387, 13, N'Laptop_Acer_Nitro_5_Tiger_AN515-58-_52SP_6.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (390, 15, N'CPU_INTEL_Core_15-12400_(6_12_2.50_GHz_-_4.40_GHz,_18MB)_-_1700_1.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (391, 15, N'CPU_INTEL_Core_15-12400_(6_12_2.50_GHz_-_4.40_GHz,_18MB)_-_1700_2.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (392, 17, N'PC_Dell_Mienware_Aurore_Rix__029_352_(Intel_Core_19)_1.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (393, 17, N'PC_Dell_Mienware_Aurore_Rix__029_352_(Intel_Core_19)_2.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (394, 18, N'PC_Phong_VŨ_Gaming_IN50131_(Intel_Core_I5_12400F_2x8GB_S12GB)_1.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (395, 18, N'PC_Phong_VŨ_Gaming_IN50131_(Intel_Core_I5_12400F_2x8GB_S12GB)_2.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (396, 19, N'PC_HP_ProOne_440_G9_AIO_6M3X9PA_1.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (397, 19, N'PC_HP_ProOne_440_G9_AIO_6M3X9PA_2.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (398, 20, N'Apple_MacBook_Pro_M3_Max_16.2_(48_118_5501)_1.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (399, 20, N'Apple_MacBook_Pro_M3_Max_16.2_(48_118_5501)_2.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (400, 20, N'Apple_MacBook_Pro_M3_Max_16.2_(48_118_5501)_3.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (401, 20, N'Apple_MacBook_Pro_M3_Max_16.2_(48_118_5501)_4.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (402, 20, N'Apple_MacBook_Pro_M3_Max_16.2_(48_118_5501)_5.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (403, 20, N'Apple_MacBook_Pro_M3_Max_16.2_(48_118_5501)_6.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (404, 21, N'Tai_nghe_không_day_Gaming_ZIDLI_AH1_(2.4G__7.1_&_RGB_Real)_1.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (405, 22, N'Màn_hình_LCD_MSI_32__OPTIX_G32C4X_(1920_x_1080_VA_250Hz)_1.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (406, 22, N'Màn_hình_LCD_MSI_32__OPTIX_G32C4X_(1920_x_1080_VA_250Hz)_2.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (407, 23, N'Màn_hình_LCD_SAMSUNG_28_LU28R550UQEXXV_1.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (408, 23, N'Màn_hình_LCD_SAMSUNG_28_LU28R550UQEXXV_2.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (409, 23, N'Màn_hình_LCD_SAMSUNG_28_LU28R550UQEXXV_3.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (410, 23, N'Màn_hình_LCD_SAMSUNG_28_LU28R550UQEXXV_4.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (411, 23, N'Màn_hình_LCD_SAMSUNG_28_LU28R550UQEXXV_5.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (412, 23, N'Màn_hình_LCD_SAMSUNG_28_LU28R550UQEXXV_6.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (413, 24, N'Smart_Tivi_Samsung_4K_UHD_55_inch_UA55AU7700_1.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (414, 25, N'Google_Tivi_TCL_4K_55_inch_55P745_1.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (415, 26, N'Google_Tivi_Coocaa_70C9_4K_70_inch_1.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (416, 27, N'Laptop_Acer_Nitro_5_Tiger_AN515-58-52SP__1.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (417, 27, N'Laptop_Acer_Nitro_5_Tiger_AN515-58-_52SP_1.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (418, 27, N'Laptop_Acer_Nitro_5_Tiger_AN515-58-_52SP_2.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (419, 27, N'Laptop_Acer_Nitro_5_Tiger_AN515-58-_52SP_3.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (420, 27, N'Laptop_Acer_Nitro_5_Tiger_AN515-58-_52SP_4.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (421, 27, N'Laptop_Acer_Nitro_5_Tiger_AN515-58-_52SP_5.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (422, 27, N'Laptop_Acer_Nitro_5_Tiger_AN515-58-_52SP_6.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (423, 28, N'Laptop_ACER_Aspire_7_A715-42G-R05G_1.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (424, 28, N'Laptop_ACER_Aspire_7_A715-42G-R05G_2.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (425, 28, N'Laptop_ACER_Aspire_7_A715-42G-R05G_3.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (426, 28, N'Laptop_ACER_Aspire_7_A715-42G-R05G_4.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (427, 28, N'Laptop_ACER_Aspire_7_A715-42G-R05G_5.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (428, 28, N'Laptop_ACER_Aspire_7_A715-42G-R05G_6.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (430, 31, N'Laptop_Acer_Nitro_16_Phoenix_AN16-41-R5M4_(AMD_Ryzen_5-7535HS)_1.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (431, 32, N'Laptop_Asus_TUF_Gaming_F15_FX506HE-HN075W_(i7-11800H)_(Đen)_1.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (432, 35, N'Laptop_Acer_Aspire_3_A315-59-51X8_(NX.K6TSV.00F)_(i5-1235U)_(Bạc)_1.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (433, 37, N'Laptop_Acer_Aspire_5_A515-58GM-59LJ_(NX.KQ4SV.001)_(i5-13420H)_(Xám)_1.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (434, 38, N'iPhone_15_128GB_1.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (435, 39, N'Máy_triệt_lông_lạnh_cá_nhân_Halio_IPL_Cooling_Hair_Removal_Device_1.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (436, 16, N'PC_PV_Gaming_AN50141_(intel_core_ty_12_00r12x_1603_50068.)_1.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (437, 16, N'PC_PV_Gaming_AN50141_(intel_core_ty_12_00r12x_1603_50068.)_2.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (438, 16, N'PC_PV_Gaming_AN50141_(intel_core_ty_12_00r12x_1603_50068.)_3.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (439, 16, N'PC_PV_Gaming_AN50141_(intel_core_ty_12_00r12x_1603_50068.)_4.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (442, 33, N'Laptop_Acer_Swift_3_SF314_1.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (443, 30, N'Laptop_ASUS_Vivobook_Go_15_E1504FA-NJ454W.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (444, 30, N'Laptop_ASUS_Vivobook_Go_15_E1504FA-NJ454W_2.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (445, 30, N'Laptop_ASUS_Vivobook_Go_15_E1504FA-NJ454W_3.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (446, 30, N'Laptop_ASUS_Vivobook_Go_15_E1504FA-NJ454W_4.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (447, 30, N'Laptop_ASUS_Vivobook_Go_15_E1504FA-NJ454W_5.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (448, 34, N'Laptop_Lenovo_IdeaPad_Slim_5_14IAH8_-_83BF002NVN_(i5-12450H)_(Xám)_1.jpg')
GO
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (449, 36, N'Laptop_Acer_Nitro_5_Tiger_AN515-58-769J__1.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (450, 40, N'Màn_hình_LCD_Samsung_24_inch_LS24C310EAEXXV_(1920_x_1080__IPS__75Hz__5_(GTG))_1.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (451, 41, N'Laptop_Lenovo_IdeaPad_3_15IAU7_-_82RK001QVN_(i5-1235U)_(Xanh)_1.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (462, 44, N'unnamed5.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (463, 44, N'unnamed4.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (464, 44, N'unnamed3.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (465, 44, N'unnamed2.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (466, 44, N'unnamed1.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (467, 46, N'loa3.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (468, 46, N'loa2.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (469, 46, N'loa1.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (470, 47, N'apple3.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (471, 47, N'apple2.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (472, 47, N'apple1.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (473, 49, N'manHinh5.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (474, 49, N'manHinh4.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (475, 49, N'manHinh3.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (476, 49, N'manHinh2.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (477, 49, N'manHinh1.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (485, 14, N'cpu3.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (486, 14, N'cpu2.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (487, 14, N'cput1.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (488, 29, N'ass6.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (489, 29, N'ass5.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (490, 29, N'ass4.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (491, 29, N'ass3.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (492, 29, N'ass2.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaSP], [DuongDanHinh]) VALUES (493, 29, N'ass1.jpg')
SET IDENTITY_INSERT [dbo].[HinhAnh] OFF
GO
SET IDENTITY_INSERT [dbo].[LichSuMuaHang] ON 

INSERT [dbo].[LichSuMuaHang] ([MaLichSu], [MaNguoiDung], [NgayMua], [TongTien]) VALUES (16, 5, CAST(N'2025-02-23T13:36:54.477' AS DateTime), 47990000)
INSERT [dbo].[LichSuMuaHang] ([MaLichSu], [MaNguoiDung], [NgayMua], [TongTien]) VALUES (17, 1, CAST(N'2025-02-24T09:32:13.797' AS DateTime), 21490000)
INSERT [dbo].[LichSuMuaHang] ([MaLichSu], [MaNguoiDung], [NgayMua], [TongTien]) VALUES (18, 5, CAST(N'2025-02-24T17:46:23.937' AS DateTime), 25660000)
INSERT [dbo].[LichSuMuaHang] ([MaLichSu], [MaNguoiDung], [NgayMua], [TongTien]) VALUES (19, 5, CAST(N'2025-02-24T17:47:57.883' AS DateTime), 0)
INSERT [dbo].[LichSuMuaHang] ([MaLichSu], [MaNguoiDung], [NgayMua], [TongTien]) VALUES (20, 5, CAST(N'2025-02-24T17:48:46.347' AS DateTime), 0)
INSERT [dbo].[LichSuMuaHang] ([MaLichSu], [MaNguoiDung], [NgayMua], [TongTien]) VALUES (21, 5, CAST(N'2025-02-24T17:49:06.217' AS DateTime), 21490000)
SET IDENTITY_INSERT [dbo].[LichSuMuaHang] OFF
GO
INSERT [dbo].[LoaiHang] ([MaLoaiHang], [TenLoaiHang], [hinhanh]) VALUES (N'LH001', N'Màn Hình', N'fa-solid fa-desktop')
INSERT [dbo].[LoaiHang] ([MaLoaiHang], [TenLoaiHang], [hinhanh]) VALUES (N'LH002', N'Linh Kiện PC', N'fa-solid fa-keyboard')
INSERT [dbo].[LoaiHang] ([MaLoaiHang], [TenLoaiHang], [hinhanh]) VALUES (N'LH003', N'Thiết Bị Âm Thanh', N'fa-solid fa-headset')
INSERT [dbo].[LoaiHang] ([MaLoaiHang], [TenLoaiHang], [hinhanh]) VALUES (N'LH004', N'Apple', N'fa-brands fa-apple')
INSERT [dbo].[LoaiHang] ([MaLoaiHang], [TenLoaiHang], [hinhanh]) VALUES (N'LH005', N'Laptop', N'fa-solid fa-laptop')
GO
SET IDENTITY_INSERT [dbo].[NguoiDung] ON 

INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TenDangNhap], [MatKhau], [HoTen], [Email], [SoDienThoai], [VaiTro]) VALUES (1, N'Phúc Khang', N'1231122', N'Phan Huỳnh Phúc Khang', N'12312312abcas@gmail.com', N'0949468591', 0)
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TenDangNhap], [MatKhau], [HoTen], [Email], [SoDienThoai], [VaiTro]) VALUES (2, N'Sơn', N'123', N'Đỗ Quang Sơn', N'example2@gmail.com', N'0949463591', 1)
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TenDangNhap], [MatKhau], [HoTen], [Email], [SoDienThoai], [VaiTro]) VALUES (3, N'Nam', N'12345', N'Lương Huỳnh Nam', N'example3@gmail.com', N'0249468591', 1)
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TenDangNhap], [MatKhau], [HoTen], [Email], [SoDienThoai], [VaiTro]) VALUES (4, N'Laam', N'12334', N'Võ Lê Thanh Lâm', N'example4@gmail.com', N'0949468595', 0)
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TenDangNhap], [MatKhau], [HoTen], [Email], [SoDienThoai], [VaiTro]) VALUES (5, N'Tùng', N'123', N'Hà Thanh Tùng', N'25112002abcas@gmail.com', N'0949468521', 1)
SET IDENTITY_INSERT [dbo].[NguoiDung] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [Sale], [Price], [Title], [ThongTinChitiet], [MaLoaiHang]) VALUES (4, N'Laptop Acer Nitro 16 Phoenix AN16- 41-R5M4 (Đen)', N'This is a high-performance gaming laptop with the latest technology, designed for gaming enthusiasts and professionals alike. It features a sleek design with a powerful processor and graphics card, making it ideal for gaming, streaming, and productivity tasks.', 13.34, 25990000, N'Acer Nitro 16 Phoenix AN16- 41-R5M4 - Gaming Powerhouse', N'This model comes with a powerful AMD Ryzen 5 5600H processor, a 16-inch Full HD display, and an NVIDIA GeForce GTX 1650 graphics card. With a long-lasting battery and an efficient cooling system, it ensures smooth performance for long gaming sessions.', N'LH005')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [Sale], [Price], [Title], [ThongTinChitiet], [MaLoaiHang]) VALUES (5, N'Laptop MSI Cyborg 15 A12VE-412VN 15-12450H (Đen)', N'This is a high-performance laptop designed for gamers and professionals who need both power and portability. It features the latest Intel Core i5 processor, a dedicated NVIDIA graphics card, and a sleek, modern design.', 14.01, 21490000, N'MSI Cyborg 15 A12VE-412VN - Powerful Gaming Laptop', N'The MSI Cyborg 15 features an Intel Core i5-12450H processor, NVIDIA GeForce GTX 1650 graphics, and a 15.6-inch Full HD display. It is designed to handle high-end gaming and multitasking with ease, making it a great choice for gamers and power users.', N'LH005')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [Sale], [Price], [Title], [ThongTinChitiet], [MaLoaiHang]) VALUES (6, N'Laptop Gaming Acer Nitro 5 AN515-57-77KU NH.QDGSV.001', N'This is a powerful gaming laptop equipped with the latest Intel Core i7 processor and NVIDIA GeForce RTX graphics, perfect for high-end gaming and heavy multitasking. The laptop features a sleek design and advanced cooling system to ensure smooth performance.', 0, 25990000, N'Acer Nitro 5 - Ultimate Gaming Performance', N'The Acer Nitro 5 AN515-57-77KU comes with an Intel Core i7-11800H processor, 16GB RAM, 512GB SSD, and an NVIDIA GeForce RTX 3060 GPU. It boasts a 15.6-inch Full HD display with a high refresh rate, ensuring smooth and immersive gaming experience.', N'LH005')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [Sale], [Price], [Title], [ThongTinChitiet], [MaLoaiHang]) VALUES (7, N'Laptop Asus Vivobook co 151 E1504FA-NJ454W (AMD Ryzen 5-7520U)', N'This Asus Vivobook laptop comes with the latest AMD Ryzen 5 processor, offering excellent performance for both work and entertainment. With a sleek design and lightweight build, it is perfect for on-the-go users.', 13.89, 12490000, N'Asus Vivobook - Efficient and Portable', N'The laptop is powered by the AMD Ryzen 5 7520U, with a 15.6-inch Full HD screen, providing a balanced performance for casual gaming, work, and multimedia consumption. It also features a long-lasting battery and fast charging capabilities.', N'LH005')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [Sale], [Price], [Title], [ThongTinChitiet], [MaLoaiHang]) VALUES (8, N'MacBook Air M1 2020 13 inch (8GB/256GB SSD)', N'The MacBook Air M1 offers groundbreaking performance with Apple’s M1 chip. Lightweight, powerful, and energy-efficient, it’s perfect for both professionals and everyday users seeking excellent performance in a thin, portable package.', 37.25, 18190000, N'MacBook Air M1 - Sleek and Powerful', N'The 2020 MacBook Air features Apple’s custom M1 chip, providing unmatched power and efficiency for everyday tasks and heavy workloads. It includes 8GB of RAM and 256GB SSD storage, offering smooth performance and high-speed data access.', N'LH005')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [Sale], [Price], [Title], [ThongTinChitiet], [MaLoaiHang]) VALUES (12, N'iPhone 15 Pro Max 256GB', N'Experience the future of smartphones with iPhone 15 Pro Max, featuring a stunning display, powerful performance, and advanced camera capabilities.', 16.29, 29290000, N'iPhone 15 Pro Max - Innovation at its Best', N'With its advanced A17 Bionic chip, improved camera system, and 5G capabilities, the iPhone 15 Pro Max is the ultimate smartphone for those seeking cutting-edge technology.', N'LH004')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [Sale], [Price], [Title], [ThongTinChitiet], [MaLoaiHang]) VALUES (13, N'Laptop Acer Nitro 5 Tiger AN515-58-52SP', N'Powerful gaming laptop with high-end graphics and performance for smooth gameplay and multitasking.', 21.13, 21490000, N'Acer Nitro 5 - Performance in Gaming', N'The Acer Nitro 5 comes with a powerful Intel processor and NVIDIA graphics card, ensuring seamless gaming experiences, while also offering a sleek and durable design.', N'LH005')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [Sale], [Price], [Title], [ThongTinChitiet], [MaLoaiHang]) VALUES (14, N'PC PV Home Office 50096 (153 12400/8GB/500GB SSD/No OS)', N'Affordable and efficient PC for home or office use, offering great performance for everyday tasks.', 23.69, 9149000, N'PC PV Home Office - Affordable Power', N'This PC is equipped with a powerful Intel i5 processor, 8GB RAM, and a 500GB SSD for smooth multitasking and quick boot times. Ideal for home or office use.', N'LH002')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [Sale], [Price], [Title], [ThongTinChitiet], [MaLoaiHang]) VALUES (15, N'CPU INTEL Core i5-12400 (6/12 2.50 GHz - 4.40 GHz, 18MB) - 1700', N'Reliable and powerful processor for building a high-performance PC with great efficiency.', 39.24, 4170000, N'Intel Core i5-12400 - Power and Efficiency', N'The Intel Core i5-12400 processor offers excellent multi-core performance, making it ideal for gaming, content creation, and everyday computing tasks.', N'LH002')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [Sale], [Price], [Title], [ThongTinChitiet], [MaLoaiHang]) VALUES (16, N'PC PV Gaming AN50141 (Intel Core i7-12/00r12x 1603/50068)', N'High-performance gaming PC with top-tier specs for gaming enthusiasts and power users.', 0, 47990000, N'PC PV Gaming - Ultimate Gaming Experience', N'This gaming PC comes equipped with a high-end Intel Core i7 processor and powerful graphics, delivering an excellent gaming experience with top-notch performance and speed.', N'LH002')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [Sale], [Price], [Title], [ThongTinChitiet], [MaLoaiHang]) VALUES (17, N'PC Dell Mienware Aurore Rix /029/352 (Intel Core 19)', N'PC Dell Mienware Aurore Rix /029/352 là một sản phẩm máy tính để bàn hiệu suất cao, trang bị bộ vi xử lý Intel Core i9 với khả năng xử lý nhanh chóng, phù hợp cho các công việc nặng và chơi game. Thiết kế hiện đại, mạnh mẽ.', 0, 119390000, N'PC Dell Mienware Aurore Rix /029/352 (Intel Core 19) - Máy tính để bàn mạnh mẽ với Intel Core i9, RAM 32GB, GPU NVIDIA RTX 3070', N'PC Dell Mienware Aurore Rix /029/352 được trang bị Intel Core i9, RAM 32GB, GPU NVIDIA RTX 3070, bộ nhớ SSD 1TB, mang lại hiệu suất cực cao cho các công việc đồ họa và gaming. Thiết kế phong cách, dễ dàng nâng cấp.', N'LH002')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [Sale], [Price], [Title], [ThongTinChitiet], [MaLoaiHang]) VALUES (18, N'PC Phong VŨ Gaming IN50131 (Intel Core I5 12400F/2x8GB/S12GB)', N'PC Phong VŨ Gaming IN50131 là một sản phẩm máy tính để bàn chơi game với bộ vi xử lý Intel Core I5 12400F, RAM 16GB, và card đồ họa NVIDIA. Đây là lựa chọn lý tưởng cho game thủ và những người yêu thích hiệu suất cao.', 20.21, 16190000, N'PC Phong VŨ Gaming IN50131 (Intel Core I5 12400F/2x8GB/S12GB) - Máy tính để bàn chơi game, CPU Intel Core i5, RAM 16GB, GPU mạnh mẽ', N'PC Phong VŨ Gaming IN50131 được trang bị CPU Intel Core I5 12400F, RAM 16GB, GPU NVIDIA, bộ nhớ SSD 512GB, mang đến hiệu suất mạnh mẽ cho các trò chơi và công việc đồ họa. Thiết kế hiện đại và chắc chắn.', N'LH002')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [Sale], [Price], [Title], [ThongTinChitiet], [MaLoaiHang]) VALUES (19, N'PC HP ProOne 440 G9 AIO 6M3X9PA', N'PC HP ProOne 440 G9 AIO là một máy tính All-in-One với màn hình 23.8 inch và cấu hình mạnh mẽ. Được trang bị bộ vi xử lý Intel Core i5, RAM 8GB và ổ cứng SSD 512GB. Sản phẩm này lý tưởng cho các công việc văn phòng và giải trí.', 3.88, 22290000, N'PC HP ProOne 440 G9 AIO 6M3X9PA - Máy tính All-in-One với Intel Core i5 và màn hình 23.8 inch', N'PC HP ProOne 440 G9 AIO 6M3X9PA với màn hình 23.8 inch, bộ vi xử lý Intel Core i5, RAM 8GB, SSD 512GB, mang lại hiệu suất ổn định cho công việc hàng ngày. Thiết kế gọn gàng, phù hợp cho không gian làm việc nhỏ.', N'LH002')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [Sale], [Price], [Title], [ThongTinChitiet], [MaLoaiHang]) VALUES (20, N'Apple MacBook Pro M3 Max 16.2" (48/118 5501)', N'Apple MacBook Pro M3 Max là chiếc laptop cao cấp với màn hình Retina 16.2 inch, cấu hình mạnh mẽ với vi xử lý M3 Max, RAM 32GB, và ổ cứng SSD 1TB. Đây là sự lựa chọn hoàn hảo cho công việc sáng tạo và xử lý đồ họa.', 0, 112290000, N'Apple MacBook Pro M3 Max 16.2" - Laptop cao cấp với vi xử lý M3 Max và màn hình Retina', N'Apple MacBook Pro M3 Max trang bị vi xử lý M3 Max mạnh mẽ, màn hình Retina sắc nét, RAM 32GB, SSD 1TB, là lựa chọn lý tưởng cho các chuyên gia sáng tạo và nhà thiết kế đồ họa. Thiết kế mỏng nhẹ, dễ dàng mang theo.', N'LH004')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [Sale], [Price], [Title], [ThongTinChitiet], [MaLoaiHang]) VALUES (21, N'Tai nghe không dây Gaming ZIDLI AH1 (2.4G/ 7.1 & RGB Real)', N'Tai nghe không dây ZIDLI AH1 với công nghệ âm thanh 7.1, kết nối qua sóng 2.4GHz, và hiệu ứng RGB nổi bật. Được thiết kế đặc biệt cho game thủ, mang đến trải nghiệm âm thanh sống động và thoải mái.', 7.65, 1099000, N'Tai nghe Gaming ZIDLI AH1 - Âm thanh 7.1, RGB, kết nối không dây', N'Tai nghe ZIDLI AH1 với công nghệ âm thanh 7.1, hiệu ứng RGB đẹp mắt, và kết nối không dây qua sóng 2.4GHz mang lại trải nghiệm chơi game tuyệt vời. Thiết kế đeo thoải mái, thích hợp cho game thủ dài giờ.', N'LH003')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [Sale], [Price], [Title], [ThongTinChitiet], [MaLoaiHang]) VALUES (22, N'Màn hình LCD MSI 32" OPTIX G32C4X', N'Màn hình LCD MSI 32" OPTIX G32C4X với độ phân giải Full HD (1920 x 1080) và tần số quét 250Hz, mang đến trải nghiệm chơi game mượt mà và sắc nét. Màn hình VA với góc nhìn rộng và màu sắc sống động.', 12.55, 5990000, N'Màn hình LCD MSI 32" OPTIX G32C4X - 250Hz và độ phân giải Full HD', N'Màn hình MSI 32" OPTIX G32C4X hỗ trợ tần số quét 250Hz, phù hợp cho các game thủ yêu cầu độ mượt mà cao. Độ phân giải Full HD và công nghệ VA giúp cải thiện chất lượng hình ảnh rõ nét, sống động.', N'LH001')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [Sale], [Price], [Title], [ThongTinChitiet], [MaLoaiHang]) VALUES (23, N'Màn hình LCD SAMSUNG 28" LU28R550UQEXXV', N'Màn hình SAMSUNG 28" LU28R550UQEXXV với độ phân giải 4K (3840 x 2160), công nghệ IPS và tần số quét 60Hz. Phù hợp cho các nhu cầu làm việc và giải trí với hình ảnh sắc nét và màu sắc chính xác.', 17.57, 5350000, N'Màn hình LCD SAMSUNG 28" LU28R550UQEXXV - 4K và công nghệ IPS', N'Màn hình SAMSUNG LU28R550UQEXXV với độ phân giải 4K mang lại hình ảnh sắc nét, công nghệ IPS giúp tăng cường màu sắc và góc nhìn rộng. Tần số quét 60Hz và thời gian phản hồi 4 ms là sự lựa chọn lý tưởng cho công việc và giải trí.', N'LH001')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [Sale], [Price], [Title], [ThongTinChitiet], [MaLoaiHang]) VALUES (24, N'Smart Tivi Samsung 4K UHD 55 inch UA55AU7700', N'Tivi Samsung 4K UHD 55 inch UA55AU7700 mang lại hình ảnh sắc nét với độ phân giải 4K, cùng các công nghệ tiên tiến như HDR và kết nối thông minh. Phù hợp cho không gian gia đình và các nhu cầu giải trí.', 20.25, 9490000, N'Smart Tivi Samsung 4K UHD 55 inch UA55AU7700 - Hình ảnh sắc nét và kết nối thông minh', N'Tivi Samsung UA55AU7700 với độ phân giải 4K và công nghệ HDR, mang đến những trải nghiệm xem cực kỳ sống động. Kết nối thông minh giúp dễ dàng truy cập các ứng dụng và nội dung trực tuyến.', N'LH002')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [Sale], [Price], [Title], [ThongTinChitiet], [MaLoaiHang]) VALUES (25, N'Google Tivi TCL 4K 55 inch 55P745', N'Tivi TCL 4K 55 inch 55P745 với độ phân giải 4K, khả năng kết nối Google Assistant và các ứng dụng giải trí trực tuyến. Thiết kế hiện đại, phù hợp cho các không gian sống hiện đại.', 38.49, 7990000, N'Google Tivi TCL 4K 55 inch 55P745 - Kết nối Google Assistant và độ phân giải 4K', N'Tivi TCL 4K 55P745 với màn hình 55 inch và độ phân giải 4K mang lại chất lượng hình ảnh tuyệt vời. Hỗ trợ Google Assistant và nhiều ứng dụng giải trí trực tuyến giúp bạn dễ dàng truy cập nội dung yêu thích.', N'LH002')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [Sale], [Price], [Title], [ThongTinChitiet], [MaLoaiHang]) VALUES (26, N'Google Tivi Coocaa 70C9 4K 70 inch', N'Tivi Coocaa 70 inch với độ phân giải 4K, thiết kế màn hình lớn cho không gian rộng. Tích hợp Google Assistant và các ứng dụng giải trí trực tuyến.', 63.9, 8990000, N'Google Tivi Coocaa 70C9 4K 70 inch - Màn hình lớn và độ phân giải 4K', N'Tivi Coocaa 70C9 với màn hình 70 inch và độ phân giải 4K mang lại trải nghiệm giải trí sống động. Tích hợp Google Assistant và dễ dàng truy cập các dịch vụ giải trí trực tuyến.', N'LH002')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [Sale], [Price], [Title], [ThongTinChitiet], [MaLoaiHang]) VALUES (27, N'Laptop Acer Nitro 5 Tiger AN515-58-52SP', N'Laptop Acer Nitro 5 Tiger AN515-58-52SP với cấu hình mạnh mẽ cho các game thủ và người dùng cần hiệu suất cao. Màn hình lớn, card đồ họa rời và bộ vi xử lý mạnh mẽ sẽ đáp ứng tốt nhu cầu chơi game và làm việc đa nhiệm.', 27.13, 21490000, N'Laptop Acer Nitro 5 Tiger AN515-58-52SP - Hiệu suất cao cho game thủ', N'Laptop Acer Nitro 5 Tiger AN515-58-52SP với bộ vi xử lý mạnh mẽ và card đồ họa rời, là sự lựa chọn lý tưởng cho game thủ và những ai cần một chiếc laptop đa năng với hiệu suất cao.', N'LH003')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [Sale], [Price], [Title], [ThongTinChitiet], [MaLoaiHang]) VALUES (28, N'Laptop ACER Aspire 7 A715-42G-R05G', N'Laptop ACER Aspire 7 A715-42G-R05G với cấu hình mạnh mẽ, màn hình lớn và thiết kế hiện đại. Phù hợp cho người dùng cần làm việc và giải trí cùng lúc.', 26.84, 14990000, N'Laptop ACER Aspire 7 A715-42G-R05G - Màn hình lớn và cấu hình mạnh mẽ', N'Laptop ACER Aspire 7 A715-42G-R05G sở hữu bộ vi xử lý mạnh mẽ, card đồ họa rời, mang đến hiệu suất cao cho công việc và giải trí. Màn hình rộng, thiết kế bền bỉ.', N'LH003')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [Sale], [Price], [Title], [ThongTinChitiet], [MaLoaiHang]) VALUES (29, N'Laptop ASUS Vivobook 15 OLED A1505VA-L1114W', N'Laptop ASUS Vivobook 15 OLED A1505VA-L1114W với màn hình OLED sắc nét, phù hợp cho người dùng đam mê xem phim và chỉnh sửa đồ họa. Cấu hình ổn định cho công việc và giải trí.', 10.01, 17990000, N'Laptop ASUS Vivobook 15 OLED A1505VA-L1114W - Màn hình OLED và hiệu suất ổn định', N'Laptop ASUS Vivobook 15 OLED A1505VA-L1114W với màn hình OLED mang lại màu sắc sống động, phù hợp cho công việc đồ họa và giải trí. Cấu hình mạnh mẽ giúp người dùng làm việc hiệu quả.', N'LH003')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [Sale], [Price], [Title], [ThongTinChitiet], [MaLoaiHang]) VALUES (30, N'Laptop Asus Vivobook Go 15 E1504FA-NJ454W', N'Laptop Asus Vivobook Go 15 với cấu hình hợp lý cho học tập và làm việc văn phòng. Thiết kế gọn nhẹ và dễ dàng mang theo.', 13.8, 12490000, N'Laptop Asus Vivobook Go 15 E1504FA-NJ454W - Thiết kế gọn nhẹ và cấu hình hợp lý', N'Laptop Asus Vivobook Go 15 là lựa chọn tuyệt vời cho sinh viên và người làm văn phòng. Với cấu hình ổn định và thiết kế nhẹ nhàng, dễ dàng mang theo bất cứ đâu.', N'LH003')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [Sale], [Price], [Title], [ThongTinChitiet], [MaLoaiHang]) VALUES (31, N'Laptop Acer Nitro 16 Phoenix AN16-41-R5M4', N'Laptop Acer Nitro 16 Phoenix AN16-41-R5M4 với cấu hình mạnh mẽ, hỗ trợ các trò chơi nặng và đa nhiệm hiệu quả. Thiết kế hiện đại và các tính năng tối ưu cho game thủ.', 13.34, 25990000, N'Laptop Acer Nitro 16 Phoenix AN16-41-R5M4 - Hiệu suất cao và thiết kế hiện đại', N'Laptop Acer Nitro 16 Phoenix AN16-41-R5M4 mang đến hiệu suất vượt trội với bộ vi xử lý mới nhất và card đồ họa mạnh mẽ, phục vụ tốt cho game thủ và công việc đòi hỏi tài nguyên lớn.', N'LH003')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [Sale], [Price], [Title], [ThongTinChitiet], [MaLoaiHang]) VALUES (32, N'Laptop Asus TUF Gaming F15 FX506HE-HN075W', N'Laptop Asus TUF Gaming F15 FX506HE-HN075W với cấu hình mạnh mẽ và thiết kế cứng cáp, phù hợp cho các game thủ yêu cầu độ bền cao và hiệu suất ổn định.', 0, 22990000, N'Laptop Asus TUF Gaming F15 FX506HE-HN075W - Bền bỉ và hiệu suất vượt trội', N'Laptop Asus TUF Gaming F15 FX506HE-HN075W có thiết kế mạnh mẽ và khả năng vận hành mượt mà, phù hợp với các trò chơi và ứng dụng nặng.', N'LH003')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [Sale], [Price], [Title], [ThongTinChitiet], [MaLoaiHang]) VALUES (33, N'Laptop Acer Swift 3 SF314-512-56QN', N'Laptop Acer Swift 3 SF314-512-56QN với bộ vi xử lý i5 mạnh mẽ, thiết kế mỏng nhẹ, rất thích hợp cho những người cần một chiếc laptop di động cho công việc và học tập.', 25.41, 18490000, N'Laptop Acer Swift 3 SF314-512-56QN - Mỏng nhẹ và hiệu suất cao', N'Laptop Acer Swift 3 SF314-512-56QN là lựa chọn hoàn hảo cho người dùng di động, với thiết kế tinh tế và hiệu suất mạnh mẽ cho công việc và giải trí.', N'LH003')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [Sale], [Price], [Title], [ThongTinChitiet], [MaLoaiHang]) VALUES (34, N'Laptop Lenovo IdeaPad Slim 5 14IAH8', N'Laptop Lenovo IdeaPad Slim 5 14IAH8 với thiết kế mỏng nhẹ, phù hợp cho người dùng di chuyển nhiều. Cấu hình mạnh mẽ, đủ sức xử lý công việc văn phòng và giải trí cơ bản.', 11.44, 15490000, N'Laptop Lenovo IdeaPad Slim 5 14IAH8 - Thiết kế mỏng nhẹ và hiệu suất ổn định', N'Laptop Lenovo IdeaPad Slim 5 với thiết kế mỏng nhẹ, phù hợp cho người dùng cần một chiếc laptop di động và hiệu suất ổn định cho công việc và học tập.', N'LH003')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [Sale], [Price], [Title], [ThongTinChitiet], [MaLoaiHang]) VALUES (35, N'Laptop Acer Aspire 3 A315-59-51X8', N'Laptop Acer Aspire 3 A315-59-51X8 với thiết kế chắc chắn và hiệu suất ổn định. Thích hợp cho người dùng văn phòng và học sinh, sinh viên.', 16.14, 12990000, N'Laptop Acer Aspire 3 A315-59-51X8 - Hiệu suất ổn định và giá hợp lý', N'Laptop Acer Aspire 3 A315-59-51X8 cung cấp hiệu suất ổn định cho công việc văn phòng và học tập. Thiết kế bền bỉ, dễ sử dụng và giá thành hợp lý.', N'LH003')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [Sale], [Price], [Title], [ThongTinChitiet], [MaLoaiHang]) VALUES (36, N'Laptop Acer Nitro 5 Tiger AN515-58-769J', N'Laptop Acer Nitro 5 Tiger AN515-58-769J với cấu hình mạnh mẽ, phù hợp cho các game thủ và người dùng yêu cầu hiệu suất cao.', 30.83, 21990000, N'Laptop Acer Nitro 5 Tiger AN515-58-769J - Cấu hình mạnh mẽ và hiệu suất cao', N'Laptop Acer Nitro 5 Tiger AN515-58-769J mang lại hiệu suất cao với bộ vi xử lý mạnh mẽ và card đồ họa rời, phục vụ tốt cho các trò chơi và công việc đa nhiệm.', N'LH003')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [Sale], [Price], [Title], [ThongTinChitiet], [MaLoaiHang]) VALUES (37, N'Laptop Acer Aspire 5 A515-58GM-59LJ', N'Laptop Acer Aspire 5 A515-58GM-59LJ với bộ vi xử lý Intel i5 thế hệ mới, thiết kế mỏng nhẹ và hiệu suất ổn định cho các tác vụ văn phòng, học tập và giải trí.', 17.08, 16990000, N'Laptop Acer Aspire 5 A515-58GM-59LJ - Hiệu suất cao và thiết kế mỏng nhẹ', N'Laptop Acer Aspire 5 A515-58GM-59LJ với cấu hình i5-13420H, màn hình sắc nét và thời lượng pin lâu dài, là lựa chọn lý tưởng cho học sinh, sinh viên và người làm văn phòng.', N'LH003')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [Sale], [Price], [Title], [ThongTinChitiet], [MaLoaiHang]) VALUES (38, N'iPhone 15 128GB', N'iPhone 15 128GB với thiết kế sang trọng, màn hình Super Retina XDR và hiệu suất vượt trội, giúp bạn trải nghiệm mượt mà mọi tác vụ.', 0, 22990000, N'iPhone 15 128GB - Thiết kế sang trọng và hiệu suất mượt mà', N'iPhone 15 128GB mang lại hiệu suất cao, camera chất lượng và màn hình sắc nét. Đây là sự lựa chọn lý tưởng cho những ai yêu thích công nghệ cao.', N'LH004')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [Sale], [Price], [Title], [ThongTinChitiet], [MaLoaiHang]) VALUES (39, N'Máy triệt lông lạnh cá nhân Halio IPL Cooling Hair Removal Device', N'Máy triệt lông Halio IPL Cooling sử dụng công nghệ IPL và làm lạnh giúp loại bỏ lông hiệu quả và an toàn, phù hợp cho việc sử dụng tại nhà.', 40.25, 2390000, N'Máy triệt lông Halio IPL Cooling Hair Removal Device - Công nghệ IPL hiện đại', N'Máy triệt lông Halio IPL Cooling giúp bạn loại bỏ lông hiệu quả mà không gây đau đớn, thích hợp cho việc sử dụng tại nhà, với thiết kế tiện dụng và dễ sử dụng.', N'LH002')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [Sale], [Price], [Title], [ThongTinChitiet], [MaLoaiHang]) VALUES (40, N'Màn hình LCD Samsung 24 inch LS24C310EAEXXV', N'Màn hình LCD Samsung 24 inch LS24C310EAEXXV với độ phân giải Full HD, tấm nền IPS mang lại hình ảnh sắc nét, góc nhìn rộng và tốc độ làm tươi 75Hz.', 12.56, 2290000, N'Màn hình LCD Samsung 24 inch LS24C310EAEXXV - Độ phân giải Full HD và tấm nền IPS', N'Màn hình Samsung 24 inch với thiết kế mỏng nhẹ, hình ảnh sắc nét và khả năng hiển thị màu sắc chính xác nhờ công nghệ tấm nền IPS. Phù hợp cho cả công việc và giải trí.', N'LH001')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [Sale], [Price], [Title], [ThongTinChitiet], [MaLoaiHang]) VALUES (41, N'Laptop Lenovo IdeaPad 3 15IAU7 - 82RK001QVN', N'Laptop Lenovo IdeaPad 3 với thiết kế tinh tế, hiệu suất ổn định nhờ bộ vi xử lý i5 thế hệ thứ 12, thích hợp cho học tập và làm việc văn phòng.', 6.67, 16790000, N'Laptop Lenovo IdeaPad 3 15IAU7 - 82RK001QVN - Hiệu suất ổn định cho công việc và học tập', N'Laptop Lenovo IdeaPad 3 15IAU7 với cấu hình i5-1235U, màn hình rộng 15.6 inch, là lựa chọn lý tưởng cho người dùng cần hiệu suất ổn định để làm việc và học tập.', N'LH005')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [Sale], [Price], [Title], [ThongTinChitiet], [MaLoaiHang]) VALUES (44, N'Tai nghe DAREU EH722X PRO (Black)', N'DAREU EH722X PRO (Black) là tai nghe gaming nổi bật với thiết kế hiện đại, âm thanh sống động và độ bền cao, mang đến trải nghiệm tối ưu cho game thủ.', 0, 699, N'Tai nghe DAREU EH722X PRO (Black) – Hiệu suất vượt trội, thiết kế ấn tượng', N'EH722X PRO có ngoại hình cứng cáp, tông màu đen chủ đạo cùng dải LED RGB tinh tế. Cấu trúc khung kim loại chắc chắn, trọng lượng nhẹ, giúp giảm áp lực lên đầu khi đeo lâu. Đệm tai mềm mại, ôm trọn tai, cách âm tốt, tăng cường sự tập trung khi chơi game.', N'LH003')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [Sale], [Price], [Title], [ThongTinChitiet], [MaLoaiHang]) VALUES (46, N'Loa Bluetooth Microlab U210 (2.1)', N'Loa hỗ trợ kết nối không dây tiên tiến Bluetooth 5.0 và tích hợp jack cắm 3.5mm với ngõ vào RCA. Nhờ đó, người dùng chỉ cần cắm vào mà không cần băn khoăn về việc chọn dây cáp tín hiệu từ nguồn phát đến loa.', 46, 290000, N'Loa Bluetooth Microlab U210 mang đến chất lượng âm thanh rõ ràng', N'Loa Microlab U210 được thiết kế với kiểu dáng vuông vức, tông màu đen hiện đại dễ dàng bố trí ở nhiều không gian. Hệ thống loa hiện đại gồm 2 loa vệ tinh và 1 loa siêu trầm. Bảng điều khiển ở mặt trước của loa siêu trầm, giúp bạn điều chỉnh âm lượng một cách nhanh chóng và thuận tiện.', N'LH003')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [Sale], [Price], [Title], [ThongTinChitiet], [MaLoaiHang]) VALUES (47, N'iPad Mini Wifi 7 256GB + Cellular', N'iPad Mini Wifi 7 256GB + Cellular sở hữu vỏ kim loại nguyên khối, tạo cảm giác chắc chắn và cao cấp. Với độ dày chỉ 6.3mm và trọng lượng 297g, sản phẩm dễ dàng cầm nắm và mang theo khi di chuyển. Thiết kế này giúp iPad Mini trở thành thiết bị hoàn hảo cho người dùng yêu thích sự gọn nhẹ mà vẫn đảm bảo tính thẩm mỹ.', 7, 20490000, N'Thiết kế Ipad Mini Wifi 7 256GB + Cellular mỏng nhẹ và sang trọng ', N'IPad Mini Wifi 7 256GB + Cellular à phiên bản hoàn hảo dành cho người dùng muốn trải nghiệm thiết bị nhỏ gọn nhưng đầy sức mạnh. Với thiết kế tinh tế, hiệu năng mạnh mẽ từ chip Apple A17 Pro và màn hình sắc nét, đây là lựa chọn lý tưởng cho cả giải trí và công việc. Ngoài phiên bản màu xám không gian, ipad mini 7 256GB + Cellular còn có các phiên bản màu sắc khác đáp ứng đa dạng người dùng như tím, màu ánh sao và màu xanh dương. ', N'LH004')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [Sale], [Price], [Title], [ThongTinChitiet], [MaLoaiHang]) VALUES (49, N'Màn hình LG 24QP500 24 inch (2560x1440/IPS/75Hz/5ms)', N'Màn hình LG 24QP500 có được thiết kế tràn viền độc đáo, cho phép người dùng có thể nhìn rõ được mỗi một chi tiết điểm ảnh. Đồng thời, màn hình còn đem đến được cho bạn một hình ảnh chính xác đến kinh ngạc, tối ưu hóa được môi trường và không gian làm việc của bạn.', 23, 4100000, N'Màn hình LG 24QP500 với thiết kế tràn viền độc đáo, sở hữu công nghệ hình ảnh HDR hiện đại', N'Màn hình máy tính LG 24QP500 là kiểu màn hình phẳng, sở hữu được công nghệ hình ảnh HDR hiện đại, kết hợp cùng chế độ bảo vệ mắt tối ưu. Không những thế, màn hình còn có được chế độ Color Weakness hỗ trợ mù màu. Đây chính là dòng sản phẩm dành cho đối tượng nhân viên văn phòng chuyên nghiệp.', N'LH001')
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[ThongTinThuocTinh] ON 

INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (83, N'TT001', 4, N'Acer')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (84, N'TT002', 4, N'Acer Nitro 16 Phoenix AN16-41-R5M4')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (85, N'TT003', 4, N'AMD Ryzen 5 5600H')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (86, N'TT004', 4, N'Gaming Laptop')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (87, N'TT005', 4, N'NVIDIA GeForce GTX 1650')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (88, N'TT006', 4, N'16 inch')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (89, N'TT007', 4, N'8GB')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (90, N'TT008', 4, N'512GB SSD')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (91, N'TT009', 4, N'Full HD (1920x1080)')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (92, N'TT001', 5, N'MSI')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (93, N'TT002', 5, N'MSI Cyborg 15 A12VE-412VN')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (94, N'TT003', 5, N'Intel Core i5-12450H')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (95, N'TT004', 5, N'Gaming Laptop')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (96, N'TT005', 5, N'NVIDIA GeForce GTX 1650')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (97, N'TT006', 5, N'15.6 inch')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (98, N'TT007', 5, N'8GB')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (99, N'TT008', 5, N'512GB SSD')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (100, N'TT009', 5, N'Full HD (1920x1080)')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (101, N'TT001', 6, N'Acer')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (102, N'TT002', 6, N'Acer Nitro 5 AN515-57-77KU')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (103, N'TT003', 6, N'Intel Core i7-11800H')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (104, N'TT004', 6, N'Gaming Laptop')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (105, N'TT005', 6, N'NVIDIA GeForce RTX 3060')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (106, N'TT006', 6, N'15.6 inch')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (107, N'TT007', 6, N'16GB')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (108, N'TT008', 6, N'512GB SSD')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (109, N'TT009', 6, N'Full HD (1920x1080)')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (110, N'TT001', 7, N'Asus')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (111, N'TT002', 7, N'Vivobook co 151 E1504FA-NJ454W')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (112, N'TT003', 7, N'AMD Ryzen 5-7520U')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (113, N'TT004', 7, N'Miễn phí học online, văn phòng')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (114, N'TT005', 7, N'Integrated Radeon Graphics')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (115, N'TT006', 7, N'15.6 inch')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (116, N'TT007', 7, N'8 GB')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (117, N'TT008', 7, N'512 GB SSD')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (118, N'TT009', 7, N'Full HD 1920x1080')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (119, N'TT001', 8, N'Apple')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (120, N'TT002', 8, N'MacBook Air M1 2020')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (121, N'TT003', 8, N'Apple M1 Chip')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (122, N'TT004', 8, N'Mọi nhu cầu sử dụng')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (123, N'TT005', 8, N'Apple GPU')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (124, N'TT006', 8, N'13 inch')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (125, N'TT007', 8, N'8 GB')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (126, N'TT008', 8, N'256 GB SSD')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (127, N'TT009', 8, N'2560x1600 Retina Display')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (128, N'TT021', 12, N'iPhone 15 Pro Max')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (129, N'TT022', 12, N'Space Black')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (130, N'TT023', 12, N'iPhone 15 Series')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (131, N'TT024', 12, N'Cao cấp')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (132, N'TT025', 12, N'USB-C')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (133, N'TT001', 13, N'Acer')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (134, N'TT002', 13, N'Nitro 5')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (135, N'TT003', 13, N'Intel Core i5')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (136, N'TT004', 13, N'Gaming')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (137, N'TT005', 13, N'NVIDIA GeForce GTX 1650')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (138, N'TT006', 13, N'15.6 inch')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (139, N'TT007', 13, N'8GB')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (140, N'TT008', 13, N'512GB SSD')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (141, N'TT009', 13, N'1920x1080')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (148, N'TT026', 15, N'Intel')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (149, N'TT027', 15, N'CPU')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (150, N'TT028', 15, N'Không áp dụng')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (151, N'TT029', 15, N'Không có card đồ họa')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (152, N'TT030', 15, N'Văn phòng / Gaming')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (153, N'TT031', 15, N'Không áp dụng')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (154, N'TT026', 16, N'PV')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (155, N'TT027', 16, N'PC')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (156, N'TT028', 16, N'Mainboard cho Gaming')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (157, N'TT029', 16, N'Không có card đồ họa')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (158, N'TT030', 16, N'Gaming')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (159, N'TT031', 16, N'Không có')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (160, N'TT026', 17, N'Dell')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (161, N'TT027', 17, N'PC')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (162, N'TT028', 17, N'Mainboard cho Gaming')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (163, N'TT029', 17, N'Không có card đồ họa')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (164, N'TT030', 17, N'Gaming')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (165, N'TT031', 17, N'Không có')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (166, N'TT026', 18, N'Phong Vũ')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (167, N'TT027', 18, N'PC')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (168, N'TT028', 18, N'Mainboard cho Gaming')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (169, N'TT029', 18, N'Không có card đồ họa')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (170, N'TT030', 18, N'Gaming')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (171, N'TT031', 18, N'Không có')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (172, N'TT026', 19, N'HP')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (173, N'TT027', 19, N'PC')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (174, N'TT028', 19, N'AIO (All-In-One)')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (175, N'TT029', 19, N'Không có card đồ họa')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (176, N'TT030', 19, N'Văn phòng')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (177, N'TT031', 19, N'Không có')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (178, N'TT021', 20, N'MacBook Pro')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (179, N'TT022', 20, N'Silver')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (180, N'TT023', 20, N'M3 Max')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (181, N'TT024', 20, N'Cao cấp / Công việc chuyên nghiệp')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (182, N'TT025', 20, N'USB-C')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (183, N'TT016', 21, N'ZIDLI')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (184, N'TT017', 21, N'Tai nghe')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (185, N'TT018', 21, N'AH1')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (186, N'TT019', 21, N'2.4G (Wireless)')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (187, N'TT020', 21, N'50mW')
GO
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (188, N'TT010', 22, N'MSI')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (189, N'TT011', 22, N'32 inch')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (190, N'TT012', 22, N'165Hz')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (191, N'TT013', 22, N'1ms')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (192, N'TT014', 22, N'2560x1440')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (193, N'TT015', 22, N'Gaming')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (194, N'TT010', 23, N'Samsung')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (195, N'TT011', 23, N'28 inch')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (196, N'TT012', 23, N'75Hz')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (197, N'TT013', 23, N'4ms')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (198, N'TT014', 23, N'3840x2160')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (199, N'TT015', 23, N'Văn phòng')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (200, N'TT026', 24, N'Samsung')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (201, N'TT027', 24, N'Smart Tivi')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (202, N'TT028', 24, N'UA55AU7700')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (203, N'TT030', 24, N'Giải trí, Gia đình')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (204, N'TT031', 24, N'HDMI, USB')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (205, N'TT026', 25, N'TCL')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (206, N'TT027', 25, N'Smart Tivi')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (207, N'TT028', 25, N'55P745')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (208, N'TT030', 25, N'Giải trí, Gia đình')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (209, N'TT031', 25, N'HDMI, USB')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (210, N'TT026', 26, N'Coocaa')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (211, N'TT027', 26, N'Smart Tivi')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (212, N'TT028', 26, N'70C9')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (213, N'TT030', 26, N'Giải trí, Gia đình')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (214, N'TT031', 26, N'HDMI, USB')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (215, N'TT016', 27, N'Acer')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (216, N'TT017', 27, N'Laptop')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (217, N'TT018', 27, N'Nitro 5 Tiger AN515-58-52SP')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (218, N'TT019', 27, N'USB-C, HDMI, Wi-Fi 6')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (219, N'TT020', 27, N'50mW')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (220, N'TT016', 28, N'Acer')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (221, N'TT017', 28, N'Laptop')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (222, N'TT018', 28, N'Aspire 7 A715-42G-R05G')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (223, N'TT019', 28, N'USB-C, HDMI, Wi-Fi 5')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (224, N'TT020', 28, N'45mW')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (230, N'TT016', 30, N'Asus')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (231, N'TT017', 30, N'Laptop')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (232, N'TT018', 30, N'Vivobook Go 15 E1504FA-NJ454W')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (233, N'TT019', 30, N'USB-C, HDMI, Wi-Fi 5')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (234, N'TT020', 30, N'35mW')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (235, N'TT016', 31, N'Acer')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (236, N'TT017', 31, N'Laptop')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (237, N'TT018', 31, N'Nitro 16 Phoenix AN16-41-R5M4')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (238, N'TT019', 31, N'USB-C, HDMI, Wi-Fi 6')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (239, N'TT020', 31, N'55mW')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (240, N'TT016', 32, N'Asus')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (241, N'TT017', 32, N'Laptop')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (242, N'TT018', 32, N'TUF Gaming F15 FX506HE-HN075W')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (243, N'TT019', 32, N'USB-C, HDMI, Wi-Fi 6')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (244, N'TT020', 32, N'65mW')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (245, N'TT016', 33, N'Acer')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (246, N'TT017', 33, N'Laptop')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (247, N'TT018', 33, N'Swift 3 SF314-512-56QN')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (248, N'TT019', 33, N'USB-C, HDMI, Wi-Fi 5')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (249, N'TT020', 33, N'40mW')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (250, N'TT016', 34, N'Lenovo')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (251, N'TT017', 34, N'Laptop')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (252, N'TT018', 34, N'IdeaPad Slim 5 14IAH8')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (253, N'TT019', 34, N'USB-C, HDMI, Wi-Fi 5')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (254, N'TT020', 34, N'50mW')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (255, N'TT016', 35, N'Acer')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (256, N'TT017', 35, N'Laptop')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (257, N'TT018', 35, N'Aspire 3 A315-59-51X8')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (258, N'TT019', 35, N'USB-C, HDMI, Wi-Fi 6')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (259, N'TT020', 35, N'45mW')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (260, N'TT016', 36, N'Acer')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (261, N'TT017', 36, N'Laptop')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (262, N'TT018', 36, N'Nitro 5 Tiger AN515-58-769J')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (263, N'TT019', 36, N'USB-C, HDMI, Wi-Fi 6')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (264, N'TT020', 36, N'55mW')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (265, N'TT016', 37, N'Acer')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (266, N'TT017', 37, N'Laptop')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (267, N'TT018', 37, N'Aspire 5 A515-58GM-59LJ')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (268, N'TT019', 37, N'USB-C, HDMI, Wi-Fi 6')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (269, N'TT020', 37, N'60mW')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (270, N'TT016', 41, N'Lenovo')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (271, N'TT017', 41, N'Laptop')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (272, N'TT018', 41, N'IdeaPad Slim 5 14IAH8')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (273, N'TT019', 41, N'USB-C, HDMI, Wi-Fi 5')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (274, N'TT020', 41, N'50mW')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (275, N'TT021', 38, N'MacBook Pro')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (276, N'TT022', 38, N'Silver')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (277, N'TT023', 38, N'M3 Max')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (278, N'TT024', 38, N'Cao cấp / Công việc chuyên nghiệp')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (279, N'TT025', 38, N'USB-C')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (280, N'TT032', 38, N'Apple')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (281, N'TT032', 20, N'Apple')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (282, N'TT032', 12, N'Apple')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (295, N'TT010', 40, N'Samsung')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (296, N'TT011', 40, N'28 inch')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (297, N'TT012', 40, N'75Hz')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (298, N'TT013', 40, N'4ms')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (299, N'TT014', 40, N'3840x2160')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (300, N'TT015', 40, N'Văn phòng')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (311, N'TT016', 44, N'DAREU')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (312, N'TT017', 44, N'Hàng Live demo bỏ')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (313, N'TT018', 44, N'Giả lập 7.1')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (314, N'TT019', 44, N'USB')
GO
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (315, N'TT020', 44, N' 300 +/- 10g')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (316, N'TT016', 46, N' MICROLAB')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (317, N'TT017', 46, N'Hàng cũ')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (318, N'TT018', 46, N'Channel 2.1')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (319, N'TT019', 46, N'USB')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (320, N'TT020', 46, N' 5V 1.2A')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (321, N'TT021', 47, N'Apple A17 Pro')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (322, N'TT022', 47, N'Blue')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (323, N'TT023', 47, N'iPad Mini')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (324, N'TT024', 47, N'Đa phương thiện')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (325, N'TT025', 47, N'USB Type-C')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (326, N'TT032', 47, N'Apple')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (333, N'TT010', 49, N'LG')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (334, N'TT011', 49, N' 540.1 x 321.1 x 41.9 mm')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (335, N'TT012', 49, N' 75Hz')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (336, N'TT013', 49, N' QHD (2K) ( 2560 x 1440 )')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (337, N'TT014', 49, N' QHD (2K) ( 2560 x 1440 )')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (338, N'TT015', 49, N' Văn phòng, Đồ họa - Kỹ thuật, Học sinh - Sinh viên')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (339, N'TT016', 28, N'Acer')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (340, N'TT017', 28, N'Laptop')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (341, N'TT018', 28, N'Aspire 7 A715-42G-R05G')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (342, N'TT019', 28, N'USB-C, HDMI, Wi-Fi 56')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (343, N'TT020', 28, N'45mW')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (361, N'TT026', 14, N'PV')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (362, N'TT027', 14, N'PC')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (363, N'TT028', 14, N'Mainboard cho Office')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (364, N'TT029', 14, N'Không có card đồ họa')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (365, N'TT030', 14, N'Văn phòng')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (366, N'TT031', 14, N'Không có')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (367, N'TT016', 29, N'Asus')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (368, N'TT017', 29, N'Laptop')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (369, N'TT018', 29, N'Vivobook 15 OLED A1505VA-L1114W')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (370, N'TT019', 29, N'USB-C, HDMI, Wi-Fi 65')
INSERT [dbo].[ThongTinThuocTinh] ([MaThongTinThuocTinh], [MaThuocTinh], [MaSP], [GiaTri]) VALUES (371, N'TT020', 29, N'40mW')
SET IDENTITY_INSERT [dbo].[ThongTinThuocTinh] OFF
GO
INSERT [dbo].[ThuocTinh] ([MaThuocTinh], [MaLoaiHang], [TenThuocTinh]) VALUES (N'TT001', N'LH005', N'Thương hiệu')
INSERT [dbo].[ThuocTinh] ([MaThuocTinh], [MaLoaiHang], [TenThuocTinh]) VALUES (N'TT002', N'LH005', N'Series Laptop')
INSERT [dbo].[ThuocTinh] ([MaThuocTinh], [MaLoaiHang], [TenThuocTinh]) VALUES (N'TT003', N'LH005', N'Series CPU')
INSERT [dbo].[ThuocTinh] ([MaThuocTinh], [MaLoaiHang], [TenThuocTinh]) VALUES (N'TT004', N'LH005', N'Nhu cầu sử dụng')
INSERT [dbo].[ThuocTinh] ([MaThuocTinh], [MaLoaiHang], [TenThuocTinh]) VALUES (N'TT005', N'LH005', N'Card đồ họa (GPU)')
INSERT [dbo].[ThuocTinh] ([MaThuocTinh], [MaLoaiHang], [TenThuocTinh]) VALUES (N'TT006', N'LH005', N'Kích thước màn hình')
INSERT [dbo].[ThuocTinh] ([MaThuocTinh], [MaLoaiHang], [TenThuocTinh]) VALUES (N'TT007', N'LH005', N'Dung lượng RAM')
INSERT [dbo].[ThuocTinh] ([MaThuocTinh], [MaLoaiHang], [TenThuocTinh]) VALUES (N'TT008', N'LH005', N'Dung lượng SSD')
INSERT [dbo].[ThuocTinh] ([MaThuocTinh], [MaLoaiHang], [TenThuocTinh]) VALUES (N'TT009', N'LH005', N'Phân giải màn hình')
INSERT [dbo].[ThuocTinh] ([MaThuocTinh], [MaLoaiHang], [TenThuocTinh]) VALUES (N'TT010', N'LH001', N'Thương hiệu')
INSERT [dbo].[ThuocTinh] ([MaThuocTinh], [MaLoaiHang], [TenThuocTinh]) VALUES (N'TT011', N'LH001', N'Kích thước màn hình')
INSERT [dbo].[ThuocTinh] ([MaThuocTinh], [MaLoaiHang], [TenThuocTinh]) VALUES (N'TT012', N'LH001', N'Tần số quét')
INSERT [dbo].[ThuocTinh] ([MaThuocTinh], [MaLoaiHang], [TenThuocTinh]) VALUES (N'TT013', N'LH001', N'Thời gian phản hồi')
INSERT [dbo].[ThuocTinh] ([MaThuocTinh], [MaLoaiHang], [TenThuocTinh]) VALUES (N'TT014', N'LH001', N'Độ phân giải')
INSERT [dbo].[ThuocTinh] ([MaThuocTinh], [MaLoaiHang], [TenThuocTinh]) VALUES (N'TT015', N'LH001', N'Nhu cầu sử dụng')
INSERT [dbo].[ThuocTinh] ([MaThuocTinh], [MaLoaiHang], [TenThuocTinh]) VALUES (N'TT016', N'LH003', N'Thương hiệu')
INSERT [dbo].[ThuocTinh] ([MaThuocTinh], [MaLoaiHang], [TenThuocTinh]) VALUES (N'TT017', N'LH003', N'Loại hàng')
INSERT [dbo].[ThuocTinh] ([MaThuocTinh], [MaLoaiHang], [TenThuocTinh]) VALUES (N'TT018', N'LH003', N'Series')
INSERT [dbo].[ThuocTinh] ([MaThuocTinh], [MaLoaiHang], [TenThuocTinh]) VALUES (N'TT019', N'LH003', N'Kết nối')
INSERT [dbo].[ThuocTinh] ([MaThuocTinh], [MaLoaiHang], [TenThuocTinh]) VALUES (N'TT020', N'LH003', N'Công suất')
INSERT [dbo].[ThuocTinh] ([MaThuocTinh], [MaLoaiHang], [TenThuocTinh]) VALUES (N'TT021', N'LH004', N'Dòng sản phẩm')
INSERT [dbo].[ThuocTinh] ([MaThuocTinh], [MaLoaiHang], [TenThuocTinh]) VALUES (N'TT022', N'LH004', N'Màu sắc')
INSERT [dbo].[ThuocTinh] ([MaThuocTinh], [MaLoaiHang], [TenThuocTinh]) VALUES (N'TT023', N'LH004', N'Series')
INSERT [dbo].[ThuocTinh] ([MaThuocTinh], [MaLoaiHang], [TenThuocTinh]) VALUES (N'TT024', N'LH004', N'Nhu cầu sử dụng')
INSERT [dbo].[ThuocTinh] ([MaThuocTinh], [MaLoaiHang], [TenThuocTinh]) VALUES (N'TT025', N'LH004', N'Kết nối cáp sạc')
INSERT [dbo].[ThuocTinh] ([MaThuocTinh], [MaLoaiHang], [TenThuocTinh]) VALUES (N'TT026', N'LH002', N'Thương hiệu')
INSERT [dbo].[ThuocTinh] ([MaThuocTinh], [MaLoaiHang], [TenThuocTinh]) VALUES (N'TT027', N'LH002', N'Loại hàng')
INSERT [dbo].[ThuocTinh] ([MaThuocTinh], [MaLoaiHang], [TenThuocTinh]) VALUES (N'TT028', N'LH002', N'Series Mainboard')
INSERT [dbo].[ThuocTinh] ([MaThuocTinh], [MaLoaiHang], [TenThuocTinh]) VALUES (N'TT029', N'LH002', N'Series Card Đồ họa')
INSERT [dbo].[ThuocTinh] ([MaThuocTinh], [MaLoaiHang], [TenThuocTinh]) VALUES (N'TT030', N'LH002', N'Nhu cầu sử dụng')
INSERT [dbo].[ThuocTinh] ([MaThuocTinh], [MaLoaiHang], [TenThuocTinh]) VALUES (N'TT031', N'LH002', N'Kết nối cáp sạc')
INSERT [dbo].[ThuocTinh] ([MaThuocTinh], [MaLoaiHang], [TenThuocTinh]) VALUES (N'TT032', N'LH004', N'Thương hiệu')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__NguoiDun__55F68FC07625AD7E]    Script Date: 26/02/2025 3:04:26 pm ******/
ALTER TABLE [dbo].[NguoiDung] ADD UNIQUE NONCLUSTERED 
(
	[TenDangNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__NguoiDun__A9D10534A921DBAB]    Script Date: 26/02/2025 3:04:26 pm ******/
ALTER TABLE [dbo].[NguoiDung] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LichSuMuaHang] ADD  DEFAULT (getdate()) FOR [NgayMua]
GO
ALTER TABLE [dbo].[ChiTietLichSuMuaHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietLichSuMuaHang_LichSuMuaHang] FOREIGN KEY([MaLichSu])
REFERENCES [dbo].[LichSuMuaHang] ([MaLichSu])
GO
ALTER TABLE [dbo].[ChiTietLichSuMuaHang] CHECK CONSTRAINT [FK_ChiTietLichSuMuaHang_LichSuMuaHang]
GO
ALTER TABLE [dbo].[ChiTietLichSuMuaHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietLichSuMuaHang_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietLichSuMuaHang] CHECK CONSTRAINT [FK_ChiTietLichSuMuaHang_SanPham]
GO
ALTER TABLE [dbo].[HinhAnh]  WITH CHECK ADD  CONSTRAINT [FK_HinhAnh_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[HinhAnh] CHECK CONSTRAINT [FK_HinhAnh_SanPham]
GO
ALTER TABLE [dbo].[LichSuMuaHang]  WITH CHECK ADD  CONSTRAINT [FK_LichSuMuaHang_NguoiDung] FOREIGN KEY([MaNguoiDung])
REFERENCES [dbo].[NguoiDung] ([MaNguoiDung])
GO
ALTER TABLE [dbo].[LichSuMuaHang] CHECK CONSTRAINT [FK_LichSuMuaHang_NguoiDung]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([MaLoaiHang])
REFERENCES [dbo].[LoaiHang] ([MaLoaiHang])
GO
ALTER TABLE [dbo].[ThongTinThuocTinh]  WITH CHECK ADD  CONSTRAINT [FK_ThongTinThuocTinh_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ThongTinThuocTinh] CHECK CONSTRAINT [FK_ThongTinThuocTinh_SanPham]
GO
ALTER TABLE [dbo].[ThongTinThuocTinh]  WITH CHECK ADD  CONSTRAINT [FK_ThongTinThuocTinh_ThuocTinh] FOREIGN KEY([MaThuocTinh])
REFERENCES [dbo].[ThuocTinh] ([MaThuocTinh])
GO
ALTER TABLE [dbo].[ThongTinThuocTinh] CHECK CONSTRAINT [FK_ThongTinThuocTinh_ThuocTinh]
GO
ALTER TABLE [dbo].[ThuocTinh]  WITH CHECK ADD  CONSTRAINT [FK_ThuocTinh_LoaiHang] FOREIGN KEY([MaLoaiHang])
REFERENCES [dbo].[LoaiHang] ([MaLoaiHang])
GO
ALTER TABLE [dbo].[ThuocTinh] CHECK CONSTRAINT [FK_ThuocTinh_LoaiHang]
GO
