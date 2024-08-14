ALTER PROCEDURE PopulateSales
AS
BEGIN
DECLARE @Product_ID INT
DECLARE @Region_ID INT
DECLARE @Unit_Price DECIMAL(10, 2)
DECLARE @Quantity_Sold INT
DECLARE @Sale_Date DATETIME2(0)
DECLARE @Random_Number INT
DECLARE @DelayTime TIME(0)
DECLARE @DelayTimeS VARCHAR(10)

    WHILE 1 = 1
    BEGIN

        SELECT TOP 1 @Product_ID = Product_ID, @Unit_Price = Unit_Cost FROM Products ORDER BY NEWID()
        SELECT TOP 1 @Region_ID = Region_ID FROM Regions ORDER BY NEWID()
        SELECT @Quantity_Sold = CASE WHEN ABS(CHECKSUM(NEWID()) % 100) <=90 THEN 1 WHEN ABS(CHECKSUM(NEWID()) % 100) >90 AND ABS(CHECKSUM(NEWID()) % 100) <96 THEN 2 ELSE 3 END
        SET @Sale_Date = GETDATE()
		SET @Random_Number = FLOOR(RAND() * 5) + 1
		SET @DelayTime = TIMEFROMPARTS(0,0,@Random_Number,0,0)
		SET @DelayTimeS = CAST(@DelayTime AS VARCHAR(10))

        INSERT INTO Sales (Sale_Date, Product_ID, Region_ID, Quantity_Sold, Unit_Price)
        VALUES (@Sale_Date, @Product_ID, @Region_ID, @Quantity_Sold, @Unit_Price)

        WAITFOR DELAY @DelayTimeS
    END
END


--EXEC PopulateSales;

--TRUNCATE TABLE [dbo].[Sales]

