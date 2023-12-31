Процедура ЗаписьФайлаВбазу(ОбъектЗаписи, ДанныеФайла,РасширениеФайла,РазмерФайла)Экспорт
	АлгоритмСжатия = Новый Сжатиеданных(9);
	ХранилищеСФайлом = Новый ХранилищеЗначения(ДанныеФайла, АлгоритмСжатия);
	ЗаписьФайла = СоздатьМенеджерЗаписи();
	ЗаписьФайла.Объект = ОбъектЗаписи;
	ЗаписьФайла.ДанныеФайла =  ХранилищеСФайлом;
	ЗаписьФайла.РазмерФайла = РазмерФайла;
	ЗаписьФайла.Расширение = РасширениеФайла;
	ЗаписьФайла.Записать(Истина);
КонецПроцедуры

Функция ПолучитьДанныеФайла(ОбъектЧтения) Экспорт
	ЧтениеФайла = СоздатьМенеджерЗаписи();
	ЧтениеФайла.Объект = ОбъектЧтения;
	ЧтениеФайла.Прочитать();
	ДанныеФайла = ЧтениеФайла.ДанныеФайла.Получить();
	Возврат ДанныеФайла;
КонецФункции // ПолучитьДанныеФайла()

                                                                                                                      