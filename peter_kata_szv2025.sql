USE peter_kata_szv2025;

CREATE TABLE termekek (
    id INT AUTO_INCREMENT PRIMARY KEY,
    szeriaszam VARCHAR(50) NOT NULL UNIQUE,
    gyarto VARCHAR(100) NOT NULL,
    tipus VARCHAR(100) NOT NULL,
    leadas DATE NOT NULL DEFAULT CURRENT_DATE,
    statusz ENUM('Beérkezett', 'Hibafeltárás', 'Alkatrész beszerzés alatt', 'Javítás', 'Kész') NOT NULL DEFAULT 'Beérkezett',
    statuszvalt DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE kapcsolattartok (
    id INT AUTO_INCREMENT PRIMARY KEY,
    termekid INT NOT NULL,
    nev VARCHAR(100) NOT NULL,
    telefon VARCHAR(20),
    email VARCHAR(100),
    FOREIGN KEY (termekid) REFERENCES termekek(id) ON DELETE CASCADE
);