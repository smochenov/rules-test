﻿Запрос = Новый Запрос;
Запрос.Текст = "
|ВЫБРАТЬ
|	СчетФактураДокументыОснования.Ссылка КАК Ссылка
|ИЗ
|	Документ.СчетФактура.ДокументыОснования КАК СчетФактураДокументыОснования
|ГДЕ
|	СчетФактураДокументыОснования.Ссылка.Дата МЕЖДУ &ДатаНачала И &ДатаОкончания
|	И НЕ СчетФактураДокументыОснования.Ссылка.ПометкаУдаления
|	И (СчетФактураДокументыОснования.ДокументОснование ССЫЛКА Документ.АктВыполненныхРабот
|			ИЛИ СчетФактураДокументыОснования.ДокументОснование ССЫЛКА Документ.РасходнаяНакладная)
|	И СчетФактураДокументыОснования.ДокументОснование.Проведен

|СГРУППИРОВАТЬ ПО
|	СчетФактураДокументыОснования.Ссылка";

Запрос.УстановитьПараметр("ДатаНачала"   ,	ДатаНачала);
Запрос.УстановитьПараметр("ДатаОкончания",	ДатаОкончания);
ВыборкаДанных = Запрос.Выполнить().Выгрузить().ВыгрузитьКолонку("Ссылка");
