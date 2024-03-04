-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:	    Ali Bozlak
-- Create date: 2024.03.05
-- Description:	Unit 3, Task 2
-- =============================================
CREATE PROCEDURE sp_employee_name_and_product_name
AS
BEGIN
	SELECT Calisanlar.Adi, Urunler.Urun_Adi FROM Calisanlar 
	INNER JOIN Satislar ON Calisanlar.TC_No = Satislar.Calisan_TC_No
	INNER JOIN Urunler ON Satislar.Urun_No = Urunler.Urun_No
END
GO
