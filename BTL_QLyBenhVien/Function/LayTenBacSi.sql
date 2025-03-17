CREATE FUNCTION LayTenBacSi(@MaBacSi varchar(10))
RETURNS varchar(100)
AS
BEGIN
    DECLARE @Ten varchar(100);
    SELECT @Ten = HoTen
    FROM BacSi
    WHERE MaBacSi = @MaBacSi;
    RETURN ISNULL(@Ten, 'Khong tim thay');
END;
GO

SELECT dbo.LayTenBacSi('BS001') AS TenBacSi;