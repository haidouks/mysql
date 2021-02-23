ALTER USER 'q2a' IDENTIFIED WITH mysql_native_password BY 'q2apass';

CREATE TABLE EMM_KullandikcaOde_Ozet (
  Tarih int(11) PRIMARY KEY,
  ToplamKayit int(11),
  ToplamKullanimByte int(11)
);

CREATE TABLE EMM_KullandikcaOde_Detay (
  Tarih int(11),
  MusteriNo int(11),
  Lokasyon text(20),
  ErisimTipi text(20),
  SiparisNo int(20),
  ServisTipi text(20),
  KullanimByte text(30)
);

INSERT INTO EMM_KullandikcaOde_Ozet 
(Tarih, ToplamKayit, ToplamKullanimByte)
VALUES 
(20210221, 6, 50),
(20210220, 2, 100)
;