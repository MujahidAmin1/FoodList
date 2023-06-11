import 'package:flutter/material.dart';
import 'package:flutter_application_3/provider/food_provider.dart';
import 'package:flutter_application_3/screen/homescreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => FoodProvider(),
        )
      ],
      child: MaterialApp(
        theme: ThemeData(
          useMaterial3: true
        ),
        home: HomeScreen(),
      ),
    );
  }
}
