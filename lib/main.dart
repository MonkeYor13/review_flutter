import 'package:flutter/material.dart';
import 'package:review_flutter/src/screens/home_screen.dart';
import 'package:review_flutter/src/screens/login_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        '/one': (context) => const HomeSecreen(),
      },
    );
  }
}
