import 'package:splashscreen/splashscreen.dart';
import 'package:flutter/material.dart';
import 'welcome.dart';
void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: "splach screen",
  home: mysplashscreen(),
));

class mysplashscreen extends StatelessWidget {

  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 5,
      navigateAfterSeconds: new welcome(),
      title: new Text(
        "Nimra Rehman",
        style: new TextStyle(
          fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.white,),
      ),

      backgroundColor: Colors.lightBlueAccent,
      styleTextUnderTheLoader: new TextStyle(),
      loaderColor: Colors.greenAccent,
    );
  }
}

