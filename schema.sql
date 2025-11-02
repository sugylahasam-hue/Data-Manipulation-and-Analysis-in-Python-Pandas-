-- Создаем таблицу животных
CREATE TABLE Animals (
    id INT PRIMARY KEY,
    name VARCHAR(50),           -- имя животного
    species VARCHAR(50),        -- вид (лев, зебра, тигр и т.д.)
    age INT,                    -- возраст
    cage_id INT                 -- номер клетки
);

-- Таблица клеток
CREATE TABLE Cages (
    id INT PRIMARY KEY,
    location VARCHAR(50),       -- расположение клетки
    capacity INT                -- вместимость
);

-- Таблица сотрудников зоопарка
CREATE TABLE Keepers (
    id INT PRIMARY KEY,
    name VARCHAR(50),           -- имя сотрудника
    position VARCHAR(50)        -- должность
);

-- Кто за какими животными ухаживает
CREATE TABLE AnimalKeeper (
    animal_id INT,
    keeper_id INT,
    PRIMARY KEY (animal_id, keeper_id)
);
