USE [master]
GO
/****** Object:  Database [WatchMovies]    Script Date: 5/12/2024 05:26:17 PM ******/
CREATE DATABASE [WatchMovies]

ALTER DATABASE [WatchMovies] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WatchMovies].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WatchMovies] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WatchMovies] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WatchMovies] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WatchMovies] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WatchMovies] SET ARITHABORT OFF 
GO
ALTER DATABASE [WatchMovies] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [WatchMovies] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WatchMovies] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WatchMovies] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WatchMovies] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WatchMovies] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WatchMovies] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WatchMovies] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WatchMovies] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WatchMovies] SET  ENABLE_BROKER 
GO
ALTER DATABASE [WatchMovies] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WatchMovies] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WatchMovies] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WatchMovies] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WatchMovies] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WatchMovies] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [WatchMovies] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WatchMovies] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WatchMovies] SET  MULTI_USER 
GO
ALTER DATABASE [WatchMovies] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WatchMovies] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WatchMovies] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WatchMovies] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [WatchMovies] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [WatchMovies] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [WatchMovies] SET QUERY_STORE = ON
GO
ALTER DATABASE [WatchMovies] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [WatchMovies]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 5/12/2024 05:26:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BaiDang]    Script Date: 5/12/2024 05:26:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaiDang](
	[MaBaiDang] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](max) NOT NULL,
	[NoiDung] [nvarchar](max) NOT NULL,
	[HinhAnh] [nvarchar](max) NULL,
	[DaoDien] [nvarchar](max) NULL,
	[DienVien] [nvarchar](max) NULL,
	[MaUserTao] [int] NOT NULL,
	[NgayTao] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.BaiDang] PRIMARY KEY CLUSTERED 
(
	[MaBaiDang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChatLuong]    Script Date: 5/12/2024 05:26:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChatLuong](
	[MaChatLuong] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_dbo.ChatLuong] PRIMARY KEY CLUSTERED 
(
	[MaChatLuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 5/12/2024 05:26:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[MaComment] [int] IDENTITY(1,1) NOT NULL,
	[NoiDungComment] [nvarchar](max) NOT NULL,
	[ThoiGian] [datetime] NOT NULL,
	[MaUser] [int] NOT NULL,
	[MaPhim] [int] NOT NULL,
	[MaTap] [int] NULL,
	[RepCommentID] [int] NULL,
 CONSTRAINT [PK_dbo.Comment] PRIMARY KEY CLUSTERED 
(
	[MaComment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichSuXem]    Script Date: 5/12/2024 05:26:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichSuXem](
	[MaLichSu] [int] IDENTITY(1,1) NOT NULL,
	[MaUser] [int] NOT NULL,
	[MaPhim] [int] NOT NULL,
 CONSTRAINT [PK_dbo.LichSuXem] PRIMARY KEY CLUSTERED 
(
	[MaLichSu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phan]    Script Date: 5/12/2024 05:26:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phan](
	[MaPhan] [int] IDENTITY(1,1) NOT NULL,
	[MaPhim] [int] NOT NULL,
	[TenPhan] [nvarchar](max) NULL,
	[MaUserTao] [int] NOT NULL,
	[MaUserSua] [int] NOT NULL,
	[CreateAt] [datetime] NOT NULL,
	[UpdateAt] [datetime] NOT NULL,
	[isDel] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Phan] PRIMARY KEY CLUSTERED 
(
	[MaPhan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phim]    Script Date: 5/12/2024 05:26:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phim](
	[MaPhim] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](max) NOT NULL,
	[Link] [nvarchar](max) NULL,
	[NoiDung] [nvarchar](max) NULL,
	[HinhAnh] [nvarchar](max) NULL,
	[DaoDien] [nvarchar](max) NOT NULL,
	[DienVien] [nvarchar](max) NOT NULL,
	[QuocGia] [nvarchar](max) NOT NULL,
	[NamSX] [int] NOT NULL,
	[ThoiLuong] [int] NOT NULL,
	[LuotXem] [int] NOT NULL,
	[SoLuongVote] [int] NOT NULL,
	[SoSao] [real] NOT NULL,
	[SoLuongComment] [int] NOT NULL,
	[LoaiPhim] [int] NOT NULL,
	[MaUserTao] [int] NOT NULL,
	[CreateAt] [datetime] NOT NULL,
	[MaUserSua] [int] NOT NULL,
	[UpdateAt] [datetime] NOT NULL,
	[isDel] [bit] NOT NULL,
	[MaChatLuong] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Phim] PRIMARY KEY CLUSTERED 
(
	[MaPhim] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quyen]    Script Date: 5/12/2024 05:26:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quyen](
	[MaQuyen] [int] IDENTITY(1,1) NOT NULL,
	[TenQuyen] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Quyen] PRIMARY KEY CLUSTERED 
(
	[MaQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quyen_User]    Script Date: 5/12/2024 05:26:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quyen_User](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaUser] [int] NOT NULL,
	[MaQuyen] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Quyen_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Report]    Script Date: 5/12/2024 05:26:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Report](
	[MaReport] [int] IDENTITY(1,1) NOT NULL,
	[MaUser] [int] NOT NULL,
	[MaComment] [int] NOT NULL,
	[NgayTao] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Report] PRIMARY KEY CLUSTERED 
(
	[MaReport] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tap]    Script Date: 5/12/2024 05:26:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tap](
	[MaTap] [int] IDENTITY(1,1) NOT NULL,
	[MaPhan] [int] NOT NULL,
	[Ten] [nvarchar](max) NULL,
	[Link] [nvarchar](max) NULL,
	[MaUserTao] [int] NOT NULL,
	[CreateAt] [datetime] NOT NULL,
	[MaUserSua] [int] NOT NULL,
	[UpdatedAt] [datetime] NOT NULL,
	[isDel] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Tap] PRIMARY KEY CLUSTERED 
(
	[MaTap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TheLoai]    Script Date: 5/12/2024 05:26:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheLoai](
	[MaTheLoai] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_dbo.TheLoai] PRIMARY KEY CLUSTERED 
(
	[MaTheLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TheLoai_Phim]    Script Date: 5/12/2024 05:26:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheLoai_Phim](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaPhim] [int] NOT NULL,
	[MaTheLoai] [int] NOT NULL,
 CONSTRAINT [PK_dbo.TheLoai_Phim] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongBao]    Script Date: 5/12/2024 05:26:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongBao](
	[MaThongBao] [int] IDENTITY(1,1) NOT NULL,
	[MaUser] [int] NOT NULL,
	[NoiDung] [nvarchar](max) NULL,
	[Link] [nvarchar](max) NULL,
	[CreateAt] [datetime] NOT NULL,
	[DaXem] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.ThongBao] PRIMARY KEY CLUSTERED 
