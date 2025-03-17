CREATE FUNCTION LayBenhNhanChuaDieuTri()
RETURNS TABLE
AS
RETURN
(
    SELECT 
        bn.MaBenhNhan,
        bn.HoTen,
        bn.DiaChi,
        bn.CMND
    FROM BenhNhan bn
    LEFT JOIN DieuTri dt ON bn.MaBenhNhan = dt.MaBenhNhan
    WHERE dt.MaDieuTri IS NULL
);
GO

SELECT * FROM dbo.LayBenhNhanChuaDieuTri();