USE QLyBenhVien;
GO

-- Tao login cho nguoi dung va quan tri
CREATE LOGIN NguoiDungLogin WITH PASSWORD = 'NguoiDung123!';
CREATE LOGIN QuanTriLogin WITH PASSWORD = 'QuanTri123!';
GO

-- Tao user trong co so du lieu
CREATE USER NguoiDung FOR LOGIN NguoiDungLogin;
CREATE USER QuanTri FOR LOGIN QuanTriLogin;
GO

-- Tao vai tro
CREATE ROLE VaiTroNguoiDung;
CREATE ROLE VaiTroAdmin;
GO

-- Phan quyen chi tiet cho VaiTroNguoiDung (nguoi dung thong thuong)
GRANT SELECT (MaBenhNhan, HoTen) ON BenhNhan TO VaiTroNguoiDung;
GRANT SELECT (MaDieuTri, MaBenhNhan, NgayGio) ON DieuTri TO VaiTroNguoiDung;
GRANT SELECT (MaChamSoc, MaBenhNhan, NgayGioChamSoc) ON ChamSoc TO VaiTroNguoiDung;
GO

-- Phan quyen cho VaiTroAdmin (toan quyen)
GRANT SELECT, INSERT, UPDATE, DELETE ON BacSi TO VaiTroAdmin;
GRANT SELECT, INSERT, UPDATE, DELETE ON ChuyenKhoa TO VaiTroAdmin;
GRANT SELECT, INSERT, UPDATE, DELETE ON BacSiChuyenKhoa TO VaiTroAdmin;
GRANT SELECT, INSERT, UPDATE, DELETE ON BenhNhan TO VaiTroAdmin;
GRANT SELECT, INSERT, UPDATE, DELETE ON DieuTri TO VaiTroAdmin;
GRANT SELECT, INSERT, UPDATE, DELETE ON YTa TO VaiTroAdmin;
GRANT SELECT, INSERT, UPDATE, DELETE ON ChamSoc TO VaiTroAdmin;

-- Gan nguoi dung vao vai tro
ALTER ROLE VaiTroNguoiDung ADD MEMBER NguoiDung;
ALTER ROLE VaiTroAdmin ADD MEMBER QuanTri;
GO

-- Bị lỗi vì không thể xem đc CMD vvvvvv
EXECUTE AS USER = 'NguoiDung';
SELECT * FROM QLyBenhVien.dbo.ChamSoc;
REVERT;

-- Xem được ALLL
EXECUTE AS USER = 'QuanTri';
SELECT * FROM QLyBenhVien.dbo.BacSi;
REVERT;