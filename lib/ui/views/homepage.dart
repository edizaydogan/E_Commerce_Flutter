import 'package:e_commerce_flutter/data/entity/product.dart';
import 'package:e_commerce_flutter/ui/cubit/homepage_cubit.dart';
import 'package:e_commerce_flutter/ui/cubit/product_detail_cubit.dart';
import 'package:e_commerce_flutter/ui/views/product_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomepageCubit, List<Product>>(
      builder: (context, productList) {
        if (productList.isEmpty) {
          context.read<HomepageCubit>().loadProduct();
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.8,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
              ),
              itemCount: productList.length,
              itemBuilder: (context, index) {
                final product = productList[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductDetail(
                          product: product,
                        ),
                      ),
                    );
                  },
                  child: Card(
                    color: const Color(0xFFF1F1F1),
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                            child: Image.network(
                          "http://kasimadalan.pe.hu/urunler/resimler/${product.image}",
                          fit: BoxFit.fitHeight,
                        )),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                product.name,
                                style: const TextStyle(
                                    fontFamily: 'PlayfairDisplay',
                                    fontSize: 16),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                "\₺${product.price.toString()}",
                                style: const TextStyle(
                                  color: Colors.green,
                                ),
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 44,
                                  ),
                                  BlocBuilder<ProductDetailCubit, int>(
                                    builder: (context, cartStatus) {
                                      return ElevatedButton(
                                        onPressed: () {},
                                        child: Text(
                                          cartStatus == 0
                                              ? "Add to Cart"
                                              : "Remove from Cart",
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          );
        }
      },
    );
  }
}
