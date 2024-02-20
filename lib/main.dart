import 'package:app_nckh/auth/main_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyD4GnTVeDj7lwzef5AQd3BC-blMTcA17So",
        appId: "1:846233811926:android:a3d4ad693c06115c274277",
        messagingSenderId: "846233811926",
        projectId: "nckh-52f54")
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }

}
