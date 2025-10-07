import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'details_screen.dart';

void main() {
  runApp(RecipeApp());
}

class RecipeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jay\'s Recipe Book',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.red[300],
          foregroundColor: Colors.black,
        ),
      ),
      home: HomeScreen(),
      routes: {
        '/details': (context) => DetailsScreen(),
      },
    );
  }
}
