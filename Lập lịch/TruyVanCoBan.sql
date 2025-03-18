
-- Xem tất cả lịch hẹnhẹn
SELECT 
    lh.MaLichHen,
    bn.HoTen AS TenBenhNhan,
    bs.HoTen AS TenBacSi,
    lh.NgayGioHen,
    lh.TrangThai,
    lh.GhiChu
FROM LichHen lh
INNER JOIN BenhNhan bn ON lh.MaBenhNhan = bn.MaBenhNhan
INNER JOIN BacSi bs ON lh.MaBacSi = bs.MaBacSi
ORDER BY lh.NgayGioHen;


-- Lấy lịch hẹn bác sĩ theo ngày
SELECT 
    lh.MaLichHen,
    bn.HoTen AS TenBenhNhan,
    lh.NgayGioHen,
    lh.TrangThai
FROM LichHen lh
INNER JOIN BenhNhan bn ON lh.MaBenhNhan = bn.MaBenhNhan
WHERE lh.MaBacSi = 'BS001' 
AND CAST(lh.NgayGioHen AS DATE) = '2025-03-20';

-- Đếm số lịch hẹnhẹn
SELECT 
    TrangThai,
    COUNT(*) AS SoLuong
FROM LichHen
GROUP BY TrangThai;

