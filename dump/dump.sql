ALTER USER 'ceph' IDENTIFIED WITH mysql_native_password BY 'cephPass';
CREATE TABLE EMM_KullandikcaOde_Detay (
  ID INT PRIMARY KEY AUTO_INCREMENT,
  Tarih INT(8) NOT NULL,
  KullanimByte INT NOT NULL,
  ServisTipi TEXT NOT NULL,
  SiparisNo TEXT NOT NULL,
  MusteriNo TEXT NOT NULL,
  Erisimtipi TEXT NOT NULL,
  Lokasyon TEXT NOT NULL
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
    Erisimtipi,
    Lokasyon
  )
VALUES
  (
    20210224,
    4096,
    "READ",
    "xyz12354617",
    "mus0002",
    "LOCAL",
    "IST"
  ),
  (
    20210224,
    10240,
    "CAP",
    "xyz12354617",
    "mus0001",
    "LOCAL",
    "ANK"
  ),
  (
    20210224,
    1024,
    "CAP",
    "xyz12354617",
    "mus0003",
    "INTERNET",
    "IST"
  ),
  (
    20210223,
    1024,
    "READ",
    "xyz12354617",
    "mus0001",
    "INTERNET",
    "ANK"
  ),
  (
    20210223,
    1024,
    "CAP",
    "xyz12351237",
    "mus0002",
    "LOCAL",
    "IST"
  ),
  (
    20210222,
    1024,
    "READ",
    "xyz12354617",
    "mus0001",
    "LOCAL",
    "ANK"
  ),
  (
    20210221,
    1024,
    "CAP",
    "xyz1237",
    "mus0004",
    "INTERNET",
    "IST"
  );
