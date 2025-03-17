-- Phan quyen cho VaiTroNguoiDung
GRANT SELECT ON TongHopDieuTriTheoBacSi TO VaiTroNguoiDung;
GRANT SELECT ON DanhSachBacSiChuyenKhoa TO VaiTroNguoiDung;


-- Phan quyen cho VaiTroAdmin
GRANT SELECT ON TongHopDieuTriTheoBacSi TO VaiTroAdmin;
GRANT SELECT ON LichSuBenhNhan TO VaiTroAdmin;
GRANT SELECT ON ThongTinNguoiDung TO VaiTroAdmin;
GRANT SELECT ON LichSuDieuTri TO VaiTroAdmin;

GO

SELECT * FROM TongHopDieuTriTheoBacSi;
SELECT * FROM LichSuBenhNhan WHERE MaBenhNhan = 'BN103';

