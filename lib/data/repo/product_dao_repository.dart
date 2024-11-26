import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:e_commerce_flutter/data/entity/product.dart';
import 'package:e_commerce_flutter/data/entity/product_response.dart';

class ProductDaoRepository {
  List<Product> parseProductResponse(String response) {
    return ProductResponse.fromJson(json.decode(response)).product;
  }

  Future<List<Product>> loadProduct() async {
    var url =
        Uri.parse("http://kasimadalan.pe.hu/urunler/tumUrunleriGetir.php");
    var response = await http.get(url);
    return parseProductResponse(response.body);
  }

  Future<void> addToCart(int productId, String username) async {
    var url = "http://kasimadalan.pe.hu/urunler/sepeteUrunEkle.php";
    var response = await http.post(
      Uri.parse(url),
      body: {
        'id': productId.toString(),
        'username': username,
      },
    );
  }
}
