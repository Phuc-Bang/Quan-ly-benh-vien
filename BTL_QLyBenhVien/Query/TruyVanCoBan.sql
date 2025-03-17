-- Truy vấn SELECT

-- Lấy danh sách bác sĩ 
SELECT MaBacSi, HoTen, DiaChi, SDT
FROM BacSi
ORDER BY HoTen;

-- Lấy danh sách bệnh nhân theo mã
SELECT HoTen, DiaChi, CMND
FROM BenhNhan
WHERE MaBenhNhan = 'BN101';

-- Truy vấn INSERT

-- Thêm bác sĩ mới
INSERT INTO BacSi (MaBacSi, HoTen, DiaChi, SDT)
VALUES ('BS005', 'Tran Thi E', 'Da Nang', '0912345678');

-- Thêm bản ghi điều trị mới
INSERT INTO DieuTri (MaDieuTri, MaBenhNhan, MaBacSi, NgayGio, LieuPhapDieuTri, KetQua)
VALUES ('DT209', 'BN101', 'BS001', '2025-03-18 15:00:00', 'Xet nghiem mau', 'Dang cho');


-- Truy vấn UPDATE

-- Cập nhật sdt bác sĩ
UPDATE BacSi
SET SDT = '0987654321'
WHERE MaBacSi = 'BS001';

-- Cập nhật kết quả điều trị
UPDATE DieuTri
SET KetQua = 'Da khoi',
    NgayGio = '2025-03-18 17:00:00'
WHERE MaDieuTri = 'DT201';


-- Truy vấn DELETE

-- Xóa bác sĩ theo mã
DELETE FROM BacSi
WHERE MaBacSi = 'BS005';

-- Xóa bản chăm sóc theo mã
DELETE FROM ChamSoc
WHERE MaChamSoc = 1;






