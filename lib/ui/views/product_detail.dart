import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:e_commerce_flutter/data/entity/product.dart';
import 'package:e_commerce_flutter/ui/cubit/product_detail_cubit.dart';

class ProductDetail extends StatefulWidget {
  final Product product;

  const ProductDetail({super.key, required this.product});

  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductDetailCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Image.asset(
                'images/iconTop.png',
              ),
              const SizedBox(width: 8),
              const Text(
                " LuxStore",
                style: TextStyle(
                  fontFamily: 'Sevillana',
                  fontSize: 24,
                ),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            color: const Color(0xFFF1F1F1),
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.network(
                  "http://kasimadalan.pe.hu/urunler/resimler/${widget.product.image}",
                  fit: BoxFit.fitHeight,
                  height: 250,
                  width: double.infinity,
                ),
                const SizedBox(height: 16),
                Text(
                  widget.product.name,
                  style: const TextStyle(
                      fontFamily: 'PlayfairDisplay', fontSize: 24),
                ),
                const SizedBox(height: 8),
                Text(
                  widget.product.category,
                  style: const TextStyle(fontSize: 18, color: Colors.grey),
                ),
                const SizedBox(height: 8),
                Text(
                  "₺${widget.product.price}",
                  style: const TextStyle(fontSize: 22, color: Colors.green),
                ),
                const SizedBox(height: 16),
                BlocBuilder<ProductDetailCubit, int>(
                  builder: (context, cartStatus) {
                    return ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        cartStatus == 0 ? "Add to Cart" : "Remove from Cart",
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
