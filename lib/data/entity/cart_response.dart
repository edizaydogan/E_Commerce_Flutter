import 'package:e_commerce_flutter/data/entity/cart.dart';

class CartResponse {
  List<Cart> cart;
  int success;

  CartResponse({required this.cart, required this.success});

  factory CartResponse.fromJson(Map<String, dynamic> json) {
    var jsonArray = json["urunler_sepeti"] as List;
    int success = json["success"] as int;
    var cart = jsonArray
        .map((jsonCartObject) => Cart.fromJson(jsonCartObject))
        .toList();
    return CartResponse(cart: cart, success: success);
  }
}
