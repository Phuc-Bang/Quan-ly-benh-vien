-- View danh sách bác sĩ chuyên khoakhoa

CREATE VIEW DanhSachBacSiChuyenKhoa
AS
SELECT 
    bs.MaBacSi,
    bs.HoTen AS TenBacSi,
    bs.DiaChi,
    bs.SDT,
    ck.TenChuyenKhoa
FROM BacSi bs
JOIN BacSiChuyenKhoa bck ON bs.MaBacSi = bck.MaBacSi
JOIN ChuyenKhoa ck ON bck.MaChuyenKhoa = ck.MaChuyenKhoa;
GO

SELECT * FROM DanhSachBacSiChuyenKhoa;

