
--------------------------------------------------------------------Tabloları Oluşturma

CREATE TABLE salonlar (
    salon_id SERIAL PRIMARY KEY,
    salon_adi VARCHAR(100) NOT NULL,
    salon_adresi VARCHAR(200),
    salon_saatleri VARCHAR(50)
);

CREATE TABLE islemler (
    islem_id SERIAL PRIMARY KEY,
    islem_adi VARCHAR(100) NOT NULL,
    islem_suresi INT NOT NULL, -- dk
    islem_fiyati DECIMAL(10, 2) NOT NULL
);

CREATE TABLE calisanlar (
    calisan_id SERIAL PRIMARY KEY,
    calisan_adi VARCHAR(100) NOT NULL,
    calisan_uzmanligi VARCHAR(200),
    salon_id INT REFERENCES salonlar(salon_id) ON DELETE CASCADE
);

CREATE TABLE randevular (
    randevu_id SERIAL PRIMARY KEY,
    calisan_id INT REFERENCES calisanlar(calisan_id) ON DELETE CASCADE,
    islem_id INT REFERENCES islemler(islem_id) ON DELETE CASCADE,
    randevu_zamani TIMESTAMP NOT NULL,
    randevu_musteri_adi VARCHAR(100),
    randevu_durumu VARCHAR(50) DEFAULT 'Askıda'
);

CREATE TABLE kullanicilar (
    kullanici_id SERIAL PRIMARY KEY,
    kullanici_nicki VARCHAR(50) UNIQUE NOT NULL,
    kullanici_sifresi VARCHAR(255) NOT NULL,
    kullanici_turu VARCHAR(50) DEFAULT 'Müşteri' -- 'Admin' veya 'Müşteri'
);

---------------------------------------------------------------------------- Tablolara Bilgi Yükleme

INSERT INTO salonlar (salon_adi, salon_adresi, salon_saatleri) VALUES
('Salon Serana', 'İstanbul, Kartal', '10:00-19:00');

INSERT INTO islemler (islem_adi, islem_suresi, islem_fiyati) VALUES
('Fön', '30', '300.00'),
('Model', '45', '500.00'),
('Kesim', '60', '800.00'),
('Boya', '90', '1000.00'),
('Boya & Kesim', '150', '1600.00'),
('Boya & Model', '135', '1300.00'),
('Kesim & Model', '120', '1100.00'),
('Kesim, Boya & Model', '195', '2000.00');

INSERT INTO calisanlar(calisan_adi, calisan_uzmanligi, salon_id) VALUES
('Ahmet Yılmaz', 'Boya & Kesim', 1),
('Can Pamuk', 'Saç Modelleme', 1);

INSERT INTO kullanicilar(kullanici_nicki, kullanici_sifresi, kullanici_turu) VALUES
('agokce', '1234', 'Müşteri'),
('admin1', '1234', 'Admin');