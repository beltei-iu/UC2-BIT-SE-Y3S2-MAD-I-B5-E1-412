import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mad/routes/app_route.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  Future<List<dynamic>> loadData() async {
    final dataJson = await rootBundle.loadString("assets/data/product.json");
    print(dataJson);

    List<dynamic> dataMap = jsonDecode(dataJson);
    print(dataMap);

    await Future.delayed(Duration(seconds: 2));

    return dataMap;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _appBar = AppBar(
      title: Text("Favorite"),
      elevation: 3,
    );

    final _body = FutureBuilder(
        future: loadData(),
        builder:
            (BuildContext context, AsyncSnapshot<List<dynamic>> asynnSnapshot) {
          // Completed
          if (asynnSnapshot.connectionState == ConnectionState.done) {
            if (asynnSnapshot.hasError) {
              return Center(
                child: Text("${asynnSnapshot.error}"),
              );
            }

            if (!asynnSnapshot.hasData) {
              return Center(
                child: Text("No Data"),
              );
            }

            List<dynamic> result = asynnSnapshot.data as List<dynamic>;
            List<Widget> items = result.map((e) {
              return GestureDetector(
                child: Card(
                  elevation: 5,
                  child: ListTile(
                    leading: Image.asset("${e["image"]}"),
                    title: Text("${e["name"]}"),
                    subtitle: Text("${e["description"]}"),
                    trailing: Icon(Icons.navigate_next),
                  ),
                ),
                onTap: () {
                  AppRoute.key.currentState!
                      .pushNamed(AppRoute.productDetailScreen, arguments: e);
                },
              );
            }).toList();

            return ListView(
              children: items,
            );
          }
          // Uncomplete
          else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        });

    final screen = Scaffold(
      appBar: _appBar,
      body: _body,
    );
    return screen;
  }
}
