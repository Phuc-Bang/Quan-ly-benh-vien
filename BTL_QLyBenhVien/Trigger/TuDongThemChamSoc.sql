CREATE TRIGGER TuDongThemChamSoc
ON DieuTri
AFTER INSERT
AS
BEGIN
    DECLARE @MaYTaMacDinh varchar(10) = 'YT905'; -- Y ta mac dinh
    INSERT INTO ChamSoc (MaYTa, MaBenhNhan, NgayGioChamSoc, NoiDungChamSoc)
    SELECT 
        @MaYTaMacDinh,
        i.MaBenhNhan,
        i.NgayGio,
        'Kiem tra sau dieu tri'
    FROM inserted i;
END;
GO

INSERT INTO DieuTri (MaDieuTri, MaBenhNhan, MaBacSi, NgayGio, LieuPhapDieuTri, KetQua)
VALUES ('DT208', 'BN101', 'BS001', '2025-03-18 14:00:00', 'Xet nghiem', 'Dang cho');
SELECT * FROM ChamSoc WHERE MaBenhNhan = 'BN101' AND NgayGioChamSoc = '2025-03-18 14:00:00';