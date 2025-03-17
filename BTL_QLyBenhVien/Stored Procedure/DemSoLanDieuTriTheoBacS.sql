CREATE PROCEDURE DemSoLanDieuTriTheoBacSi
    @MaBacSi varchar(10),
    @SoLanDieuTri int OUTPUT
AS
BEGIN
    SELECT @SoLanDieuTri = COUNT(MaDieuTri)
    FROM DieuTri
    WHERE MaBacSi = @MaBacSi;
END;
GO

DECLARE @SoLan int;
EXEC DemSoLanDieuTriTheoBacSi @MaBacSi = 'BS001', @SoLanDieuTri = @SoLan OUTPUT;
PRINT @SoLan;