import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _State();
}

class _State extends State<HomeScreen> {
  String urlImage = "assets/images/top.png";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      title: Text("Cloths Shop"),
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

    final button = ElevatedButton(
      child: Text("Change Image"),
      onPressed: () {
        setState(() {
          urlImage = "assets/images/beltei_intake2.png";
        });
      },
    );

    final body = ListView(
      children: [topImage, button],
    );

    final screen = Scaffold(
      appBar: appBar,
      body: body,
    );
    return screen;
  }
}
