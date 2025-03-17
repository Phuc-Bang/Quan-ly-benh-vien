create database QLyBenhVien
GO
use QLyBenhVien

-- Bang BacSi
create table BacSi (
    MaBacSi varchar(10) primary key,
    HoTen varchar(100) not null,
    DiaChi varchar(max),
    SDT varchar(20) check (SDT like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]') -- Rang buoc SDT la 10 so
);

-- Bang ChuyenKhoa
create table ChuyenKhoa (
    MaChuyenKhoa varchar(10) primary key,
    TenChuyenKhoa varchar(100) not null
);

-- Bang BacSiChuyenKhoa
create table BacSiChuyenKhoa (
    MaBacSi varchar(10),
    MaChuyenKhoa varchar(10),
    primary key (MaBacSi, MaChuyenKhoa),
    foreign key (MaBacSi) references BacSi(MaBacSi),
    foreign key (MaChuyenKhoa) references ChuyenKhoa(MaChuyenKhoa)
);

-- Bang BenhNhan (doi ten tu BenhVien)
create table BenhNhan (
    MaBenhNhan varchar(10) primary key,
    HoTen varchar(100) not null,
    DiaChi varchar(max),
    CMND varchar(20) unique
);

-- Bang DieuTri
create table DieuTri (
    MaDieuTri varchar(10) primary key,
    MaBenhNhan varchar(10),
    MaBacSi varchar(10),
    NgayGio datetime,
    LieuPhapDieuTri varchar(max),
    KetQua varchar(50), -- Them cot KetQua
    foreign key (MaBenhNhan) references BenhNhan(MaBenhNhan),
    foreign key (MaBacSi) references BacSi(MaBacSi)
);

-- Bang YTa
create table YTa (
    MaYTa varchar(10) primary key,
    HoTen varchar(100) not null
);

-- Bang ChamSoc
create table ChamSoc (
    MaChamSoc int identity(1,1) primary key,
    MaYTa varchar(10),
    MaBenhNhan varchar(10),
    NgayGioChamSoc datetime, -- Thay NgayChamSoc bang NgayGioChamSoc
    NoiDungChamSoc varchar(max),
    foreign key (MaYTa) references YTa(MaYTa),
    foreign key (MaBenhNhan) references BenhNhan(MaBenhNhan)
);

-- Chen du lieu vao bang BacSi
insert into BacSi(MaBacSi, HoTen, DiaChi, SDT) values
('BS001', 'Dang Trung Hieu', 'Thuong Tin, Ha Noi', '0987654321'),
('BS002', 'Nguyen Phuc Bang', 'Giao Thuy, Nam Dinh', '0978654321'),
('BS003', 'Nguyen Ngoc Duong', 'Cam Giang, Hai Duong', '0986754321');

-- Chen du lieu vao bang ChuyenKhoa
insert into ChuyenKhoa(MaChuyenKhoa, TenChuyenKhoa) values
('CK001', 'Noi Khoa'),
('CK002', 'Ngoai Khoa'),
('CK003', 'Khoa Than Kinh');

-- Chen du lieu vao bang BacSiChuyenKhoa
insert into BacSiChuyenKhoa(MaBacSi, MaChuyenKhoa) values
('BS001', 'CK001'),
('BS002', 'CK002'),
('BS003', 'CK003');

-- Chen du lieu vao bang BenhNhan
insert into BenhNhan (MaBenhNhan, HoTen, DiaChi, CMND) values
('BN101', 'Vuong Quoc Anh', 'Chi Linh, Hai Duong', '01234567890'),
('BN102', 'Nguyen Huy Quang', 'Thuan Thanh, Bac Ninh', '02134567890'),
('BN103', 'Hoang Duc Giang', 'Tam Dao, Vinh Phuc', '01324567890');

-- Chen du lieu vao bang DieuTri
insert into DieuTri (MaDieuTri, MaBenhNhan, MaBacSi, NgayGio, LieuPhapDieuTri, KetQua) values
('DT201', 'BN101', 'BS001', '2025-03-10 09:30:00', 'Theo doi nhip tim', 'On dinh'),
('DT202', 'BN102', 'BS002', '2025-03-11 11:25:00', 'Truyen dich', 'Hoan thanh'),
('DT203', 'BN103', 'BS003', '2025-03-17 19:00:00', 'Dung thuoc an than', 'Dang theo doi');

-- Chen du lieu vao bang YTa
insert into YTa (MaYTa, HoTen) values
('YT905', 'Le Thi Van Anh'),
('YT906', 'Nguyen Thi Tinh'),
('YT907', 'Hoang Thuy Dung');

-- Chen du lieu vao bang ChamSoc
insert into ChamSoc (MaYTa, MaBenhNhan, NgayGioChamSoc, NoiDungChamSoc) values
('YT905', 'BN101', '2025-03-10 10:00:00', 'Trong coi nhip tim'),
('YT906', 'BN102', '2025-03-11 12:00:00', 'Theo doi truyen dich'),
('YT907', 'BN103', '2025-03-17 20:00:00', 'Giam sat giac ngu');


--SELECT * FROM BacSi;
-- SELECT * FROM BacSiChuyenKhoa; 
-- SELECT * FROM BenhNhan; 
-- SELECT * FROM ChamSoc; 
-- SELECT * FROM ChuyenKhoa; 
-- SELECT * FROM DieuTri; 
-- SELECT * FROM YTa; 

GO



