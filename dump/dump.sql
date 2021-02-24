ALTER USER 'ceph' IDENTIFIED WITH mysql_native_password BY 'cephPass';
CREATE TABLE EMM_KullandikcaOde_Detay (
  ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  Tarih INT(8) NOT NULL,
  KullanimByte INT NOT NULL,
  ServisTipi TEXT NOT NULL,
  SiparisNo TEXT NOT NULL,
  MusteriNo TEXT NOT NULL,
  Erisimtipi TEXT NOT NULL
);
CREATE VIEW EMM_KullandikcaOde_Ozet (Tarih, ToplamKayit, ToplamKullanimByte) AS
SELECT
  Tarih,
  COUNT(Tarih),
  SUM(KullanimByte)
FROM
  EMM_KullandikcaOde_Detay
GROUP BY
  Tarih;
INSERT INTO
  EMM_KullandikcaOde_Detay (
    Tarih,
    KullanimByte,
    ServisTipi,
    SiparisNo,
    MusteriNo,
    Erisimtipi
  )
VALUES
  (
    20210224,
    4096,
    "READ",
    "xyz12354617",
    "mus0002",
    "LOCAL"
  ),
  (
    20210224,
    10240,
    "CAPACITY",
    "xyz12354617",
    "mus0001",
    "LOCAL"
  ),
  (
    20210224,
    1024,
    "CAPACITY",
    "xyz12354617",
    "mus0003",
    "INTERNET"
  ),
  (
    20210223,
    1024,
    "READ",
    "xyz12354617",
    "mus0001",
    "INTERNET"
  ),
  (
    20210223,
    1024,
    "CAPACITY",
    "xyz12351237",
    "mus0002",
    "LOCAL"
  ),
  (
    20210222,
    1024,
    "READ",
    "xyz12354617",
    "mus0001",
    "LOCAL"
  ),
  (
    20210221,
    1024,
    "CAPACITY",
    "xyz1237",
    "mus0004",
    "INTERNET"
  );
