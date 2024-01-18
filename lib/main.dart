import 'package:EmoRythm/spalsh_screen.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'Capture_face.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Emo Rythm',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Color(0xff0a2742),
      ),
      home: CameraApp(),
    );
  }
}
