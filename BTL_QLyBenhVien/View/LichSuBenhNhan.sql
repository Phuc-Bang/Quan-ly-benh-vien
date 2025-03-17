CREATE VIEW LichSuBenhNhan
AS
SELECT 
    bn.MaBenhNhan,
    bn.HoTen AS TenBenhNhan,
    dt.NgayGio AS NgayDieuTri,
    dt.LieuPhapDieuTri,
    bs.HoTen AS TenBacSi,
    cs.NgayGioChamSoc AS NgayChamSoc,
    cs.NoiDungChamSoc,
    yt.HoTen AS TenYTa
FROM BenhNhan bn
LEFT JOIN DieuTri dt ON bn.MaBenhNhan = dt.MaBenhNhan
LEFT JOIN BacSi bs ON dt.MaBacSi = bs.MaBacSi
LEFT JOIN ChamSoc cs ON bn.MaBenhNhan = cs.MaBenhNhan
LEFT JOIN YTa yt ON cs.MaYTa = yt.MaYTa;
GO

SELECT * FROM LichSuBenhNhan WHERE MaBenhNhan = 'BN101';