class Cart {
  int sepetId;
  String ad;
  String resim;
  String kategori;
  int fiyat;
  String marka;
  int siparisAdeti;
  String kullaniciAdi;

  Cart(
      {required this.sepetId,
      required this.ad,
      required this.resim,
      required this.kategori,
      required this.fiyat,
      required this.marka,
      required this.siparisAdeti,
      required this.kullaniciAdi});

  factory Cart.fromJson(Map<String, dynamic> json) {
    return Cart(
        sepetId: json["id"] as int,
        ad: json["ad"] as String,
        resim: json["resim"] as String,
        kategori: json["kategori"] as String,
        fiyat: json["fiyat"] as int,
        marka: json["marka"] as String,
        siparisAdeti: json["fiyat"] as int,
        kullaniciAdi: json["marka"] as String);
  }
}
