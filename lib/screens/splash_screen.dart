import 'package:flutter/material.dart';
import 'package:mad/routes/app_route.dart';
import 'package:mad/screens/main_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Control
    final button = Container(
      width: MediaQuery.of(context).size.width,
      height: 40,
      child: ElevatedButton(
        onPressed: () {
          // final route = MaterialPageRoute(builder: (context) => MainScreen());

          // Navigator.of(context).pushReplacementNamed(AppRoute.mainScreen);

          AppRoute.key.currentState!.pushReplacementNamed(AppRoute.mainScreen);
        },
        child: Text("Get Start"),
        style: ElevatedButton.styleFrom(
          maximumSize: Size(double.infinity, 50),
          backgroundColor: Colors.red,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );

    final logo = Image.asset(
      "assets/images/logo.png",
      width: 100,
      height: 100,
    );

    final appSlogan = Text("Be cute, be fashionable.");

    final logoCol = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        logo,
        SizedBox(
          height: 10,
        ),
        appSlogan
      ],
    );
    final logoLayout = Expanded(flex: 3, child: logoCol);
    final buttonLayout = Expanded(
        child: Center(
      child: Padding(
        padding: EdgeInsets.only(left: 16, right: 16),
        child: button,
      ),
    ));

    // Layout
    final column = Column(
      children: [logoLayout, buttonLayout],
    );

    // Screen
    final screen = Scaffold(
      body: column,
    );
    return screen;
  }
}
