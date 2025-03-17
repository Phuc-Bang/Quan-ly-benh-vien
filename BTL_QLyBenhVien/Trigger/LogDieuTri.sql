-- Tao bang log truoc
CREATE TABLE LogDieuTri (
    MaLog int IDENTITY(1,1) PRIMARY KEY,
    MaDieuTri varchar(10),
    KetQuaCu varchar(50),
    KetQuaMoi varchar(50),
    NgayCapNhat datetime
);
GO

CREATE TRIGGER GhiLogCapNhatDieuTri
ON DieuTri
AFTER UPDATE
AS
BEGIN
    INSERT INTO LogDieuTri (MaDieuTri, KetQuaCu, KetQuaMoi, NgayCapNhat)
    SELECT 
        i.MaDieuTri,
        d.KetQua AS KetQuaCu,
        i.KetQua AS KetQuaMoi,
        GETDATE()
    FROM inserted i
    JOIN deleted d ON i.MaDieuTri = d.MaDieuTri
    WHERE i.KetQua <> d.KetQua; -- Chi ghi log khi KetQua thay doi
END;
GO

UPDATE DieuTri SET KetQua = 'Da khoi' WHERE MaDieuTri = 'DT202';
SELECT * FROM LogDieuTri;