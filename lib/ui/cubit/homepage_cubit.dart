import 'package:e_commerce_flutter/data/repo/product_dao_repository.dart';
import 'package:e_commerce_flutter/data/entity/product.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomepageCubit extends Cubit<List<Product>> {
  HomepageCubit() : super(<Product>[]);

  var prepo = ProductDaoRepository();

  Future<void> loadProduct() async {
    var response = await prepo.loadProduct();
    emit(response);
  }
}
