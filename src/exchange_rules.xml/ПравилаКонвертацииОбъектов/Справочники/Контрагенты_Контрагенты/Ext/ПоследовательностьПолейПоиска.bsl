﻿Если ЗначениеЗаполнено(СвойстваПоиска.Получить("ИНН")) Тогда 
	Если НомерВариантаПоиска = 1 Тогда
		СтрокаИменСвойствПоиска = "ИНН, КПП";
	ИначеЕсли НомерВариантаПоиска = 2 Тогда
		СтрокаИменСвойствПоиска = "Наименование,ИНН"
	иначе
		СтрокаИменСвойствПоиска = "Наименование";
	КонецЕсли;
Иначе
	Если НомерВариантаПоиска = 1 Тогда
		СтрокаИменСвойствПоиска = "Наименование";
	КонецЕсли;
КонецЕсли;
