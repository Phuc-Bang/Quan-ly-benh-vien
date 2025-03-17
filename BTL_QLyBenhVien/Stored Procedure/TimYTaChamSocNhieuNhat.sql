CREATE PROCEDURE TimYTaChamSocNhieuNhat
    @NgayBatDau datetime,
    @NgayKetThuc datetime,
    @MaYTa varchar(10) OUTPUT,
    @SoLanChamSoc int OUTPUT
AS
BEGIN
    SELECT TOP 1
        @MaYTa = yt.MaYTa,
        @SoLanChamSoc = COUNT(cs.MaChamSoc)
    FROM YTa yt
    JOIN ChamSoc cs ON yt.MaYTa = cs.MaYTa
    WHERE cs.NgayGioChamSoc BETWEEN @NgayBatDau AND @NgayKetThuc
    GROUP BY yt.MaYTa, yt.HoTen
    ORDER BY COUNT(cs.MaChamSoc) DESC;
END;
GO

DECLARE @MaYTaKetQua varchar(10), @SoLan int;
EXEC TimYTaChamSocNhieuNhat 
    @NgayBatDau = '2025-03-01', 
    @NgayKetThuc = '2025-03-31', 
    @MaYTa = @MaYTaKetQua OUTPUT, 
    @SoLanChamSoc = @SoLan OUTPUT;
PRINT 'Y ta: ' + @MaYTaKetQua + ', So lan cham soc: ' + CAST(@SoLan AS varchar(10));