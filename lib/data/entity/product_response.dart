import 'package:e_commerce_flutter/data/entity/product.dart';

class ProductResponse {
  List<Product> product;
  int success;

  ProductResponse({required this.product, required this.success});

  factory ProductResponse.fromJson(Map<String, dynamic> json) {
    var jsonArray = json["product"] as List;
    int success = json["success"] as int;
    var product = jsonArray
        .map((jsonProductObject) => Product.fromJson(jsonProductObject))
        .toList();
    return ProductResponse(product: product, success: success);
  }
}
