CREATE VIEW ThongTinChamSoc
AS
SELECT 
    cs.MaChamSoc,
    bn.HoTen AS TenBenhNhan,
    yt.HoTen AS TenYTa,
    cs.NgayGioChamSoc,
    cs.NoiDungChamSoc
FROM ChamSoc cs
JOIN BenhNhan bn ON cs.MaBenhNhan = bn.MaBenhNhan
JOIN YTa yt ON cs.MaYTa = yt.MaYTa;
GO

SELECT * FROM ThongTinChamSoc;