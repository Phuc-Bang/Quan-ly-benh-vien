CREATE TRIGGER NganXoaBenhNhan
ON BenhNhan
AFTER DELETE
AS
BEGIN
    IF EXISTS (
        SELECT 1 
        FROM deleted d
        JOIN DieuTri dt ON d.MaBenhNhan = dt.MaBenhNhan
    )
    BEGIN
        RAISERROR ('Khong the xoa benh nhan dang dieu tri!', 16, 1);
        ROLLBACK TRANSACTION;
    END;
END;
GO

DELETE FROM BenhNhan WHERE MaBenhNhan = 'BN101'; -- Loi neu BN101 co dieu tri

DELETE FROM BenhNhan WHERE MaBenhNhan = 'BN104'; -- Thanh cong neu BN104 khong co dieu tri