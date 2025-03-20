import 'package:flutter/material.dart';
import 'package:mad/routes/app_route.dart';
import 'package:mad/screens/product_detail_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _State();
}

class _State extends State<HomeScreen> {
  String urlImage = "assets/images/top.png";

  List<Map<String, String>> data = [
    {"name": "T-Shirt", "image": "assets/images/image.png", "price": "12"},
    {"name": "T-Shirt2", "image": "assets/images/image2.png", "price": "12"},
    {"name": "T-Shirt3", "image": "assets/images/image3.png", "price": "12"}
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      title: Icon(Icons.menu),
      centerTitle: false,
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 16),
          child: Icon(Icons.notification_add),
        )
      ],
    );

    final topImage = Image.asset(
      urlImage,
      fit: BoxFit.cover,
    );

    List<Widget> productWidget = data.map((items) {
      return GestureDetector(
        child: Card(
          child: Column(
            children: [
              Image.asset(
                items["image"]!,
                width: 100,
              ),
              Text(items["name"]!)
            ],
          ),
        ),
        onTap: () {
          // final route = MaterialPageRoute(
          //     builder: (context) => ProductDetailScreen(
          //           image: items["image"]!,
          //         ));
          // Navigator.push(context, route);

          AppRoute.key.currentState!
              .pushNamed(AppRoute.productDetailScreen, arguments: items);
        },
      );
    }).toList();

    final productRow = Row(
      children: productWidget,
    );

    final body = ListView(
      children: [topImage, productRow],
    );

    final screen = Scaffold(
      appBar: appBar,
      body: body,
    );
    return screen;
  }
}
