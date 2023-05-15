import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:face_recog/camera_screen.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  //ติดตั้ง Firebase
  WidgetsFlutterBinding.ensureInitialized();
//ปรับแนวจอโทรศัพท์
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeRight,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) {
    runApp(ProviderScope(child: MyApp()));
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CameraScreen(),
    );
  }
}