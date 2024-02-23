select * from Urunler;
select * from Satislar;

declare @saleNotebookCount int;
declare @notebookUrunNo int;
select @notebookUrunNo = Urun_No from Urunler where Urun_Adi = 'Notebook';
select @saleNotebookCount = SUM(Miktar) from Satislar where Urun_No = @notebookUrunNo;

if (@saleNotebookCount > 4)
	begin
	print 'Notebook satisiniz 4 ten fazladýr, tebrikler!!';
	print @saleNotebookCount;
	end
else if (@saleNotebookCount > 2)
	begin
	print 'Notebook satisina dikkat edelim!!';
	print @saleNotebookCount;
	end
else 
	print 'Notebook satisi yetersiz';