ALTER DATABASE QLyBenhVien SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
GO

RESTORE DATABASE QLyBenhVien
FROM DISK = 'E:\MySQL\BTL_QLyBenhVien\Back up\QLyBenhVien_Full_20250317.bak'
WITH REPLACE, -- Ghi de CSDL hien tai
     RECOVERY;

ALTER DATABASE QLyBenhVien SET MULTI_USER;
GO