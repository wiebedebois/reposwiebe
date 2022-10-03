CREATE PROCEDURE dbo.usp_ProductSales @ProductID INT,
 @TotalSold INT = NULL OUTPUT AS
 SELECT @TotalSold = SUM(OrderQty)
 FROM Saleslt.SalesOrderDetail
 WHERE ProductID = @ProductID;
GO

