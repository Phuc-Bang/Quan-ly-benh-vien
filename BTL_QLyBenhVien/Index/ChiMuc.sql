-- Them chi muc (index) cho cac cot khoa ngoai
create index idx_DieuTri_MaBenhNhan on DieuTri(MaBenhNhan);
create index idx_DieuTri_MaBacSi on DieuTri(MaBacSi);
create index idx_ChamSoc_MaYTa on ChamSoc(MaYTa);
create index idx_ChamSoc_MaBenhNhan on ChamSoc(MaBenhNhan);
create index idx_BacSiChuyenKhoa_MaBacSi on BacSiChuyenKhoa(MaBacSi);
create index idx_BacSiChuyenKhoa_MaChuyenKhoa on BacSiChuyenKhoa(MaChuyenKhoa);