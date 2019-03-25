Create Table SanPham
(
	MaSP int Identity(1,1),
	TenSP nvarchar(255) NOT NULL,
	UrlHinh nvarchar(255),
	GiaHienTai Decimal not null default 0,
	GiaCu Decimal not null default 0,
	MoTa ntext,--Mô tả(Chức năng, cấu hình)
	MoTaCT ntext, --Mô tả chi tiết chức năng cấu hình
	DanhGiaCT ntext, --Đánh giá chi tiết
	MaDD int not null,
	SLDaBan int default 0 not null, --số lượng bán
	KhuyenMai float default 0 not null,
	LuotXem int default 0,--Chức năng tính số lần xem của sản phẩm
	NgayCapNhat smalldatetime,
	AnHien bit NOT NULL,	
	CONSTRAINT PK_SanPham PRIMARY KEY(MaSP)
)
Create Table DiaDiem
(
	MaDD int Identity(1,1),
	TenDD nvarchar(255) NOT NULL,
	UrlHinh nvarchar(255) ,
	AnHien bit NOT NULL,
	CONSTRAINT PK_DiaDiem PRIMARY KEY(MaDD)
)
Create Table TinTuc
(
	MaTin int Identity(1,1),
	TieuDe nvarchar(255) NOT NULL,
	TomTat nvarchar(255) NOT NULL,
	UrlHinh nvarchar(255) NOT NULL,
	NoiDung ntext not null,
	LuotXem int default 0,--Chức năng tính số lượt xem của tin tức
	NgayCapNhat smalldatetime,
	AnHien bit NOT NULL
	CONSTRAINT PK_TinTuc PRIMARY KEY(MaTin)
)
Create Table LoaiTinTuc
(
	MaLTT int Identity(1,1),
	TenLTT nvarchar(255) NOT NULL,
	TomTat nvarchar(255) NOT NULL,
	UrlHinh nvarchar(255),
	NgayCapNhat smalldatetime,
	AnHien bit NOT NULL
	CONSTRAINT PK_LoaiTinTuc PRIMARY KEY(MaLTT)
)
Create Table KhachHang
(
	MaKH int Identity(1,1),
	Username nvarchar(50) NOT NULL,
	Password nvarchar(50) not null,
	Email nvarchar(50) not null,
	HoTen nvarchar(50),
	DiaChi nvarchar(50),
	DienThoai varchar(11),
	CMND varchar(9) not null, --Chức năng CMND của khách hàng dự kiến dùng để lấy lại pass khi quên
	NgaySinh smalldatetime,
	GioiTinh bit,
	NgayDangKy SMALLDATETIME,
	Avatar nvarchar(255) DEFAULT 'Content/Images/Upload/avatar.jpg',
	AnHien bit Not null,
	CONSTRAINT PK_KhachHang PRIMARY KEY(MaKH)
)
CREATE TABLE DonHang
(
	MaDH INT IDENTITY(1,1),
	MaKH INT,
	NgayMua SMALLDATETIME,	
	NgayGiao SMALLDATETIME,
	TenNguoiNhan nvarchar(50),
	DiaChiNhan nvarchar(50),
	DienThoaiNhan varchar(11),
	HTThanhToan bit Default 0,
	Trigia DECIMAL Check (Trigia>0),
	Dagiao bit Default 0,		
	CONSTRAINT PK_DonHang PRIMARY KEY(MaDH)
)

CREATE TABLE CT_DonHang
(
	MaCTDH INT IDENTITY(1,1),
	MaDH INT,
	MaSP INT,
	SoLuong INT,
	Gia Decimal Check(Gia>=0),
	Thanhtien DECIMAL Check(Thanhtien>=0),
	CONSTRAINT PK_CT_DonHang PRIMARY KEY(MaCTDH)
)
CREATE TABLE QuangCao
(
	MaQC INT IDENTITY(1,1),
	TenQC nvarchar(255) NOT NULL,
	TenCty nVarchar(200) NOT NULL,
	UrlHinh Varchar(100),
	LinkUrl Varchar(100), --Link liên kết đến website công ty cần quảng cáo khi click vào hình quảng cáo
	vitri varchar(1) NOT NULL,
	Ngaybatdau SMALLDATETIME,
	Ngayhethan SMALLDATETIME,
	AnHien bit NOT NULL
	CONSTRAINT PK_QuangCao PRIMARY KEY(MaQC)
)

