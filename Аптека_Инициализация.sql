CREATE TABLE ������������
(
	��������������� int IDENTITY(1, 1) PRIMARY KEY,
	�������������������� nvarchar(20) NOT NULL
)

Create TABLE ���������
(
	������������ int IDENTITY(1, 1) PRIMARY KEY,
	����������������� nvarchar(20) NOT NULL,
	��������������� int REFERENCES ������������(���������������)
	ON UPDATE CASCADE
	ON DELETE CASCADE
)

CREATE TABLE �������������(
	���������������� int IDENTITY(1,1) PRIMARY KEY,
	�������� nvarchar(15) NOT NULL,
	������ nvarchar(15) NOT NULL
)

CREATE TABLE ���������(
	������������ int IDENTITY(1,1) PRIMARY KEY,
	��������� nvarchar(10) NOT NULL
)

CREATE TABLE �����_�������(
	�������� int IDENTITY(1,1) PRIMARY KEY,
	����� nvarchar(15) NOT NULL
)

CREATE TABLE ���������
(
	������������ int IDENTITY(1, 1) PRIMARY KEY,
	����������������� nvarchar(20) NOT NULL
)

CREATE TABLE ���������
(
	������������� int IDENTITY(1, 1) PRIMARY KEY,
	������� nvarchar(20) NOT NULL,
	��� nvarchar(20) NOT NULL,
	������� nvarchar(20) NOT NULL,
	����� nvarchar(30) NOT NULL,
	������������ int REFERENCES ���������(������������)
	ON UPDATE CASCADE
	ON DELETE CASCADE
)

CREATE TABLE ����������
(
	������������� int IDENTITY(1, 1) PRIMARY KEY,
	������������������ nvarchar(20) NOT NULL
)

CREATE TABLE �����(
	����������� int IDENTITY(1,1 ) PRIMARY KEY,
	������������ int REFERENCES ���������(������������)
	ON UPDATE CASCADE
	ON DELETE CASCADE,
	�������� int REFERENCES �����_�������(��������)
	ON UPDATE CASCADE
	ON DELETE CASCADE, 
	���������������� int REFERENCES �������������(����������������)
	ON UPDATE CASCADE
	ON DELETE CASCADE,
	������������ int REFERENCES ���������(������������)
	ON UPDATE CASCADE
	ON DELETE CASCADE,
	���� float NOT NULL,
	���������� int  NOT NULL,
	������������������ date,
	��������������� nvarchar(50) NOT NULL,
	������������ date NOT NULL,
	������������� int REFERENCES ����������(�������������)
	ON UPDATE CASCADE
	ON DELETE CASCADE,
	������������� int REFERENCES ���������(�������������)
	ON UPDATE CASCADE
	ON DELETE CASCADE
)
