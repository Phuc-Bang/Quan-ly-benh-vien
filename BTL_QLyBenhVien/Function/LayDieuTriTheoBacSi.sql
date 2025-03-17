CREATE FUNCTION LayDieuTriTheoBacSi(@MaBacSi varchar(10))
RETURNS TABLE
AS
RETURN
(
    SELECT 
        dt.MaDieuTri,
        bn.HoTen AS TenBenhNhan,
        dt.NgayGio,
        dt.LieuPhapDieuTri,
        dt.KetQua
    FROM DieuTri dt
    JOIN BenhNhan bn ON dt.MaBenhNhan = bn.MaBenhNhan
    WHERE dt.MaBacSi = @MaBacSi
);
GO

SELECT * FROM dbo.LayDieuTriTheoBacSi('BS001');