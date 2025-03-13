import 'package:flutter/material.dart';

class ProductDetailScreen extends StatefulWidget {
  // String? image;

  // ProductDetailScreen({super.key, this.image});

  ProductDetailScreen({super.key});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final item =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    return Scaffold(
      appBar: AppBar(
        title: Text("${item["name"]}"),
        elevation: 5,
      ),
      body: Center(
        child: Image.asset("${item["image"]}"),
      ),
    );
  }
}
