﻿Если не ЗначениеЗаполнено(Объект.ЮрФизЛицо) тогда
	Объект.ЮрФизЛицо =  Перечисления.ЮрФизЛицо.ЮрЛицо;
КонецЕсли;

Если не ЗначениеЗаполнено(Объект.ЮридическоеФизическоеЛицо) тогда
	Объект.ЮридическоеФизическоеЛицо =  Перечисления.ЮридическоеФизическоеЛицо.ЮридическоеЛицо;
КонецЕсли;

Если не ЗначениеЗаполнено(Объект.Партнер) тогда
	лп_ПартнерО                  = Справочники.Партнеры.СоздатьЭлемент();
	лп_ПартнерО.Наименование     = Объект.Наименование;
	лп_ПартнерО.ЮрФизЛицо        = Объект.ЮрФизЛицо;
	лп_ПартнерО.Поставщик        = Истина;
	лп_ПартнерО.Клиент	         = Истина;
	лп_ПартнерО.ПрочиеОтношения  = Истина;
	лп_ПартнерО.ОсновнойМенеджер = ПараметрыСеанса.ТекущийПользователь;
	лп_ПартнерО.Записать();

	Объект.Партнер =  лп_ПартнерО.Ссылка;
КонецЕсли;

Если Не ОбъектНайден Тогда	
	Если Не ЗначениеЗаполнено(Ссылка) Тогда 
		
		НоваяСсылка = Справочники.Контрагенты.ПолучитьСсылку(Новый УникальныйИдентификатор);		
		Объект.УстановитьСсылкуНового(НоваяСсылка);                                         		
		НоваяЗадача = Задачи.ЗадачаИсполнителя.СоздатьЗадачу();
		НоваяЗадача.Дата = ТекущаяДата();
		НоваяЗадача.Предмет = НоваяСсылка;
		//НоваяЗадача.Исполнитель = ПараметрыСеанса.ТекущийПользователь;
		НоваяЗадача.РольИсполнителя = Справочники.РолиИсполнителей.НайтиПоНаименованию("Справочники ЕРП", Истина);
		НоваяЗадача.Важность = Перечисления.ВариантыВажностиЗадачи.Обычная;
		НоваяЗадача.Автор = ПараметрыСеанса.ТекущийПользователь;
		НоваяЗадача.Наименование = "Создан новый контрагент!";
		НоваяЗадача.Записать(); 		
	КонецЕсли;
	
КонецЕсли;	
