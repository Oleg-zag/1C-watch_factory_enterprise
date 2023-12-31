Процедура Рассчитать()  Экспорт
	Для каждого СтрокаДвижения  Из ЭтотОбъект Цикл
		НормаЧасов = СтрокаДвижения.ПолучитьДанныеГрафика(ВидПериодаРегистраРасчета.ПериодДействия).Итог("КоличествоЧасов");
		ФактЧасов = СтрокаДвижения.ПолучитьДанныеГрафика(ВидПериодаРегистраРасчета.ФактическийПериодДействия).Итог("КоличествоЧасов");
		Если НормаЧасов = 0 Тогда
			СтрокаВывода = СтрШаблон("На период ""%1"" не заполнен производственный календарь!",
			Формат(СтрокаДвижения.ПериодДейсвияНачало, "ДФ='ММММ гггг'"));
			ВызватьИсключение СтрокаВывода;
		КонецЕсли;
		СтрокаДвижения.Сумма = СтрокаДвижения.Оклад * (ФактЧасов/НормаЧасов);
	КонецЦикла;
КонецПроцедуры
