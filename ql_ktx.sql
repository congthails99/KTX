use QL_KTX
go
create table Nhanvien
(
	Manhanvien nvarchar(50)not null primary key ,
	Hoten nvarchar(50),
	Ngaysinh date,
	Gioitinh nvarchar(50),
	Diachi nvarchar(50),
	Chucvu nvarchar(50),
	SDT int
)
go
create table Phong
(	
	Sophong nvarchar(50) not null,
	Khunha nvarchar(50) not null ,
	Manhanvien nvarchar(50) foreign key references Nhanvien ,
	Soluongsinhvien int,
	Tinhtrangphong nvarchar(50),
	Mota text,
	CONSTRAINT phong_pk primary key(Sophong,Khunha),
)
go
create table Sinhvien
(
	Masinhvien nvarchar(50) not null primary key ,
	Hoten nvarchar(50),
	Ngaysinh date,
	Gioitinh nvarchar(50),
	CMND nvarchar(50),
	SDT int,
	Lop nvarchar(50),
	Khoa nvarchar(50),
)
go
create table Hopdong
(
	Mahopdong nvarchar(50) not null primary key,
	Masinhvien nvarchar(50) foreign key references Sinhvien,
	Manhanvien nvarchar(50) foreign key references Nhanvien,
	Sophong nvarchar(50) not null ,
	Khunha nvarchar(50) not null,
	Ngaylap date,
	Ngaybatdau date ,
	Ngayketthuc date,
	CONSTRAINT sophong_pk FOREIGN KEY(Sophong,Khunha) REFERENCES Phong (Sophong,Khunha)
)
go
create table Hoadon
(
	Mahoadon int primary key not null,
	Manhanvien nvarchar(50)foreign key references Nhanvien,
	Sophong nvarchar(50),
	Khunha nvarchar(50),
	Ngaylap date,
	Tongtien float,
	Macongtodien int,
	Chisodiendau int,
	Chisodiencuoi int,
	Macongtonuoc int,
	Chisonuocdau int,
	Chisonuoccuoi int,
	CONSTRAINT sophong_hd_pk FOREIGN KEY(Sophong,Khunha) REFERENCES Phong (Sophong,Khunha)
)




