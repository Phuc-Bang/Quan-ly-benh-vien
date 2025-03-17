CREATE PROCEDURE CapNhatKetQuaDieuTri
    @MaDieuTri varchar(10),
    @KetQuaMoi varchar(50)
AS
BEGIN
    UPDATE DieuTri
    SET KetQua = @KetQuaMoi
    WHERE MaDieuTri = @MaDieuTri;
END;
GO

EXEC CapNhatKetQuaDieuTri @MaDieuTri = 'DT201', @KetQuaMoi = 'Da khoi';