#Использовать ".."
#Использовать 1testrunner

Функция ПрогнатьТесты()
	
	Тестер = Новый Тестер;
	
	ПутьКТестам = ОбъединитьПути(ТекущийСценарий().Каталог, "..", "tests");
	ПутьКОтчетуJUnit = ОбъединитьПути(ТекущийСценарий().Каталог, "..");
	
	КаталогТестов = Новый Файл(ПутьКТестам);
	Если Не КаталогТестов.Существует() Тогда
		Сообщить(СтрШаблон("Не найден каталог тестов %1", ПутьКТестам));
		Возврат Истина;
	КонецЕсли;
	
	РезультатТестирования = Тестер.ТестироватьКаталог(
		КаталогТестов,
		Новый Файл(ПутьКОтчетуJUnit)
	);

	Успешно = РезультатТестирования = 0;

	Возврат Успешно;
КонецФункции // ПрогнатьТесты()

ПрогнатьТесты();
