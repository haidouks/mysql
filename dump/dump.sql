CREATE TABLE EMM_KullandikcaOde_Ozet (
  Tarih int(11),
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
)