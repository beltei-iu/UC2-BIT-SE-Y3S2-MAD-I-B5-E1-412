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
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    final _appBar = AppBar(
      title: Text("${item["name"]}"),
      elevation: 5,
    );

    final _body = ListView(
      children: [
        Image.asset("${item["image"]}"),
        Text("${item["price"]}"),
        Text("${item["description"]}")
      ],
    );

    return Scaffold(
      appBar: _appBar,
      body: _body,
    );
  }
}
