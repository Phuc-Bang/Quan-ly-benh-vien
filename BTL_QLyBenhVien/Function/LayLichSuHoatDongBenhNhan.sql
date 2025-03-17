CREATE FUNCTION LayLichSuHoatDongBenhNhan(@MaBenhNhan varchar(10))
RETURNS @KetQua TABLE 
(
    LoaiHoatDong varchar(20),
    MaHoatDong varchar(10),
    NgayGio datetime,
    NoiDung varchar(max),
    NguoiThucHien varchar(100)
)
AS
BEGIN
    -- Chen du lieu dieu tri
    INSERT INTO @KetQua
    SELECT 
        'Dieu Tri' AS LoaiHoatDong,
        dt.MaDieuTri,
        dt.NgayGio,
        dt.LieuPhapDieuTri,
        bs.HoTen
    FROM DieuTri dt
    JOIN BacSi bs ON dt.MaBacSi = bs.MaBacSi
    WHERE dt.MaBenhNhan = @MaBenhNhan;

    -- Chen du lieu cham soc
    INSERT INTO @KetQua
    SELECT 
        'Cham Soc' AS LoaiHoatDong,
        CAST(cs.MaChamSoc AS varchar(10)),
        cs.NgayGioChamSoc,
        cs.NoiDungChamSoc,
        yt.HoTen
    FROM ChamSoc cs
    JOIN YTa yt ON cs.MaYTa = yt.MaYTa
    WHERE cs.MaBenhNhan = @MaBenhNhan;

    RETURN;
END;
GO

SELECT * FROM dbo.LayLichSuHoatDongBenhNhan('BN101');