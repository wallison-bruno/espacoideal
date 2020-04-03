import 'package:espacoideal/screens/home_screen.dart';
import 'package:espacoideal/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:espacoideal/screens/cadastro_screen.dart';
import 'screens/cadastro_screen.dart';
import 'package:espacoideal/widgets/navDrawer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.orange,
        accentColor: Color(0xFFD8ECF1),
        scaffoldBackgroundColor: Color(0xFFF3F5F7),
      ),
      home: HomeScreen(),
    );
  }
}
