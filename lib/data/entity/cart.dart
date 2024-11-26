class Cart {
  int cartId;
  String name;
  String image;
  String category;
  int price;
  String brand;
  int orderCount;
  String username;

  Cart(
      {required this.cartId,
      required this.name,
      required this.image,
      required this.category,
      required this.price,
      required this.brand,
      required this.orderCount,
      required this.username});

  factory Cart.fromJson(Map<String, dynamic> json) {
    return Cart(
        cartId: json["id"] as int,
        name: json["ad"] as String,
        image: json["resim"] as String,
        category: json["kategori"] as String,
        price: json["fiyat"] as int,
        brand: json["marka"] as String,
        orderCount: json["fiyat"] as int,
        username: json["marka"] as String);
  }
}
