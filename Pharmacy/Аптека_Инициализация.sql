CREATE TABLE ВидыЛекарств
(
	КодВидыЛекарств int IDENTITY(1, 1) PRIMARY KEY,
	НазваниеВидыЛекарств nvarchar(20) NOT NULL
)

Create TABLE Лекарство
(
	КодЛекарства int IDENTITY(1, 1) PRIMARY KEY,
	НазваниеЛекарства nvarchar(20) NOT NULL,
	КодВидыЛекарств int REFERENCES ВидыЛекарств(КодВидыЛекарств)
	ON UPDATE CASCADE
	ON DELETE CASCADE
)

CREATE TABLE Производитель(
	КодПроизводителя int IDENTITY(1,1) PRIMARY KEY,
	Название nvarchar(15) NOT NULL,
	Страна nvarchar(15) NOT NULL
)

CREATE TABLE Дозировка(
	КодДозировки int IDENTITY(1,1) PRIMARY KEY,
	Дозировка nvarchar(10) NOT NULL
)

CREATE TABLE Форма_выпуска(
	КодФормы int IDENTITY(1,1) PRIMARY KEY,
	Форма nvarchar(15) NOT NULL
)

CREATE TABLE Должность
(
	КодДолжности int IDENTITY(1, 1) PRIMARY KEY,
	НазваниеДолжности nvarchar(20) NOT NULL
)

CREATE TABLE Сотрудник
(
	КодСотрудника int IDENTITY(1, 1) PRIMARY KEY,
	Фамилия nvarchar(20) NOT NULL,
	Имя nvarchar(20) NOT NULL,
	Телефон nvarchar(20) NOT NULL,
	Адрес nvarchar(30) NOT NULL,
	КодДолжности int REFERENCES Должность(КодДолжности)
	ON UPDATE CASCADE
	ON DELETE CASCADE
)

CREATE TABLE Провайдеры
(
	КодПровайдера int IDENTITY(1, 1) PRIMARY KEY,
	НазваниеПровайдера nvarchar(20) NOT NULL
)

CREATE TABLE Склад(
	КодДвижения int IDENTITY(1,1 ) PRIMARY KEY,
	КодЛекарства int REFERENCES Лекарство(КодЛекарства)
	ON UPDATE CASCADE
	ON DELETE CASCADE,
	КодФормы int REFERENCES Форма_выпуска(КодФормы)
	ON UPDATE CASCADE
	ON DELETE CASCADE, 
	КодПроизводителя int REFERENCES Производитель(КодПроизводителя)
	ON UPDATE CASCADE
	ON DELETE CASCADE,
	КодДозировки int REFERENCES Дозировка(КодДозировки)
	ON UPDATE CASCADE
	ON DELETE CASCADE,
	Цена float NOT NULL,
	Количество int  NOT NULL,
	ДатаИстеченияСрока date,
	Признакдвижения nvarchar(50) NOT NULL,
	Датадвижения date NOT NULL,
	КодПровайдера int REFERENCES Провайдеры(КодПровайдера)
	ON UPDATE CASCADE
	ON DELETE CASCADE,
	КодСотрудника int REFERENCES Сотрудник(КодСотрудника)
	ON UPDATE CASCADE
	ON DELETE CASCADE
)
