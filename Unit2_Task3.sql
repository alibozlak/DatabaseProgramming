/*
Ornek veritabaný için, “Urunler” tablosundaki ilk 5 ürün için 
toplam satýþ miktarlarýný hesaplayarak yazdýran bir T-SQL sorgu yazýnýz?
*/
declare @productNo int;
set @productNo = 1;
declare @productName nvarchar(50);
declare @saleCount int;

while (@productNo < 6)
	begin
	select @productName = Urun_Adi from Urunler where Urun_No = @productNo;
	select @saleCount = SUM(Miktar) from Satislar where Urun_No = @productNo;
	if (@saleCount is null)
		print @productName + ' adlý üründen satis yapilmamistir!';
	else 
		print @productName + ' adlý üründen ' + cast(@saleCount as nvarchar) + ' adet satis yapilmistir.';
	set @productNo = @productNo + 1;
	end


select * from Urunler;
select * from Satislar;