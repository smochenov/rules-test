﻿Если ИмяТипаОбъекта = "Документ"
    И Объект.Метаданные().Проведение = Метаданные.СвойстваОбъектов.Проведение.Разрешить Тогда

    Если Не ОбъектНайден  Тогда
        Объект.Записать();
        ОбъектМодифицирован = Ложь;
    КонецЕсли;

    НоваяСтрока =  Параметры.ТаблицаДокументов.Добавить();
    НоваяСтрока.Ссылка = Объект.Ссылка;

    Если ПараметрыОбъекта.Получить("Проведен")  Тогда
        НоваяСтрока.Действие = "Проведение";
	//ИначеЕсли ПараметрыОбъекта.Получить("ПометкаУдаления")  Тогда
	//    НоваяСтрока.Действие = "Удаление";
	//Иначе
	//    НоваяСтрока.Действие = "Отмена";
    КонецЕсли;
КонецЕсли;
