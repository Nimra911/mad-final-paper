import 'package:splashscreen/splashscreen.dart';
import 'package:flutter/material.dart';
import 'welcome.dart';


class mysplashscreen extends StatelessWidget {

  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 15,
      navigateAfterSeconds: new welcome(),
      title: new Text(
        "Nimra Rehman(fa17-bcs-072)",
        style: new TextStyle(
          fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.white,),
      ),

      backgroundColor: Colors.lightBlueAccent,
      styleTextUnderTheLoader: new TextStyle(),
      loaderColor: Colors.greenAccent,
    );
  }
}

