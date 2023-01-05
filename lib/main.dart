import 'package:cora_love/screens/data_screen.dart';
import 'package:cora_love/screens/details.dart';
import 'package:cora_love/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home_screen',
      routes: {
        'home_screen': (_) => HomeScreen(),
        'details': (_) => DetailsScreen(),
        'data_screen': (_) => DataScreen(),
      },
    );
  }
}
