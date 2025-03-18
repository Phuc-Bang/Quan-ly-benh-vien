CREATE FUNCTION MaHoaCMND (@CMND varchar(20))
RETURNS varchar(20)
AS
BEGIN
    DECLARE @KetQua varchar(20) = '';
    DECLARE @i int = 1;
    DECLARE @KyTu char(1);

    WHILE @i <= LEN(@CMND)
    BEGIN
        SET @KyTu = SUBSTRING(@CMND, @i, 1);
        SET @KetQua = @KetQua + CHAR(ASCII('A') + CAST(@KyTu AS int));
        SET @i = @i + 1;
    END;

    RETURN @KetQua;
END;
GO

select dbo.MaHoaCMND('123456789') as 'KetQua';

-- Cập nhật CMND mã hóa
UPDATE BenhNhan
SET CMNDMaHoa = CONVERT(varbinary(max), dbo.MaHoaCMND(CMND));