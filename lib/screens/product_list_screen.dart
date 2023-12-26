import 'package:flutter/material.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Color.fromARGB(255, 36, 139, 22),
          child: Center(child: Text('لیست محصولات')),
        ),
      ),
    );
  }
}