CREATE TABLE LienHe
(
	MaLH INT IDENTITY(1,1),
	MaKH int,
	Avatar nvarchar(255),
	TenNguoiGui nVarchar(200) NOT NULL,	
	NoiDung NVARCHAR(1000)NOT NULL,
	NgayGui SMALLDATETIME,	
	LuotGui bit,--0:khách hàng, 1:Admin
	DaDocKH bit,--0:khách hàng chưa đọc tin, 1 đã đọc tin
	DaDocAD bit,--0 Admin chưa đọc tin, 1 Admin đã đọc tin
	Anhien bit,
	CONSTRAINT PK_LienHe PRIMARY KEY(MaLH)
)
Create Table Admin
(
	MaAdmin int Identity(1,1),	
	Username nvarchar(50) NOT NULL,
	Password nvarchar(50) not null,
	Email nvarchar(50) not null,
	HoTen nvarchar(50),
	DiaChi nvarchar(50),
	DienThoai varchar(11),
	CMND varchar(9) not null,
	NgaySinh smalldatetime,
	GioiTinh bit,
	NgayDangKy SMALLDATETIME,
	Avatar nvarchar(255) DEFAULT 'Content/Images/Upload/Avatar_Admin.jpg',
	AnHien bit NOT NULL
	CONSTRAINT PK_Admin PRIMARY KEY(MaAdmin)

)

Create Table PhanQuyen_Admin
(
	MaPQ int Identity(1,1),
	MaAdmin int,
	PQ_Menu bit,
	PQ_Slider bit,
	PQ_NhaSanXuat bit,
	PQ_SanPham bit,
	PQ_KhachHang bit,
	PQ_DonHang bit,
	PQ_TinTuc bit,
	PQ_QuangCao bit,
	PQ_LienHe bit,
	PQ_GioiThieu bit,
	PQ_QuanTriAdmin bit,
	PQ_SiteMap bit,
	CONSTRAINT PK_PhanQuyen_Admin PRIMARY KEY(MaPQ)
)

create Table Menu
(
	MaMenu int Identity(1,1),
	TenMenu nVarchar(50),
	url varchar(50),
	Thutu int
	CONSTRAINT PK_Menu PRIMARY KEY(MaMenu)
)

Create Table Slider
(
	MaSlider int Identity(1,1),
	UrlHinh Varchar(100),
	LinkUrl Varchar(100),
	Thutu int,
	AnHien bit NOT NULL
	CONSTRAINT PK_Slider PRIMARY KEY(MaSlider)
)

CREATE TABLE GioHang
(
	Id INT IDENTITY(1,1),
	MaGH NVARCHAR (max) NOT NULL,--Ở đây mã giỏ hàng là ký tự mã hóa có chữ nên ko để kiểu Int
	MaSP INT NOT NULL,
	SoLuong INT,
	Thanhtien DECIMAL Check(Thanhtien>=0),--Tính thành tiền cho từng sản phẩm
	NgayMua SMALLDATETIME
	CONSTRAINT PK_GioHang PRIMARY KEY(Id)
)

Create Table BinhLuan -- Chức năng bình luần dự kiến sẽ có 2 tab (1 tab bình luận qua Facebook, yahoo,... tab kia bình luận bằng tài khoản khách hàng)
(
	MaBL int Identity(1,1),
	TenNguoiBL nvarchar(50),
	TieuDeBL nvarchar(50),
	NoiDungBL ntext,
	NgayBL smalldatetime,
	MaKH int,
	MaSP int,
	AnHien bit Not null,
	CONSTRAINT PK_BinhLuan PRIMARY KEY(MaBL)
)

ALTER TABLE SanPham ADD CONSTRAINT FK_SP_DD FOREIGN KEY (MaDD) REFERENCES DiaDiem(MaDD)
ALTER TABLE TinTuc ADD CONSTRAINT FK_TT_LTT FOREIGN KEY (MaLTT) REFERENCES LoaiTinTuc(MaLTT)
ALTER TABLE BinhLuan ADD CONSTRAINT FK_BL_SP FOREIGN KEY (MaSP) REFERENCES SanPham(MaSP)
ALTER TABLE BinhLuan ADD CONSTRAINT FK_BL_KH FOREIGN KEY (MaKH) REFERENCES KhachHang(MaKH)
ALTER TABLE GioHang ADD CONSTRAINT FK_GioHang_SanPham FOREIGN KEY (MaSP) REFERENCES SanPham(MaSP)
ALTER TABLE DonHang ADD CONSTRAINT FK_DonHang_KhachHang FOREIGN KEY (MaKH) REFERENCES KhachHang(MaKH)
ALTER TABLE CT_DonHang ADD CONSTRAINT FK_CT_DonHang_DonHang FOREIGN KEY (MaDH) REFERENCES DonHang(MaDH)
ALTER TABLE CT_DonHang ADD CONSTRAINT FK_CT_DonHang_SP FOREIGN KEY (MaSP) REFERENCES SanPham(MaSP)
ALTER TABLE PhanQuyen_Admin ADD CONSTRAINT FK_PQAdmin_Admin FOREIGN KEY (MaAdmin) REFERENCES Admin(MaAdmin)
ALTER TABLE LienHe ADD CONSTRAINT FK_LH_KH FOREIGN KEY (MaKH) REFERENCES KhachHang(MaKH)