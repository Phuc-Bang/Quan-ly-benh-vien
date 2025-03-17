CREATE FUNCTION DemChamSocTheoNgay(@Ngay datetime)
RETURNS INT
AS
BEGIN
    RETURN (
        SELECT COUNT(*)
        FROM ChamSoc
        WHERE CAST(NgayGioChamSoc AS DATE) = CAST(@Ngay AS DATE)
    );
END;
GO

SELECT dbo.DemChamSocTheoNgay('2025-03-11') AS SoLanChamSoc;