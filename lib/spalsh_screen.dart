import 'package:flutter/material.dart';
import 'Capture_face.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';




class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: FlutterSplashScreen.fadeIn(
          backgroundColor: Colors.white,
          onInit: () {
            debugPrint("On Init");
          },
          onEnd: () {
            debugPrint("On End");
          },
          childWidget: SizedBox(
            height: 200,
            width: 200,
            child: Image.asset("assets/images/loading_image.png"),
          ),
          onAnimationEnd: () => debugPrint("On Fade In End"),
          nextScreen: CameraApp(),
        )
    );
  }
}
