CREATE VIEW BenhNhanChuaDieuTri
AS
SELECT 
    bn.MaBenhNhan,
    bn.HoTen AS TenBenhNhan,
    bn.DiaChi,
    bn.CMND
FROM BenhNhan bn
LEFT JOIN DieuTri dt ON bn.MaBenhNhan = dt.MaBenhNhan
WHERE dt.MaDieuTri IS NULL;
GO

SELECT * FROM BenhNhanChuaDieuTri;