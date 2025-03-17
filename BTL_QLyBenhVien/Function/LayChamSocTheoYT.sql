DROP FUNCTION IF EXISTS LayChamSocTheoYTa;
GO

CREATE FUNCTION LayChamSocTheoYTa(@MaYTa varchar(10))
RETURNS TABLE
AS
RETURN
(
    SELECT 
        cs.MaChamSoc,
        bn.HoTen AS TenBenhNhan,
        cs.NgayGioChamSoc,
        cs.NoiDungChamSoc
    FROM ChamSoc cs
    JOIN BenhNhan bn ON cs.MaBenhNhan = bn.MaBenhNhan
    WHERE cs.MaYTa = @MaYTa
);
GO

SELECT * FROM dbo.LayChamSocTheoYTa('YT906');