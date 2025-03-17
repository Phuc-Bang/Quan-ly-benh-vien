CREATE VIEW BenhNhanDieuTriDaiNgay
AS
SELECT 
    bn.MaBenhNhan,
    bn.HoTen AS TenBenhNhan,
    MIN(dt.NgayGio) AS NgayBatDau,
    MAX(dt.NgayGio) AS NgayKetThuc,
    DATEDIFF(DAY, MIN(dt.NgayGio), MAX(dt.NgayGio)) AS SoNgayDieuTri,
    COUNT(dt.MaDieuTri) AS SoLanDieuTri
FROM BenhNhan bn
JOIN DieuTri dt ON bn.MaBenhNhan = dt.MaBenhNhan
GROUP BY bn.MaBenhNhan, bn.HoTen
HAVING DATEDIFF(DAY, MIN(dt.NgayGio), MAX(dt.NgayGio)) > 3;
GO

SELECT * FROM BenhNhanDieuTriDaiNgay;