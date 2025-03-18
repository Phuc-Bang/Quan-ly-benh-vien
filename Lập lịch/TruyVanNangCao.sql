
-- Lấy bác sĩ có nhiều lịch nhấtnhất
SELECT 
    bs.MaBacSi,
    bs.HoTen AS TenBacSi,
    COUNT(lh.MaLichHen) AS SoLichHen
FROM BacSi bs
LEFT JOIN LichHen lh ON bs.MaBacSi = lh.MaBacSi
GROUP BY bs.MaBacSi, bs.HoTen
HAVING COUNT(lh.MaLichHen) = (
    SELECT TOP 1 COUNT(MaLichHen)
    FROM LichHen
    GROUP BY MaBacSi
    ORDER BY COUNT(MaLichHen) DESC
);

-- Lịch hẹn chưa khám
SELECT 
    lh.MaLichHen,
    bn.HoTen AS TenBenhNhan,
    bs.HoTen AS TenBacSi,
    lh.NgayGioHen
FROM LichHen lh
INNER JOIN BenhNhan bn ON lh.MaBenhNhan = bn.MaBenhNhan
INNER JOIN BacSi bs ON lh.MaBacSi = bs.MaBacSi
WHERE lh.TrangThai = 'Da hen'
AND lh.MaBenhNhan = 'BN101';



