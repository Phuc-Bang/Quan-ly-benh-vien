CREATE FUNCTION TinhTrungBinhDieuTriMoiBacSi()
RETURNS FLOAT
AS
BEGIN
    DECLARE @TrungBinh FLOAT;
    SELECT @TrungBinh = CAST(COUNT(dt.MaDieuTri) AS FLOAT) / COUNT(DISTINCT bs.MaBacSi)
    FROM BacSi bs
    LEFT JOIN DieuTri dt ON bs.MaBacSi = dt.MaBacSi;
    RETURN ISNULL(@TrungBinh, 0);
END;
GO

SELECT dbo.TinhTrungBinhDieuTriMoiBacSi() AS TrungBinh;