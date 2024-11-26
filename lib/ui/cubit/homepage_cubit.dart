import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:e_commerce_flutter/data/entity/product.dart';
import 'package:e_commerce_flutter/data/entity/product_response.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomepageCubit extends Cubit<List<Product>> {
  HomepageCubit() : super(<Product>[]);

  List<Product> parseProductResponse(String response) {
    return ProductResponse.fromJson(json.decode(response)).product;
  }

  Future<void> loadProduct() async {
    var url =
        Uri.parse("http://kasimadalan.pe.hu/urunler/tumUrunleriGetir.php");
    var response = await http.get(url);
    emit(parseProductResponse(response.body));
  }
}
