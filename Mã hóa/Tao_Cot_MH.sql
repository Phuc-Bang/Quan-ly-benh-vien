USE QLyBenhVien;
GO

ALTER TABLE BenhNhan
ADD CMNDMaHoa varbinary(20);

select * from BenhNhan;