-- Danh sách bác sĩsĩ
SELECT 
    bs.MaBacSi,
    bs.HoTen AS TenBacSi,
    ck.TenChuyenKhoa
FROM BacSi bs
INNER JOIN BacSiChuyenKhoa bck ON bs.MaBacSi = bck.MaBacSi
INNER JOIN ChuyenKhoa ck ON bck.MaChuyenKhoa = ck.MaChuyenKhoa
ORDER BY bs.HoTen;

-- Lấy thông tin điều trị với tên bác sĩ và bệnh nhân
SELECT 
    dt.MaDieuTri,
    bn.HoTen AS TenBenhNhan,
    bs.HoTen AS TenBacSi,
    dt.NgayGio,
    dt.LieuPhapDieuTri
FROM DieuTri dt
INNER JOIN BenhNhan bn ON dt.MaBenhNhan = bn.MaBenhNhan
INNER JOIN BacSi bs ON dt.MaBacSi = bs.MaBacSi
WHERE dt.NgayGio >= '2025-03-01';

-- Đếm số lần điều trị theo bác sĩ
SELECT 
    bs.MaBacSi,
    bs.HoTen AS TenBacSi,
    COUNT(dt.MaDieuTri) AS SoLanDieuTri
FROM BacSi bs
LEFT JOIN DieuTri dt ON bs.MaBacSi = dt.MaBacSi
GROUP BY bs.MaBacSi, bs.HoTen
ORDER BY SoLanDieuTri DESC;

-- Tính số lần chăm sóc theo y tá trong tháng 3/2025
SELECT 
    yt.MaYTa,
    yt.HoTen AS TenYTa,
    COUNT(cs.MaChamSoc) AS SoLanChamSoc
FROM YTa yt
INNER JOIN ChamSoc cs ON yt.MaYTa = cs.MaYTa
WHERE cs.NgayGioChamSoc BETWEEN '2025-03-01' AND '2025-03-31'
GROUP BY yt.MaYTa, yt.HoTen;

-- Lấy bác sĩ điều trị từ 11 bệnh nhân trở lên
SELECT 
    bs.MaBacSi,
    bs.HoTen AS TenBacSi,
    COUNT(DISTINCT dt.MaBenhNhan) AS SoBenhNhan
FROM BacSi bs
INNER JOIN DieuTri dt ON bs.MaBacSi = dt.MaBacSi
GROUP BY bs.MaBacSi, bs.HoTen
HAVING COUNT(DISTINCT dt.MaBenhNhan) >= 1;

-- Lấy y tá chăm sóc hơn 11 lần trong tháng
SELECT 
    yt.MaYTa,
    yt.HoTen AS TenYTa,
    COUNT(cs.MaChamSoc) AS SoLanChamSoc
FROM YTa yt
INNER JOIN ChamSoc cs ON yt.MaYTa = cs.MaYTa
WHERE cs.NgayGioChamSoc BETWEEN '2025-03-01' AND '2025-03-31'
GROUP BY yt.MaYTa, yt.HoTen
HAVING COUNT(cs.MaChamSoc) >= 1;

-- Lấy bệnh nhân chưa được chăm sóc
SELECT 
    bn.MaBenhNhan,
    bn.HoTen,
    bn.DiaChi
FROM BenhNhan bn
WHERE bn.MaBenhNhan NOT IN (
    SELECT MaBenhNhan 
    FROM ChamSoc
);

-- Lấy bác sĩ điều trị nhiều nhất
SELECT 
    bs.MaBacSi,
    bs.HoTen AS TenBacSi,
    COUNT(dt.MaDieuTri) AS SoLanDieuTri
FROM BacSi bs
INNER JOIN DieuTri dt ON bs.MaBacSi = dt.MaBacSi
GROUP BY bs.MaBacSi, bs.HoTen
HAVING COUNT(dt.MaDieuTri) = (
    SELECT TOP 1 COUNT(MaDieuTri)
    FROM DieuTri
    GROUP BY MaBacSi
    ORDER BY COUNT(MaDieuTri) DESC
);

-- Lấy y tá chăm sóc bệnh nhân cụ thể
SELECT 
    yt.MaYTa,
    yt.HoTen AS TenYTa
FROM YTa yt
WHERE EXISTS (
    SELECT 1 
    FROM ChamSoc cs 
    WHERE cs.MaYTa = yt.MaYTa 
    AND cs.MaBenhNhan = 'BN101'
);

