CREATE PROCEDURE LayThongTinBacSi
    @MaBacSi varchar(10)
AS
BEGIN
    SELECT 
        bs.MaBacSi,
        bs.HoTen,
        bs.DiaChi,
        bs.SDT,
        ck.TenChuyenKhoa
    FROM BacSi bs
    LEFT JOIN BacSiChuyenKhoa bck ON bs.MaBacSi = bck.MaBacSi
    LEFT JOIN ChuyenKhoa ck ON bck.MaChuyenKhoa = ck.MaChuyenKhoa
    WHERE bs.MaBacSi = @MaBacSi;
END;
GO

EXEC LayThongTinBacSi @MaBacSi = 'BS001';