(
	[MaThongBao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 5/12/2024 05:26:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[MaUser] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[SDT] [nvarchar](max) NULL,
	[HinhAnh] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NOT NULL,
	[isDel] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.User] PRIMARY KEY CLUSTERED 
(
	[MaUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vote]    Script Date: 5/12/2024 05:26:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vote](
	[MaVote] [int] IDENTITY(1,1) NOT NULL,
	[SoSao] [real] NOT NULL,
	[NoiDung] [nvarchar](max) NULL,
	[ThoiGian] [datetime] NOT NULL,
	[MaUser] [int] NOT NULL,
	[MaPhim] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Vote] PRIMARY KEY CLUSTERED 
(
	[MaVote] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[YeuThich]    Script Date: 5/12/2024 05:26:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YeuThich](
	[MaYeuThich] [int] IDENTITY(1,1) NOT NULL,
	[MaUser] [int] NOT NULL,
	[MaPhim] [int] NOT NULL,
 CONSTRAINT [PK_dbo.YeuThich] PRIMARY KEY CLUSTERED 
(
	[MaYeuThich] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BaiDang] ON 

INSERT [dbo].[BaiDang] ([MaBaiDang], [Ten], [NoiDung], [HinhAnh], [DaoDien], [DienVien], [MaUserTao], [NgayTao]) VALUES (1, N'Scream 5 sắp ra mắt', N'Bộ phim Scream đầu tiên được khởi chiếu vào dịp lễ Giáng sinh năm 1996 đã thành công lớn về doanh thu phòng vé, thu về hơn 173 triệu đô la trên toàn thế giới, nhờ sự kết hợp giải trí giữa cách kể chuyện độc đáo và yếu tố kinh dị căng thẳng.Scream kể về nhân vật Sidney Prescott, một học sinh trung học sống ở thị trấn Woodsboro. Mọi chuyện bắt đầu một năm sau cái chết của mẹ Sidney. Cô và những người bạn nhận được các cuộc điện thoại kỳ lạ với câu hỏi “Bộ phim kinh dị yêu thích của bạn là gì?” từ một kẻ giết người hàng loạt điên cuồng, trong chiếc mặt nạ trắng và áo choàng đen lớn, gọi là Ghostface.Cốt truyện Scream 5 sẽ khác một chút so với nguyên tác. Phần tiếp theo của loạt phim năm 2022 sẽ lấy bối cảnh cảnh Sidney Prescott trở về quê hương của mình, sau khi một loạt các vụ giết người bắt chước đáng ngờ bắt đầu hoành hành ở vùng ngoại ô yên bình.', N'Scream-5.jpg', N'Matt Bettinelli-Olpin, Tyler Gillett', N'Neve Campbell, Courteney Cox, David Arquette', 1, CAST(N'2024-01-30T00:00:00.000' AS DateTime))
INSERT [dbo].[BaiDang] ([MaBaiDang], [Ten], [NoiDung], [HinhAnh], [DaoDien], [DienVien], [MaUserTao], [NgayTao]) VALUES (2, N'Marry me', N'Dựa trên tiểu thuyết lãng mạn cùng tên được viết bởi Bobby Crosby, Marry me xoay quanh những câu chuyện về người nổi tiếng, hôn nhân và mạng xã hội. Nữ ca sĩ Kat Valdez (Jennifer Lopez) đã tình cờ phát hiện người chồng chưa cưới của mình - Bastian (Maluma) ngoại tình sau lưng bấy lâu nay, ngay trước khi buổi lễ thành hôn công khai diễn ra. Nhưng thay vì từ bỏ, Kat Valdez đã có quyết định “điên rồ” khi lựa chọn ngẫu nhiên một người đàn ông trong đám đông để kết hôn. Và đây chính là khởi nguồn cho chuỗi tình huống dở khóc dở cười đã xảy ra với cuộc sống sau hôn nhân của hai người xa lạ.  Hai con người xa lạ, một người nổi tiếng, một người bình thường, lại bị buộc vào nhau bằng một hành động bốc đồng. Tưởng như chuyện sẽ chẳng đi đến đâu nhưng bất ngờ thay ở những thước phim trên nền nhạc On My Way, cặp đôi đã thực sự có những giây phút lãng mạn và hạnh phúc bên nhau. Nhưng liệu hai người từ hai thế giới khác nhau hoàn toàn, có thể thành công bước đến bên nhau và cùng nhau tạo nên một thế giới mà cả hai đều thuộc về không?', N'Marry-me.jpg', N'Kat Coiro', N'Jennifer Lopez, Owen Wilson, Maluma, Chloe Coleman', 2, CAST(N'2024-01-30T22:02:12.053' AS DateTime))
INSERT [dbo].[BaiDang] ([MaBaiDang], [Ten], [NoiDung], [HinhAnh], [DaoDien], [DienVien], [MaUserTao], [NgayTao]) VALUES (3, N'Uncharted - Thợ Săn Cổ Vật', N'Bộ phim Uncharted ăn theo dòng game phiêu lưu hành động kinh điển của PlayStation. Dù dựa trên dòng game, thế nhưng ngoài các nhân vật chính ra thì các sự kiện của phim sẽ khác đi nhiều so với game. Theo đó Nathan Drake trong phim là một bartender trẻ tuổi gặp Sully tại quầy bar của mình và từ đó 2 người bắt đầu những cuộc săn tìm kho báu hoành tráng. Bên cạnh Tom Holland thủ vai Nathan Drake và Mark Wahlberg thủ vai Sully, phim sẽ có sự góp mặt của diễn viên lừng danh Antonio Banderas với vai phản diện chính của phim, một kẻ săn tìm kho báu đối thủ với nhiều tiền bạc và quyền lực hơn. Dự án phim Uncharted vốn được lên kế hoạch từ 10 năm trước và trải qua quá trình sản xuất cực kì khó khăn khi mà phim liên tục thay đạo diễn. Cuối cùng Ruben Fleischer, đạo diễn của Zombieland và Venom chính thức chỉ đạo bộ phim này.', N'Uncharted.jpg', N'Ruben Fleischer', N'Tom Holland, Mark Wahlberg, Sophia Taylor Ali', 2, CAST(N'2024-01-30T22:16:40.847' AS DateTime))
SET IDENTITY_INSERT [dbo].[BaiDang] OFF
GO
SET IDENTITY_INSERT [dbo].[ChatLuong] ON 

INSERT [dbo].[ChatLuong] ([MaChatLuong], [Ten]) VALUES (1, N'SD')
INSERT [dbo].[ChatLuong] ([MaChatLuong], [Ten]) VALUES (2, N'HD')
INSERT [dbo].[ChatLuong] ([MaChatLuong], [Ten]) VALUES (3, N'Full HD')
SET IDENTITY_INSERT [dbo].[ChatLuong] OFF
GO
SET IDENTITY_INSERT [dbo].[Comment] ON 

INSERT [dbo].[Comment] ([MaComment], [NoiDungComment], [ThoiGian], [MaUser], [MaPhim], [MaTap], [RepCommentID]) VALUES (1, N'oke', CAST(N'2024-04-24T16:07:10.327' AS DateTime), 2, 14, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Comment] OFF
GO
SET IDENTITY_INSERT [dbo].[LichSuXem] ON 

INSERT [dbo].[LichSuXem] ([MaLichSu], [MaUser], [MaPhim]) VALUES (26, 2, 14)
INSERT [dbo].[LichSuXem] ([MaLichSu], [MaUser], [MaPhim]) VALUES (31, 2, 8)
INSERT [dbo].[LichSuXem] ([MaLichSu], [MaUser], [MaPhim]) VALUES (32, 2, 13)
INSERT [dbo].[LichSuXem] ([MaLichSu], [MaUser], [MaPhim]) VALUES (35, 2, 9)
INSERT [dbo].[LichSuXem] ([MaLichSu], [MaUser], [MaPhim]) VALUES (36, 2, 10)
INSERT [dbo].[LichSuXem] ([MaLichSu], [MaUser], [MaPhim]) VALUES (38, 2, 12)
SET IDENTITY_INSERT [dbo].[LichSuXem] OFF
GO
SET IDENTITY_INSERT [dbo].[Phan] ON 

INSERT [dbo].[Phan] ([MaPhan], [MaPhim], [TenPhan], [MaUserTao], [MaUserSua], [CreateAt], [UpdateAt], [isDel]) VALUES (2, 14, N'Phần 1', 2, 2, CAST(N'2024-04-23T22:36:22.787' AS DateTime), CAST(N'2024-04-23T22:36:22.787' AS DateTime), 0)
INSERT [dbo].[Phan] ([MaPhan], [MaPhim], [TenPhan], [MaUserTao], [MaUserSua], [CreateAt], [UpdateAt], [isDel]) VALUES (3, 14, N'Phần 2', 2, 2, CAST(N'2024-04-23T23:41:12.670' AS DateTime), CAST(N'2024-04-23T23:41:12.670' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[Phan] OFF
GO
SET IDENTITY_INSERT [dbo].[Phim] ON 

INSERT [dbo].[Phim] ([MaPhim], [Ten], [Link], [NoiDung], [HinhAnh], [DaoDien], [DienVien], [QuocGia], [NamSX], [ThoiLuong], [LuotXem], [SoLuongVote], [SoSao], [SoLuongComment], [LoaiPhim], [MaUserTao], [CreateAt], [MaUserSua], [UpdateAt], [isDel], [MaChatLuong]) VALUES (8, N'BÁ VƯƠNG HỌC ĐƯỜNG', N'https://s3-spotlightr-output.b-cdn.net/99136726/backup/1715506170964BaVuongHocDuong.mp4', N'Bá Vương Học Đường xoay quanh cuộc chiến giữa hai trường trung học ở khu vực SWORD là trường trung học Oya và trường trung học kỹ thuật Senomon. Hiệu trưởng Trường Trung học Kỹ thuật Senomon xây dựng một “liên minh ba trường” với hai trường khác, Trường Trung học Kamasaka và Trường Trung học Thương mại Ebara, và mở rộng quyền lực của nó nhằm mục tiêu cổ trường Trung học Oya. Những người đàn ông của trường cao Oya bất ngờ bị bắt và tấn công. Liệu Fujio có thể bảo vệ họ bằng chính nắm đấm của mình? Trận chiến quyết định Teppen thật sắp bắt đầu.', N'ba-vuong-hoc-duong-11024.jpg', N'Không xác định', N'Atsushi Arai, Suzuki Higa, Kazuma Kawamura, Keito Kimura, Hayato Komori, Ryoki Miyama', N'Nhật bản', 2022, 119, 4, 0, 10, 0, 1, 2, CAST(N'2024-04-23T22:04:05.523' AS DateTime), 0, CAST(N'2024-04-23T22:04:05.523' AS DateTime), 0, 2)
INSERT [dbo].[Phim] ([MaPhim], [Ten], [Link], [NoiDung], [HinhAnh], [DaoDien], [DienVien], [QuocGia], [NamSX], [ThoiLuong], [LuotXem], [SoLuongVote], [SoSao], [SoLuongComment], [LoaiPhim], [MaUserTao], [CreateAt], [MaUserSua], [UpdateAt], [isDel], [MaChatLuong]) VALUES (9, N'ĐẢO TỬ THẦN', N'https://s3-spotlightr-output.b-cdn.net/99136726/backup/1715506175386DaoTuThan.mp4', N'Đảo Tử Thần kể về Đặc vụ D.S.O. Leon S. Kennedy đang thực hiện nhiệm vụ giải cứu Tiến sĩ Antonio Taylor khỏi những kẻ bắt cóc, thì bất ngờ bị một phụ nữ bí ẩn ngăn cản. Trong lúc đó, đặc vụ B.S.A.A. Chris Redfield đang điều tra một đại dịch xác sống ở San Francisco mà chưa xác định được nguyên nhân lây nhiễm. Điểm chung duy nhất của các nạn nhân là tất cả đều ghé thăm đảo Alcatraz không lâu trước đó. Lần theo manh mối này, Chris và đồng đội tìm đến hòn đảo, nơi một cơn kinh hoàng khác đang chờ đón họ.', N'dao-tu-than.jpg', N'Eiichirō Hasumi', N'Erin Cahill, Kevin Dorman', N'Nhật bản', 2023, 89, 1, 0, 10, 0, 1, 2, CAST(N'2024-04-23T22:06:04.833' AS DateTime), 0, CAST(N'2024-04-23T22:06:04.833' AS DateTime), 0, 2)
INSERT [dbo].[Phim] ([MaPhim], [Ten], [Link], [NoiDung], [HinhAnh], [DaoDien], [DienVien], [QuocGia], [NamSX], [ThoiLuong], [LuotXem], [SoLuongVote], [SoSao], [SoLuongComment], [LoaiPhim], [MaUserTao], [CreateAt], [MaUserSua], [UpdateAt], [isDel], [MaChatLuong]) VALUES (10, N'GIAO DỊCH ĐỔI ĐỜI', N'https://s3-spotlightr-output.b-cdn.net/99136726/backup/1715506169568GiaoDichDoiDoi.mp4', N'Giao Dịch Đổi Đời xoay quanh cuộc đấu tranh tuyệt vọng và sự phản bội của hai người đàn ông chọn lựa con đường khác nhau để thanh lý quá khứ và sống cuộc đời mới. Woo Cheol là một võ sĩ quyền anh muốn sống một cuộc đời chân thành sau khi ra tù, còn Do Shik là bạn của anh.', N'giao-dich-doi-doi.jpg', N'Kim Bong Han', N'Park Sung Woong, Oh Dae Hwan, Oh Dal Soo, Seo Ji Hye, Joo Seok Tae, Seo Ji Hoo', N'Hàn quốc', 2023, 106, 1, 0, 10, 0, 1, 2, CAST(N'2024-04-23T22:08:17.393' AS DateTime), 0, CAST(N'2024-04-23T22:08:17.393' AS DateTime), 0, 2)
INSERT [dbo].[Phim] ([MaPhim], [Ten], [Link], [NoiDung], [HinhAnh], [DaoDien], [DienVien], [QuocGia], [NamSX], [ThoiLuong], [LuotXem], [SoLuongVote], [SoSao], [SoLuongComment], [LoaiPhim], [MaUserTao], [CreateAt], [MaUserSua], [UpdateAt], [isDel], [MaChatLuong]) VALUES (11, N'TRÒ LỪA TIỀN ĐIỆN TỬ', N'https://s3-spotlightr-output.b-cdn.net/99136726/backup/1715506171928TroLuaTienDienTu.mp4', N'Trò Lừa Tiền Điện Tử kể về trong phim tài liệu tội phạm có thật này, ba kẻ lợi dụng thị trường tiền điện tử đang phát triển tự do để lừa đảo hàng triệu đô từ các nhà đầu tư và vung tiền cho lối sống xa hoa.', N'tro-lua-tien-dien-tu.jpg', N'Bryan Storkel', N'Sam Bankman-Fried, Robert Farkas, Sohrab Sharma, Ray Trapani, Damian Williams', N'Mỹ', 2024, 93, 0, 0, 10, 0, 1, 2, CAST(N'2024-04-23T22:09:57.407' AS DateTime), 0, CAST(N'2024-04-23T22:09:57.407' AS DateTime), 0, 2)
INSERT [dbo].[Phim] ([MaPhim], [Ten], [Link], [NoiDung], [HinhAnh], [DaoDien], [DienVien], [QuocGia], [NamSX], [ThoiLuong], [LuotXem], [SoLuongVote], [SoSao], [SoLuongComment], [LoaiPhim], [MaUserTao], [CreateAt], [MaUserSua], [UpdateAt], [isDel], [MaChatLuong]) VALUES (12, N'VUA SĂN RỒNG', N'https://s3-spotlightr-output.b-cdn.net/99136726/backup/1715506162209VuaSanRong.mp4', N'Vua Săn Rồng kể về vào thời Dân Quốc, một người không tuổi kỳ lạ tên là Sài Hồ xuất hiện ở thị trấn Thiên Đăng. Người ta đồn rằng trong cơ thể anh ta có rồng trú ngụ. Bức ảnh mà phóng viên Ngụy Vũ Đồng chụp anh ta đã thu hút sự chú ý của cha cô, Ngụy Dĩ Sơn, một nhà sinh vật học. Ngụy Dĩ Sơn dẫn đoàn đến thị trấn Thiên Đăng tìm Sài Hồ, phát hiện ra anh ta là kẻ ngớ ngẩn. Ngụy Dĩ Sơn đã bắt vợ Sài Hồ để uy hiếp và ép anh ta dẫn cả đoàn đến núi Bát Bách, nơi có truyền thuyết về rồng. Núi non nguy hiểm tứ phía, một cuộc phiêu lưu săn rồng bắt đầu từ đây...', N'vua-san-rong.jpg', N'Đang cập nhật', N'Đang cập nhật', N'Trung quốc', 2024, 80, 4, 0, 10, 0, 1, 2, CAST(N'2024-04-23T22:12:37.520' AS DateTime), 0, CAST(N'2024-04-23T22:12:37.520' AS DateTime), 0, 2)
INSERT [dbo].[Phim] ([MaPhim], [Ten], [Link], [NoiDung], [HinhAnh], [DaoDien], [DienVien], [QuocGia], [NamSX], [ThoiLuong], [LuotXem], [SoLuongVote], [SoSao], [SoLuongComment], [LoaiPhim], [MaUserTao], [CreateAt], [MaUserSua], [UpdateAt], [isDel], [MaChatLuong]) VALUES (13, N'VỤ TRỘM TRÊN KHÔNG', N'https://spot-304-test.s3-accelerate.amazonaws.com/1715506158vutromtrenkhongmp4', N'Vụ Trộm Trên Không kể về tay trộm lão luyện cùng đội trộm chuyên nghiệp thực hiện phi vụ cuối: đánh cắp số vàng trị giá 500 triệu đô-la Mỹ trong két trên máy bay, ở độ cao hơn 12.000 mét trên không trung.', N'vu-trom-tren-khong.jpg', N'F. Gary Gray', N'Kevin Hart, Gugu Mbatha-Raw, Vincent D''Onofrio, Úrsula Corberó, Billy Magnussen, Jacob Batalon, Jean Reno', N'Mỹ', 2024, 106, 2, 0, 10, 0, 1, 2, CAST(N'2024-04-23T22:14:11.033' AS DateTime), 0, CAST(N'2024-04-23T22:14:11.033' AS DateTime), 0, 2)
INSERT [dbo].[Phim] ([MaPhim], [Ten], [Link], [NoiDung], [HinhAnh], [DaoDien], [DienVien], [QuocGia], [NamSX], [ThoiLuong], [LuotXem], [SoLuongVote], [SoSao], [SoLuongComment], [LoaiPhim], [MaUserTao], [CreateAt], [MaUserSua], [UpdateAt], [isDel], [MaChatLuong]) VALUES (14, N'ĐẠI ĐƯỜNG ĐỊCH CÔNG ÁN', NULL, N'Đại Đường Địch Công Án kể về câu chuyện vào thời Võ Tắc Thiên, triều đình ban hành luật bổ nhiệm, bãi nhiệm quan chức. Vào lúc này, Địch Nhân Kiệt, người đang muốn làm nên nghiệp lớn đã lên đường đi đến thị trấn phía Đông xa xôi. Dựa vào tài năng phá án của bản thân, ông đã giải quyết các khó khăn hết lần này đến lần khác. Tuy nhiên khi càng đi sâu vào vụ án, ông phát hiện ra sự việc ngày càng rối rắm, phức tạp. Bản thân ông đã đi khắp lãnh thổ Đại Đường, giải mã được vô vàn vụ kỳ án, sau cùng quay về Trường An, gặp lại cha. Hai cha con đã hợp sức với nhau, phá giải được mối nguy hiểm có thể xảy ra bất cứ lúc nào tại Trường An.', N'dai-duong-dich-cong-an.jpg', N'Đang cập nhật', N'Chu Nhất Vi, Vương Lệ Khôn, Chung Sở Hy, Vương Gia Dịch, Trương Nhược Quân, Lý Thần', N'Trung quốc', 2024, 45, 25, 0, 10, 1, 2, 2, CAST(N'2024-04-23T22:36:22.333' AS DateTime), 0, CAST(N'2024-04-23T22:36:22.333' AS DateTime), 0, 2)
SET IDENTITY_INSERT [dbo].[Phim] OFF
GO
SET IDENTITY_INSERT [dbo].[Quyen] ON 

INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen]) VALUES (1, N'Admin')
INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen]) VALUES (2, N'User')
INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen]) VALUES (3, N'QuanLyPhim')
INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen]) VALUES (4, N'QuanLyBaiDang')
INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen]) VALUES (5, N'QuanLyChatLuong')
INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen]) VALUES (6, N'QUanLyComment')
INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen]) VALUES (7, N'QuanLyTheLoai')
SET IDENTITY_INSERT [dbo].[Quyen] OFF
GO
SET IDENTITY_INSERT [dbo].[Quyen_User] ON 

