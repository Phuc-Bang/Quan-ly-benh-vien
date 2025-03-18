CREATE TRIGGER KiemTraTrungLichBacSi
ON LichHen
AFTER INSERT
AS
BEGIN
    IF EXISTS (
        SELECT 1
        FROM LichHen lh
        JOIN inserted i ON lh.MaBacSi = i.MaBacSi
        WHERE lh.NgayGioHen = i.NgayGioHen
        AND lh.MaLichHen <> i.MaLichHen
    )
    BEGIN
        RAISERROR ('Bac si da co lich hen vao thoi diem nay!', 16, 1);
        ROLLBACK TRANSACTION;
    END;
END;
GO

-- Test
select * from LichHen