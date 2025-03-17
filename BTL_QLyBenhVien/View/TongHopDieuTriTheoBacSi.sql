CREATE VIEW TongHopDieuTriTheoBacSi
AS
SELECT 
    bs.MaBacSi,
    bs.HoTen AS TenBacSi,
    COUNT(dt.MaDieuTri) AS SoLanDieuTri,
    COUNT(DISTINCT dt.MaBenhNhan) AS SoBenhNhan
FROM BacSi bs
LEFT JOIN DieuTri dt ON bs.MaBacSi = dt.MaBacSi
GROUP BY bs.MaBacSi, bs.HoTen;
GO

SELECT * FROM TongHopDieuTriTheoBacSi;