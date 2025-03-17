CREATE PROCEDURE ThemDieuTri
    @MaDieuTri varchar(10),
    @MaBenhNhan varchar(10),
    @MaBacSi varchar(10),
    @NgayGio datetime,
    @LieuPhapDieuTri varchar(max),
    @KetQua varchar(50),
    @KetQuaThem bit OUTPUT
AS
BEGIN
    INSERT INTO DieuTri (MaDieuTri, MaBenhNhan, MaBacSi, NgayGio, LieuPhapDieuTri, KetQua)
    VALUES (@MaDieuTri, @MaBenhNhan, @MaBacSi, @NgayGio, @LieuPhapDieuTri, @KetQua);
    
    IF @@ROWCOUNT > 0
        SET @KetQuaThem = 1; -- Thanh cong
    ELSE
        SET @KetQuaThem = 0; -- That bai
END;
GO

DECLARE @KetQua bit;
EXEC ThemDieuTri 
    @MaDieuTri = 'DT206', 
    @MaBenhNhan = 'BN101', 
    @MaBacSi = 'BS001', 
    @NgayGio = '2025-03-18 09:00:00', 
    @LieuPhapDieuTri = 'Kiem tra', 
    @KetQua = 'Dang theo doi', 
    @KetQuaThem = @KetQua OUTPUT;
PRINT @KetQua;