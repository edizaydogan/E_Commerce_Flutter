import 'package:e_commerce_flutter/ui/cubit/homepage_cubit.dart';
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
    return Scaffold(
      appBar: AppBar(
        title: const Text("LuxStore"),
      ),
      body: BlocBuilder<HomepageCubit, int>(builder: (context, result) {
        return Text(result.toString());
      }),
    );
  }
}
