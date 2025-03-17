CREATE PROCEDURE ThemBenhNhan
    @MaBenhNhan varchar(10),
    @HoTen varchar(100),
    @DiaChi varchar(max),
    @CMND varchar(20)
AS
BEGIN
    INSERT INTO BenhNhan (MaBenhNhan, HoTen, DiaChi, CMND)
    VALUES (@MaBenhNhan, @HoTen, @DiaChi, @CMND);
END;
GO

DELETE FROM BenhNhan WHERE MaBenhNhan = 'BN104';

EXEC ThemBenhNhan @MaBenhNhan = 'BN104', @HoTen = 'Nguyen Van Dat', @DiaChi = 'Thuong Tin, Ha Noi', @CMND = '1234567890';