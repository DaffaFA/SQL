cs xampp\mysql\bin;
> mysql -u root -p;

SHOW DATABASES;

CREATE DATABASE '11rpl1_db';

CREATE TABLE `siswa` (
    id_siswa INT(11) PRIMARY KEY AUTO_INCREMENT,
    nis CHAR(10),
    nama_lengkap VARCHAR(255),
    jk CHAR(1),
    tmp_lahir VARCHAR(255),
    tgl_lahir DATE,
    alamat TEXT,
    no_hp CHAR(15);
    tanggal_entri DATETIME
);

SHOW TABLES;

DESCRIBE `siswa`;

INSERT INTO siswa SET 
    id_siswa = NULL,
    nis = '12345678',
    nama_lengkap = 'IHSAN FAJAR ROMADON',
    jk = 'L',
    tmp_lahir = "SUBANG",
    tgl_lahir = "2002-11-27",
    alamat = "DUSUN PATROL",
    no_hp = '0853222292552',
    tanggal_entri = NOW();


SELECT * FROM siswa;

SELECT * FROM siswa WHERE `jk` = 'P';

UPDATE siswa set `nama_lengkap` = UPPER(nama_lengkap);

SELECT * FROM siswa ORDER BY 'tgl_lahir' DESC;

SELECT UPPER(nama_lengkap) AS nama_lengkap FROM siswa;

SELECT * FROM siswa LIMIT 3, 5;

SELECT * FROM siswa WHERE YEAR(tgl_lahir) = 2002;

UPDATE siswa SET tmp_lahir = 'BANDUNG' WHERE id_siswa = 1;

DELETE FROM siswa WHERE id_siswa = '';