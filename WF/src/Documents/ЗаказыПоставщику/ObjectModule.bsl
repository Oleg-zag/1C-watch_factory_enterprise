
#Область ОбработчикиСобытий

Процедура ПередЗаписью(Отказ, РежимЗаписи, РежимПроведения)
		ЭтотОбъект.ИтоговаяСумма = ЭтотОбъект.СписокМатериалов.Итог("Сумма") + ЭтотОбъект.СписокРасходников.Итог("Сумма");
КонецПроцедуры

	
#КонецОбласти