
&НаКлиенте
Процедура СписокМатериаловЦенаПриИзменении(Элемент)
	РасчетСтрокиМатериалы();
КонецПроцедуры

&НаКлиенте
Процедура СписокМатериаловКоличествоПриИзменении(Элемент)
	РасчетСтрокиМатериалы();
КонецПроцедуры

&НаКлиенте
Процедура СписокРасходниковЦенаПриИзменении(Элемент)
	РасчетСтрокиРасходники();
КонецПроцедуры     


&НаКлиенте
Процедура СписокРасходниковКоличествоПриИзменении(Элемент)
	РасчетСтрокиРасходники();
КонецПроцедуры

&НаКлиенте
Процедура РасчетСтрокиМатериалы()
	
	СтрокаРасчета = Элементы.СписокМатериалов.ТекущиеДанные; 
	СтрокаРасчета.Сумма = СтрокаРасчета.Цена * СтрокаРасчета.Количество;
	
КонецПроцедуры 

&НаКлиенте
Процедура РасчетСтрокиРасходники()
	
	СтрокаРасчета = Элементы.СписокРасходников1; 
	СтрокаРасчета.Сумма = СтрокаРасчета.Цена * СтрокаРасчета.Количество;
	
КонецПроцедуры


