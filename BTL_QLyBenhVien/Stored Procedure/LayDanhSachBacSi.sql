CREATE PROCEDURE LayDanhSachBacSi
AS
BEGIN
    SELECT 
        MaBacSi,
        HoTen,
        DiaChi,
        SDT
    FROM BacSi
    ORDER BY HoTen;
END;
GO

EXEC LayDanhSachBacSi;