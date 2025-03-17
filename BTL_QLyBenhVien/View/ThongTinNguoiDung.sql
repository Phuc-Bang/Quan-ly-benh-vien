CREATE VIEW ThongTinNguoiDung
AS
SELECT 
    bn.MaBenhNhan,
    bn.HoTen,
    dt.NgayGio AS NgayDieuTri,
    cs.NgayGioChamSoc AS NgayChamSoc
FROM BenhNhan bn
LEFT JOIN DieuTri dt ON bn.MaBenhNhan = dt.MaBenhNhan
LEFT JOIN ChamSoc cs ON bn.MaBenhNhan = cs.MaBenhNhan;
GO

SELECT * FROM ThongTinNguoiDung;