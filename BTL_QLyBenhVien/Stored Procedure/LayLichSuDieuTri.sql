CREATE PROCEDURE LayLichSuDieuTri
    @MaBenhNhan varchar(10)
AS
BEGIN
    SELECT 
        dt.MaDieuTri,
        bs.HoTen AS TenBacSi,
        dt.NgayGio,
        dt.LieuPhapDieuTri,
        dt.KetQua
    FROM DieuTri dt
    JOIN BacSi bs ON dt.MaBacSi = bs.MaBacSi
    WHERE dt.MaBenhNhan = @MaBenhNhan
    ORDER BY dt.NgayGio DESC;
END;
GO

EXEC LayLichSuDieuTri @MaBenhNhan = 'BN101';