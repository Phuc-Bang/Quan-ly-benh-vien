CREATE TRIGGER KiemTraSDTBacSi
ON BacSi
AFTER INSERT
AS
BEGIN
    IF EXISTS (
        SELECT 1 
        FROM inserted 
        WHERE SDT NOT LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'
    )
    BEGIN
        RAISERROR ('SDT cua bac si phai la 10 so!', 16, 1);
        ROLLBACK TRANSACTION;
    END;
END;
GO

INSERT INTO BacSi (MaBacSi, HoTen, DiaChi, SDT) 
VALUES ('BS004', 'Nguyen Van D', 'Ha Noi', '12345'); -- Loi


INSERT INTO BacSi (MaBacSi, HoTen, DiaChi, SDT) 
VALUES ('BS004', 'Nguyen Van D', 'Ha Noi', '0987654321'); -- Thanh cong