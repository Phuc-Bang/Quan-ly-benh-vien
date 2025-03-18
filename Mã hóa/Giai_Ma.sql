CREATE FUNCTION GiaiMaCMND (@CMNDMaHoa varchar(20))
RETURNS varchar(20)
AS
BEGIN
    DECLARE @KetQua varchar(20) = '';
    DECLARE @i int = 1;
    DECLARE @KyTu char(1);

    WHILE @i <= LEN(@CMNDMaHoa)
    BEGIN
        SET @KyTu = SUBSTRING(@CMNDMaHoa, @i, 1);
        SET @KetQua = @KetQua + CAST(ASCII(@KyTu) - ASCII('A') AS varchar(1));
        SET @i = @i + 1;
    END;

    RETURN @KetQua;
END;
GO

select dbo.GiaiMaCMND('BCD') as 'KetQua';