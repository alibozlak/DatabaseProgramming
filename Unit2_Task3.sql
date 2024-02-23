/*
Ornek veritaban� i�in, �Urunler� tablosundaki ilk 5 �r�n i�in 
toplam sat�� miktarlar�n� hesaplayarak yazd�ran bir T-SQL sorgu yaz�n�z?
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
		print @productName + ' adl� �r�nden satis yapilmamistir!';
	else 
		print @productName + ' adl� �r�nden ' + cast(@saleCount as nvarchar) + ' adet satis yapilmistir.';
	set @productNo = @productNo + 1;
	end


select * from Urunler;
select * from Satislar;