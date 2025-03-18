USE QLyBenhVien;
GO

CREATE TABLE LichHen (
    MaLichHen varchar(10) PRIMARY KEY,
    MaBenhNhan varchar(10),
    MaBacSi varchar(10),
    NgayGioHen datetime,
    TrangThai varchar(20) CHECK (TrangThai IN ('Da hen', 'Da kham', 'Huy')),
    GhiChu varchar(max),
    FOREIGN KEY (MaBenhNhan) REFERENCES BenhNhan(MaBenhNhan),
    FOREIGN KEY (MaBacSi) REFERENCES BacSi(MaBacSi)
);

INSERT INTO LichHen (MaLichHen, MaBenhNhan, MaBacSi, NgayGioHen, TrangThai, GhiChu)
VALUES 
    ('LH001', 'BN101', 'BS001', '2025-03-20 09:00:00', 'Da hen', 'Kham noi khoa'),
    ('LH002', 'BN102', 'BS002', '2025-03-20 10:00:00', 'Da hen', 'Kham ngoai khoa'),
    ('LH003', 'BN101', 'BS001', '2025-03-21 14:00:00', 'Huy', 'Benh nhan ban'),
    ('LH004', 'BN103', 'BS003', '2025-03-22 08:30:00', 'Da kham', 'Da hoan tat');

-- select * from LichHen;

