CREATE PROCEDURE XoaChamSoc
    @MaChamSoc int
AS
BEGIN
    DELETE FROM ChamSoc
    WHERE MaChamSoc = @MaChamSoc;
END;
GO

EXEC XoaChamSoc @MaChamSoc = 1;