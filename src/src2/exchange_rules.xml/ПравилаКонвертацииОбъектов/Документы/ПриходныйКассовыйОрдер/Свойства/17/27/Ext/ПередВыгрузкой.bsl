﻿Значение = Источник.Контрагент;
Если Источник.Контрагент.ВидКонтрагента = Перечисления.ВидыКонтрагентов.ФизическоеЛицо Тогда
	ИмяПКО = "ПартнерПоУмолчанию"
Иначе
	ИмяПКО = "Контрагенты_Партнеры"
КонецЕсли;
