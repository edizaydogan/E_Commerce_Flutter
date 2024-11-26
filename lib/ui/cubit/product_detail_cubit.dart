import 'package:e_commerce_flutter/data/repo/product_dao_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductDetailCubit extends Cubit<int> {
  ProductDetailCubit() : super(0);

  var prepo = ProductDaoRepository();

  Future<void> addToCart(int productId, String username) async {
    var url = "http://kasimadalan.pe.hu/urunler/sepeteUrunEkle.php";
  }

  Future<void> removeFromCart(int productId, String username) async {
    var url = "http://kasimadalan.pe.hu/urunler/sepettenUrunSil.php";
  }
}
