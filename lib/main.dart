import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instogram/responsive/mobile_screen_layout.dart';
import 'package:instogram/responsive/responsive_layout_screen.dart';
import 'package:instogram/responsive/web_screen_layout.dart';
import 'package:instogram/utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: 'AIzaSyCI8k1ZXH3VMPCtTnECAc3bCnRjbFQkYTo',
        appId: '1:215066121219:web:abaa834cd005992224ea36',
        messagingSenderId: '215066121219',
        projectId: 'instogram-36195',
        storageBucket: 'instogram-36195.appspot.com',
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instogram',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      home: const ResponsiveLayout(
        mobileScreenLayout: MobileScreenLayout(),
        webScreenLayout: WebScreenLayout(),
      ),
    );
  }
}
