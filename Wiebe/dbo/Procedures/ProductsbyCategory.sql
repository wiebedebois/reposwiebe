CREATE PROCEDURE dbo.ProductsbyCategory
(@CategoryID AS INT, @numrows AS BIGINT = 9223372036854775807) --largest possible value for a bigint (9,223,372,036,854,775,807)
AS
SELECT  TOP (@numrows) productid,
        Name,
        ProductCategoryID,
        ListPrice,
        DiscontinuedDate
FROM SalesLT.Product
WHERE   ProductCategoryID = @CategoryID
ORDER BY productid;
GO

