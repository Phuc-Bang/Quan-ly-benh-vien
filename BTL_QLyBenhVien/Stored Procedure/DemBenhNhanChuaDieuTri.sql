CREATE PROCEDURE DemBenhNhanChuaDieuTri
    @SoBenhNhan int OUTPUT
AS
BEGIN
    SELECT @SoBenhNhan = COUNT(*)
    FROM BenhNhan bn
    LEFT JOIN DieuTri dt ON bn.MaBenhNhan = dt.MaBenhNhan
    WHERE dt.MaDieuTri IS NULL;
END;
GO

DECLARE @SoLuong int;
EXEC DemBenhNhanChuaDieuTri @SoBenhNhan = @SoLuong OUTPUT;
PRINT @SoLuong;