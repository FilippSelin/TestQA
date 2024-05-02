#language: ru

@tree

Функционал: Тестирование отчетов

Как Тестировщик я хочу
протестировать отображение возвратов   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Тест возвратов
	* Запускаю отчет
	И В командном интерфейсе я выбираю 'Отчеты' 'D2001 Продажи'
	Тогда открылось окно 'D2001 Продажи'
	И в табличном документе 'Result' я перехожу к ячейке "R1C1"
	И я нажимаю на кнопку с именем 'FormChangeVariant'
	Тогда открылось окно 'Вариант "Default" отчета "D2001 Продажи"'
	И я перехожу к закладке с именем "FilterPage"
	И в таблице "SettingsComposerSettingsFilterFilterAvailableFields" я перехожу к строке:
		| 'Доступные поля' |
		| 'Количество'     |
	И в таблице "SettingsComposerSettingsFilterFilterAvailableFields" я выбираю текущую строку
	И в таблице "SettingsComposerSettingsFilter" я активизирую поле с именем "SettingsComposerSettingsFilterComparisonType"
	И в таблице "SettingsComposerSettingsFilter" я выбираю текущую строку
	И в таблице "SettingsComposerSettingsFilter" я выбираю текущую строку
	И в таблице "SettingsComposerSettingsFilter" из выпадающего списка с именем "SettingsComposerSettingsFilterComparisonType" я выбираю точное значение 'Меньше'
	И в таблице "SettingsComposerSettingsFilter" я завершаю редактирование строки
	И я нажимаю на кнопку с именем 'FormEndEdit'
	Тогда открылось окно 'D2001 Продажи'
	И я нажимаю на кнопку с именем 'FormGenerate'
	Дано Табличный документ "Result" равен макету "Продажи возвраты" по шаблону
	И я закрываю все окна клиентского приложения
	
	
			