INSERT [dbo].[Quyen_User] ([ID], [MaUser], [MaQuyen]) VALUES (2, 2, 1)
INSERT [dbo].[Quyen_User] ([ID], [MaUser], [MaQuyen]) VALUES (5, 1, 3)
INSERT [dbo].[Quyen_User] ([ID], [MaUser], [MaQuyen]) VALUES (6, 1, 5)
INSERT [dbo].[Quyen_User] ([ID], [MaUser], [MaQuyen]) VALUES (7, 3, 2)
SET IDENTITY_INSERT [dbo].[Quyen_User] OFF
GO
SET IDENTITY_INSERT [dbo].[Tap] ON 

INSERT [dbo].[Tap] ([MaTap], [MaPhan], [Ten], [Link], [MaUserTao], [CreateAt], [MaUserSua], [UpdatedAt], [isDel]) VALUES (2, 2, N'Tập 1', N'https://s3-spotlightr-output.b-cdn.net/99136726/backup/1715508932875DDDCA01.mp4', 2, CAST(N'2024-04-23T22:37:14.833' AS DateTime), 2, CAST(N'2024-05-12T17:22:23.633' AS DateTime), 0)
INSERT [dbo].[Tap] ([MaTap], [MaPhan], [Ten], [Link], [MaUserTao], [CreateAt], [MaUserSua], [UpdatedAt], [isDel]) VALUES (3, 2, N'Tập 2', N'https://s3-spotlightr-output.b-cdn.net/99136726/backup/1715508913dddca02.mp4', 2, CAST(N'2024-04-23T22:37:26.927' AS DateTime), 2, CAST(N'2024-05-12T17:22:49.093' AS DateTime), 0)
INSERT [dbo].[Tap] ([MaTap], [MaPhan], [Ten], [Link], [MaUserTao], [CreateAt], [MaUserSua], [UpdatedAt], [isDel]) VALUES (4, 2, N'Tập 3', N'https://s3-spotlightr-output.b-cdn.net/99136726/backup/1715508931336DDDCA03.mp4', 2, CAST(N'2024-04-23T22:41:55.603' AS DateTime), 2, CAST(N'2024-05-12T17:23:13.437' AS DateTime), 0)
INSERT [dbo].[Tap] ([MaTap], [MaPhan], [Ten], [Link], [MaUserTao], [CreateAt], [MaUserSua], [UpdatedAt], [isDel]) VALUES (5, 2, N'Tập 4', N'https://s3-spotlightr-output.b-cdn.net/99136726/backup/1715509071651DDDCA04.mp4', 2, CAST(N'2024-04-23T23:29:34.233' AS DateTime), 2, CAST(N'2024-05-12T17:23:33.420' AS DateTime), 0)
INSERT [dbo].[Tap] ([MaTap], [MaPhan], [Ten], [Link], [MaUserTao], [CreateAt], [MaUserSua], [UpdatedAt], [isDel]) VALUES (6, 2, N'Tập 5', N'https://s3-spotlightr-output.b-cdn.net/99136112/backup/1710987437843BaVuongHocDuong.mp4', 2, CAST(N'2024-04-23T23:31:37.557' AS DateTime), 2, CAST(N'2024-04-23T23:31:37.557' AS DateTime), 1)
INSERT [dbo].[Tap] ([MaTap], [MaPhan], [Ten], [Link], [MaUserTao], [CreateAt], [MaUserSua], [UpdatedAt], [isDel]) VALUES (7, 2, N'Tập 6', N'https://s3-spotlightr-output.b-cdn.net/99136112/backup/1710987437843BaVuongHocDuong.mp4', 2, CAST(N'2024-04-23T23:34:19.287' AS DateTime), 2, CAST(N'2024-04-23T23:34:19.287' AS DateTime), 1)
INSERT [dbo].[Tap] ([MaTap], [MaPhan], [Ten], [Link], [MaUserTao], [CreateAt], [MaUserSua], [UpdatedAt], [isDel]) VALUES (8, 2, N'Tập 7', N'https://s3-spotlightr-output.b-cdn.net/99136112/backup/1710987437843BaVuongHocDuong.mp4', 2, CAST(N'2024-04-23T23:38:31.703' AS DateTime), 2, CAST(N'2024-04-23T23:38:31.703' AS DateTime), 1)
INSERT [dbo].[Tap] ([MaTap], [MaPhan], [Ten], [Link], [MaUserTao], [CreateAt], [MaUserSua], [UpdatedAt], [isDel]) VALUES (9, 3, N'Tập 1', N'https://s3-spotlightr-output.b-cdn.net/99136726/backup/1715508932875DDDCA01.mp4', 2, CAST(N'2024-04-23T23:41:21.403' AS DateTime), 2, CAST(N'2024-05-12T17:23:46.430' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[Tap] OFF
GO
SET IDENTITY_INSERT [dbo].[TheLoai] ON 

INSERT [dbo].[TheLoai] ([MaTheLoai], [Ten]) VALUES (1, N'Viễn tưởng')
INSERT [dbo].[TheLoai] ([MaTheLoai], [Ten]) VALUES (2, N'Cổ trang')
INSERT [dbo].[TheLoai] ([MaTheLoai], [Ten]) VALUES (3, N'Hành động')
INSERT [dbo].[TheLoai] ([MaTheLoai], [Ten]) VALUES (4, N'Phiêu lưu')
INSERT [dbo].[TheLoai] ([MaTheLoai], [Ten]) VALUES (5, N'Tình cảm')
INSERT [dbo].[TheLoai] ([MaTheLoai], [Ten]) VALUES (6, N'16+')
INSERT [dbo].[TheLoai] ([MaTheLoai], [Ten]) VALUES (7, N'18+')
INSERT [dbo].[TheLoai] ([MaTheLoai], [Ten]) VALUES (8, N'Thể thao')
INSERT [dbo].[TheLoai] ([MaTheLoai], [Ten]) VALUES (9, N'Kinh dị')
INSERT [dbo].[TheLoai] ([MaTheLoai], [Ten]) VALUES (10, N'Tài liệu')
INSERT [dbo].[TheLoai] ([MaTheLoai], [Ten]) VALUES (11, N'Học đường')
INSERT [dbo].[TheLoai] ([MaTheLoai], [Ten]) VALUES (12, N'Hài hước')
SET IDENTITY_INSERT [dbo].[TheLoai] OFF
GO
SET IDENTITY_INSERT [dbo].[TheLoai_Phim] ON 

INSERT [dbo].[TheLoai_Phim] ([Id], [MaPhim], [MaTheLoai]) VALUES (13, 14, 2)
INSERT [dbo].[TheLoai_Phim] ([Id], [MaPhim], [MaTheLoai]) VALUES (14, 8, 3)
INSERT [dbo].[TheLoai_Phim] ([Id], [MaPhim], [MaTheLoai]) VALUES (15, 8, 4)
INSERT [dbo].[TheLoai_Phim] ([Id], [MaPhim], [MaTheLoai]) VALUES (16, 8, 11)
INSERT [dbo].[TheLoai_Phim] ([Id], [MaPhim], [MaTheLoai]) VALUES (17, 13, 3)
INSERT [dbo].[TheLoai_Phim] ([Id], [MaPhim], [MaTheLoai]) VALUES (18, 13, 4)
INSERT [dbo].[TheLoai_Phim] ([Id], [MaPhim], [MaTheLoai]) VALUES (19, 13, 12)
INSERT [dbo].[TheLoai_Phim] ([Id], [MaPhim], [MaTheLoai]) VALUES (20, 9, 3)
INSERT [dbo].[TheLoai_Phim] ([Id], [MaPhim], [MaTheLoai]) VALUES (21, 9, 4)
INSERT [dbo].[TheLoai_Phim] ([Id], [MaPhim], [MaTheLoai]) VALUES (22, 11, 10)
INSERT [dbo].[TheLoai_Phim] ([Id], [MaPhim], [MaTheLoai]) VALUES (23, 10, 3)
INSERT [dbo].[TheLoai_Phim] ([Id], [MaPhim], [MaTheLoai]) VALUES (24, 10, 4)
INSERT [dbo].[TheLoai_Phim] ([Id], [MaPhim], [MaTheLoai]) VALUES (27, 12, 1)
SET IDENTITY_INSERT [dbo].[TheLoai_Phim] OFF
GO
SET IDENTITY_INSERT [dbo].[ThongBao] ON 

INSERT [dbo].[ThongBao] ([MaThongBao], [MaUser], [NoiDung], [Link], [CreateAt], [DaXem]) VALUES (2, 2, N'Phim ĐẠI ĐƯỜNG ĐỊCH CÔNG ÁN đã có tập mới: Tập 3', N'/Films/Details?id=14&MaTap=4', CAST(N'2024-04-23T22:41:55.613' AS DateTime), 1)
INSERT [dbo].[ThongBao] ([MaThongBao], [MaUser], [NoiDung], [Link], [CreateAt], [DaXem]) VALUES (3, 2, N'Phim ĐẠI ĐƯỜNG ĐỊCH CÔNG ÁN đã có tập mới: Tập 4', N'/Films/Details?id=14&MaTap=5', CAST(N'2024-04-23T23:29:34.473' AS DateTime), 1)
INSERT [dbo].[ThongBao] ([MaThongBao], [MaUser], [NoiDung], [Link], [CreateAt], [DaXem]) VALUES (4, 2, N'Phim ĐẠI ĐƯỜNG ĐỊCH CÔNG ÁN đã có tập mới: Tập 5', N'/Films/Details?id=14&MaTap=6', CAST(N'2024-04-23T23:31:37.580' AS DateTime), 1)
INSERT [dbo].[ThongBao] ([MaThongBao], [MaUser], [NoiDung], [Link], [CreateAt], [DaXem]) VALUES (5, 2, N'Phim ĐẠI ĐƯỜNG ĐỊCH CÔNG ÁN đã có tập mới: Tập 6', N'/Films/Details?id=14&MaTap=7', CAST(N'2024-04-23T23:34:19.313' AS DateTime), 1)
INSERT [dbo].[ThongBao] ([MaThongBao], [MaUser], [NoiDung], [Link], [CreateAt], [DaXem]) VALUES (6, 2, N'Phim ĐẠI ĐƯỜNG ĐỊCH CÔNG ÁN đã có tập mới: Tập 7', N'/Films/Details?id=14&MaTap=8', CAST(N'2024-04-23T23:38:31.723' AS DateTime), 1)
INSERT [dbo].[ThongBao] ([MaThongBao], [MaUser], [NoiDung], [Link], [CreateAt], [DaXem]) VALUES (7, 2, N'Phim ĐẠI ĐƯỜNG ĐỊCH CÔNG ÁN đã có tập mới: Tập 1', N'/Films/Details?id=14&MaTap=9', CAST(N'2024-04-23T23:41:21.437' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[ThongBao] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([MaUser], [Ten], [Email], [SDT], [HinhAnh], [Password], [isDel]) VALUES (1, N'Đặng Hoàng Gia', N'keithtaki04@gmail.com', N'0778247569', N'giphy.gif', N'$2a$10$7azLK7QS5fYYhyXO0.JSwu8q5gxyU1HCv7jYmgOBoXixai3MRP2H.', 0)
INSERT [dbo].[User] ([MaUser], [Ten], [Email], [SDT], [HinhAnh], [Password], [isDel]) VALUES (2, N'Hoàng Gia', N'Admin@gmail.com', N'0778247569', N'Screenshot 2024-04-11 093905.png', N'$2a$10$aD.uMoldKGOb69elLlN9su/A8EGrYkzCv0JROU.glLAQqVlH7SkIm', 0)
INSERT [dbo].[User] ([MaUser], [Ten], [Email], [SDT], [HinhAnh], [Password], [isDel]) VALUES (3, N'Đặng Hoàng Gia', N'gia19122002@gmail.com', N'', N'user.png', N'$2a$10$kNXLNGtK46bJS27o5smL4uawaoiSmnMwLVmyAo3k5/rE8ceoPX0lS', 0)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
SET IDENTITY_INSERT [dbo].[YeuThich] ON 

INSERT [dbo].[YeuThich] ([MaYeuThich], [MaUser], [MaPhim]) VALUES (2, 2, 14)
INSERT [dbo].[YeuThich] ([MaYeuThich], [MaUser], [MaPhim]) VALUES (4, 2, 8)
SET IDENTITY_INSERT [dbo].[YeuThich] OFF
GO
/****** Object:  Index [IX_MaUserTao]    Script Date: 5/12/2024 05:26:18 PM ******/
CREATE NONCLUSTERED INDEX [IX_MaUserTao] ON [dbo].[BaiDang]
(
	[MaUserTao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_MaPhim]    Script Date: 5/12/2024 05:26:18 PM ******/
CREATE NONCLUSTERED INDEX [IX_MaPhim] ON [dbo].[Comment]
(
	[MaPhim] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_MaTap]    Script Date: 5/12/2024 05:26:18 PM ******/
CREATE NONCLUSTERED INDEX [IX_MaTap] ON [dbo].[Comment]
(
	[MaTap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_MaUser]    Script Date: 5/12/2024 05:26:18 PM ******/
CREATE NONCLUSTERED INDEX [IX_MaUser] ON [dbo].[Comment]
(
	[MaUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_MaPhim]    Script Date: 5/12/2024 05:26:18 PM ******/
CREATE NONCLUSTERED INDEX [IX_MaPhim] ON [dbo].[LichSuXem]
(
	[MaPhim] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_MaUser]    Script Date: 5/12/2024 05:26:18 PM ******/
CREATE NONCLUSTERED INDEX [IX_MaUser] ON [dbo].[LichSuXem]
(
	[MaUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_MaPhim]    Script Date: 5/12/2024 05:26:18 PM ******/
CREATE NONCLUSTERED INDEX [IX_MaPhim] ON [dbo].[Phan]
(
	[MaPhim] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_MaChatLuong]    Script Date: 5/12/2024 05:26:18 PM ******/
CREATE NONCLUSTERED INDEX [IX_MaChatLuong] ON [dbo].[Phim]
(
	[MaChatLuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_MaQuyen]    Script Date: 5/12/2024 05:26:18 PM ******/
CREATE NONCLUSTERED INDEX [IX_MaQuyen] ON [dbo].[Quyen_User]
(
	[MaQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_MaUser]    Script Date: 5/12/2024 05:26:18 PM ******/
CREATE NONCLUSTERED INDEX [IX_MaUser] ON [dbo].[Quyen_User]
(
	[MaUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_MaComment]    Script Date: 5/12/2024 05:26:18 PM ******/
CREATE NONCLUSTERED INDEX [IX_MaComment] ON [dbo].[Report]
(
	[MaComment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_MaUser]    Script Date: 5/12/2024 05:26:18 PM ******/
CREATE NONCLUSTERED INDEX [IX_MaUser] ON [dbo].[Report]
(
	[MaUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_MaPhan]    Script Date: 5/12/2024 05:26:18 PM ******/
CREATE NONCLUSTERED INDEX [IX_MaPhan] ON [dbo].[Tap]
(
	[MaPhan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_MaPhim]    Script Date: 5/12/2024 05:26:18 PM ******/
CREATE NONCLUSTERED INDEX [IX_MaPhim] ON [dbo].[TheLoai_Phim]
(
	[MaPhim] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_MaTheLoai]    Script Date: 5/12/2024 05:26:18 PM ******/
CREATE NONCLUSTERED INDEX [IX_MaTheLoai] ON [dbo].[TheLoai_Phim]
(
	[MaTheLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_MaUser]    Script Date: 5/12/2024 05:26:18 PM ******/
CREATE NONCLUSTERED INDEX [IX_MaUser] ON [dbo].[ThongBao]
(
	[MaUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_MaPhim]    Script Date: 5/12/2024 05:26:18 PM ******/
CREATE NONCLUSTERED INDEX [IX_MaPhim] ON [dbo].[Vote]
(
	[MaPhim] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_MaUser]    Script Date: 5/12/2024 05:26:18 PM ******/
CREATE NONCLUSTERED INDEX [IX_MaUser] ON [dbo].[Vote]
(
	[MaUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_MaPhim]    Script Date: 5/12/2024 05:26:18 PM ******/
CREATE NONCLUSTERED INDEX [IX_MaPhim] ON [dbo].[YeuThich]
(
	[MaPhim] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_MaUser]    Script Date: 5/12/2024 05:26:18 PM ******/
CREATE NONCLUSTERED INDEX [IX_MaUser] ON [dbo].[YeuThich]
(
	[MaUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BaiDang]  WITH CHECK ADD  CONSTRAINT [FK_dbo.BaiDang_dbo.User_MaUserTao] FOREIGN KEY([MaUserTao])
REFERENCES [dbo].[User] ([MaUser])
GO
ALTER TABLE [dbo].[BaiDang] CHECK CONSTRAINT [FK_dbo.BaiDang_dbo.User_MaUserTao]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Comment_dbo.Phim_MaPhim] FOREIGN KEY([MaPhim])
REFERENCES [dbo].[Phim] ([MaPhim])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_dbo.Comment_dbo.Phim_MaPhim]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Comment_dbo.Tap_MaTap] FOREIGN KEY([MaTap])
REFERENCES [dbo].[Tap] ([MaTap])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_dbo.Comment_dbo.Tap_MaTap]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Comment_dbo.User_MaUser] FOREIGN KEY([MaUser])
REFERENCES [dbo].[User] ([MaUser])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_dbo.Comment_dbo.User_MaUser]
GO
ALTER TABLE [dbo].[LichSuXem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LichSuXem_dbo.Phim_MaPhim] FOREIGN KEY([MaPhim])
REFERENCES [dbo].[Phim] ([MaPhim])
GO
ALTER TABLE [dbo].[LichSuXem] CHECK CONSTRAINT [FK_dbo.LichSuXem_dbo.Phim_MaPhim]
GO
ALTER TABLE [dbo].[LichSuXem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LichSuXem_dbo.User_MaUser] FOREIGN KEY([MaUser])
REFERENCES [dbo].[User] ([MaUser])
GO
ALTER TABLE [dbo].[LichSuXem] CHECK CONSTRAINT [FK_dbo.LichSuXem_dbo.User_MaUser]
GO
ALTER TABLE [dbo].[Phan]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Phan_dbo.Phim_MaPhim] FOREIGN KEY([MaPhim])
REFERENCES [dbo].[Phim] ([MaPhim])
GO
ALTER TABLE [dbo].[Phan] CHECK CONSTRAINT [FK_dbo.Phan_dbo.Phim_MaPhim]
GO
ALTER TABLE [dbo].[Phim]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Phim_dbo.ChatLuong_MaChatLuong] FOREIGN KEY([MaChatLuong])
REFERENCES [dbo].[ChatLuong] ([MaChatLuong])
GO
ALTER TABLE [dbo].[Phim] CHECK CONSTRAINT [FK_dbo.Phim_dbo.ChatLuong_MaChatLuong]
GO
ALTER TABLE [dbo].[Quyen_User]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Quyen_User_dbo.Quyen_MaQuyen] FOREIGN KEY([MaQuyen])
REFERENCES [dbo].[Quyen] ([MaQuyen])
GO
ALTER TABLE [dbo].[Quyen_User] CHECK CONSTRAINT [FK_dbo.Quyen_User_dbo.Quyen_MaQuyen]
GO
ALTER TABLE [dbo].[Quyen_User]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Quyen_User_dbo.User_MaUser] FOREIGN KEY([MaUser])
REFERENCES [dbo].[User] ([MaUser])
GO
ALTER TABLE [dbo].[Quyen_User] CHECK CONSTRAINT [FK_dbo.Quyen_User_dbo.User_MaUser]
GO
ALTER TABLE [dbo].[Report]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Report_dbo.Comment_MaComment] FOREIGN KEY([MaComment])
REFERENCES [dbo].[Comment] ([MaComment])
GO
ALTER TABLE [dbo].[Report] CHECK CONSTRAINT [FK_dbo.Report_dbo.Comment_MaComment]
GO
ALTER TABLE [dbo].[Report]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Report_dbo.User_MaUser] FOREIGN KEY([MaUser])
REFERENCES [dbo].[User] ([MaUser])
GO
ALTER TABLE [dbo].[Report] CHECK CONSTRAINT [FK_dbo.Report_dbo.User_MaUser]
GO
ALTER TABLE [dbo].[Tap]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Tap_dbo.Phan_MaPhan] FOREIGN KEY([MaPhan])
REFERENCES [dbo].[Phan] ([MaPhan])
GO
ALTER TABLE [dbo].[Tap] CHECK CONSTRAINT [FK_dbo.Tap_dbo.Phan_MaPhan]
GO
ALTER TABLE [dbo].[TheLoai_Phim]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TheLoai_Phim_dbo.Phim_MaPhim] FOREIGN KEY([MaPhim])
REFERENCES [dbo].[Phim] ([MaPhim])
GO
ALTER TABLE [dbo].[TheLoai_Phim] CHECK CONSTRAINT [FK_dbo.TheLoai_Phim_dbo.Phim_MaPhim]
GO
ALTER TABLE [dbo].[TheLoai_Phim]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TheLoai_Phim_dbo.TheLoai_MaTheLoai] FOREIGN KEY([MaTheLoai])
REFERENCES [dbo].[TheLoai] ([MaTheLoai])
GO
ALTER TABLE [dbo].[TheLoai_Phim] CHECK CONSTRAINT [FK_dbo.TheLoai_Phim_dbo.TheLoai_MaTheLoai]
GO
ALTER TABLE [dbo].[ThongBao]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ThongBao_dbo.User_MaUser] FOREIGN KEY([MaUser])
REFERENCES [dbo].[User] ([MaUser])
GO
ALTER TABLE [dbo].[ThongBao] CHECK CONSTRAINT [FK_dbo.ThongBao_dbo.User_MaUser]
GO
ALTER TABLE [dbo].[Vote]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Vote_dbo.Phim_MaPhim] FOREIGN KEY([MaPhim])
REFERENCES [dbo].[Phim] ([MaPhim])
GO
ALTER TABLE [dbo].[Vote] CHECK CONSTRAINT [FK_dbo.Vote_dbo.Phim_MaPhim]
GO
ALTER TABLE [dbo].[Vote]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Vote_dbo.User_MaUser] FOREIGN KEY([MaUser])
REFERENCES [dbo].[User] ([MaUser])
GO
ALTER TABLE [dbo].[Vote] CHECK CONSTRAINT [FK_dbo.Vote_dbo.User_MaUser]
GO
ALTER TABLE [dbo].[YeuThich]  WITH CHECK ADD  CONSTRAINT [FK_dbo.YeuThich_dbo.Phim_MaPhim] FOREIGN KEY([MaPhim])
REFERENCES [dbo].[Phim] ([MaPhim])
GO
ALTER TABLE [dbo].[YeuThich] CHECK CONSTRAINT [FK_dbo.YeuThich_dbo.Phim_MaPhim]
GO
ALTER TABLE [dbo].[YeuThich]  WITH CHECK ADD  CONSTRAINT [FK_dbo.YeuThich_dbo.User_MaUser] FOREIGN KEY([MaUser])
REFERENCES [dbo].[User] ([MaUser])
GO
ALTER TABLE [dbo].[YeuThich] CHECK CONSTRAINT [FK_dbo.YeuThich_dbo.User_MaUser]
GO
USE [master]
GO
ALTER DATABASE [WatchMovies] SET  READ_WRITE 
GO
