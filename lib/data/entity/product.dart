class Product {
  int id;
  String name;
  String image;
  String category;
  int price;
  String brand;

  Product(
      {required this.id,
      required this.name,
      required this.image,
      required this.category,
      required this.price,
      required this.brand});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
        id: json["id"] as int,
        name: json["ad"] as String,
        image: json["resim"] as String,
        category: json["kategori"] as String,
        price: json["fiyat"] as int,
        brand: json["marka"] as String);
  }
}
