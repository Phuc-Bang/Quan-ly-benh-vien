CREATE FUNCTION TinhSoNgayDieuTri(@MaBenhNhan varchar(10))
RETURNS INT
AS
BEGIN
    DECLARE @SoNgay INT;
    SELECT @SoNgay = DATEDIFF(DAY, MIN(NgayGio), MAX(NgayGio))
    FROM DieuTri
    WHERE MaBenhNhan = @MaBenhNhan;
    RETURN ISNULL(@SoNgay, 0);
END;
GO

SELECT dbo.TinhSoNgayDieuTri('BN101') AS SoNgay;