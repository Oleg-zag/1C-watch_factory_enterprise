
&НаКлиенте
АСИНХ Процедура ОбработкаКоманды(МассивСсылок, ПараметрыВыполненияКоманды)
	
	СписокВариантов = ПолучитьСписокВидовНоменклатуры();	
	ВыбранныйВид 	= ЖДАТЬ СписокВариантов.ВыбратьЭлементАсинх("Выберите вид номенклатуры");  
	
	Если ВыбранныйВид <> Неопределено Тогда
		
		ИзменитьВидНоменклатуры(МассивСсылок, ВыбранныйВид.Значение);	
		
	КонецЕсли;
	
КонецПроцедуры

&НаСервере
Функция ПолучитьСписокВидовНоменклатуры()
	
	Список = Новый СписокЗначений;
	
	Список.Добавить(Перечисления.ВидНоменклатуры.Товар);
	Список.Добавить(Перечисления.ВидНоменклатуры.Услуга);
	Список.Добавить(Перечисления.ВидНоменклатуры.РасходныйМатериал);
	Список.Добавить(Перечисления.ВидНоменклатуры.ГотоваяПродукция);
	
	Возврат Список;
	
КонецФункции 

&НаСервере
Процедура ИзменитьВидНоменклатуры(МассивСсылок, ВыбранныйВид)
	
	Для каждого НоменклатураСсылка Из МассивСсылок Цикл
		
		Если НоменклатураСсылка.ЭтоГруппа Тогда		
			Продолжить;		
		КонецЕсли;
		
		НоменклатураОбъект = НоменклатураСсылка.ПолучитьОбъект();
		НоменклатураОбъект.ВидНоменклатуры = ВыбранныйВид;
		НоменклатураОбъект.Записать();
		
	КонецЦикла;
	
КонецПроцедуры