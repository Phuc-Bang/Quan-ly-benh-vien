CREATE FUNCTION KiemTraChamSocTrongNgay(@MaBenhNhan varchar(10), @Ngay datetime)
RETURNS BIT
AS
BEGIN
    DECLARE @CoChamSoc BIT;
    IF EXISTS (
        SELECT 1 
        FROM ChamSoc 
        WHERE MaBenhNhan = @MaBenhNhan 
        AND CAST(NgayGioChamSoc AS DATE) = CAST(@Ngay AS DATE)
    )
        SET @CoChamSoc = 1;
    ELSE
        SET @CoChamSoc = 0;
    RETURN @CoChamSoc;
END;
GO

SELECT dbo.KiemTraChamSocTrongNgay('BN102', '2025-03-11') AS CoChamSoc;