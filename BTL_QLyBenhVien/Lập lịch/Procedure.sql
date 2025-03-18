
-- Thêm lịch hẹnhẹn
CREATE PROCEDURE ThemLichHen
    @MaLichHen varchar(10),
    @MaBenhNhan varchar(10),
    @MaBacSi varchar(10),
    @NgayGioHen datetime,
    @TrangThai varchar(20),
    @GhiChu varchar(max)
AS
BEGIN
    INSERT INTO LichHen (MaLichHen, MaBenhNhan, MaBacSi, NgayGioHen, TrangThai, GhiChu)
    VALUES (@MaLichHen, @MaBenhNhan, @MaBacSi, @NgayGioHen, @TrangThai, @GhiChu);
END;
GO

-- Cách dùng
EXEC ThemLichHen 'LH005', 'BN102', 'BS002', '2025-03-23 09:00:00', 'Da hen', 'Tai kham';

-- Kết quả
SELECT * FROM LichHen;

-- Trạng thái lịch hẹn

CREATE PROCEDURE CapNhatTrangThaiLichHen
    @MaLichHen varchar(10),
    @TrangThaiMoi varchar(20)
AS
BEGIN
    UPDATE LichHen
    SET TrangThai = @TrangThaiMoi
    WHERE MaLichHen = @MaLichHen;
END;
GO

-- Cách dùng
EXEC CapNhatTrangThaiLichHen 'LH001', 'Da kham';