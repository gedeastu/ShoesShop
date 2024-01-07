import 'package:app/pages/splash_screen/SplashScreen.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
//import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  //await Hive.initFlutter();
  //open the box
  //var box = await Hive.openBox('box');
  runApp(const Main());
} 
class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}