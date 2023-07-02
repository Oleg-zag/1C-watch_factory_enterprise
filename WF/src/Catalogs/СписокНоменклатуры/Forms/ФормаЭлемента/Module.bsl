
&НаКлиенте
Процедура АдресКартинкиВХранилищеНажатие(Элемент, СтандартнаяОбработка)
	СтандартнаяОбработка =Ложь;
	ПрикрепитьФайлКартинкиАсинх();
КонецПроцедуры

&НаКлиенте
АСИНХ Процедура ПрикрепитьФайлКартинкиАсинх()
	ИмяФайлаКартинки = ЖДАТЬ РаботаСФайламиКлиент.ПолучитьИмяЗагружаемгоФайлаАсинх();
	Если ПустаяСтрока(ИмяФайлаКартинки) = Ложь Тогда
		ОписаниеФайла = ЖДАТЬ РаботаСФайламиКлиент.ПолучитьОписаниеФайлаАсинх(ИмяФайлаКартинки);
		ЭтотОбъект.РазмерФайлаКартинки = ОписаниеФайла.Расширение;
		ЭтотОбъект.РасширениеФайлаКартинки = ОписаниеФайла.Размер;
		ОписаниеПомещаемогоФайла = ЖДАТЬ ПоместитьФайлНаСерверАсинх(,,,ИмяФайлаКартинки,ЭтотОбъект.УникальныйИдентификатор);
		ЭтотОбъект.АдресКартинкиВХранилище = ОписаниеПомещаемогоФайла.Адрес;
	КонецЕсли;
КонецПроцедуры


&НаСервере
Процедура ПослеЗаписиНаСервере(ТекущийОбъект, ПараметрыЗаписи)
	Если ЭтоАдресВременногоХранилища(ЭтотОбъект.АдресКартинкиВХранилище) Тогда
		ДанныеКартинки = ПолучитьИзВременногоХранилища(АдресКартинкиВХранилище);
		Если ДанныеКартинки = Неопределено Тогда
			Сообщить ("При сохранении произошла ошибка");
		Иначе
			РегистрыСведений.Файлы.ЗаписьФайлаВбазу(ТекущийОбъект.Ссылка, ДанныеКартинки,ЭтотОбъект.РасширениеФайлаКартинки,ЭтотОбъект.РазмерФайлаКартинки);
		КонецЕсли;
	КонецЕсли;
КонецПроцедуры


&НаСервере
Процедура ПриЧтенииНаСервере(ТекущийОбъект)
	ДанныеКартинки = РегистрыСведений.Файлы.ПолучитьДанныеФайла(ТекущийОбъект.Ссылка);
	Если ДанныеКартинки <> Неопределено Тогда
		ЭтотОбъект.АдресКартинкиВХранилище = ПоместитьВоВременноеХранилище(ДанныеКартинки, ЭтотОбъект.УникальныйИдентификатор);
	КонецЕсли;
КонецПроцедуры
	
