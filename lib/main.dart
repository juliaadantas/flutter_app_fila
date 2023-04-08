import 'package:app_fila/Screens/SectionsPage.dart';
import 'package:flutter/material.dart';

import 'Screens/LoginPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TREMÔMETRO',
      theme: ThemeData(
          useMaterial3: true,
          appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(color: Colors.white),
            color: Color.fromARGB(255, 9, 123, 68),
          ),
          colorScheme: ColorScheme.fromSeed(
            seedColor: Color.fromARGB(255, 5, 91, 49),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: TextButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 5, 91, 49)))),
      home: LoginPage(title: 'Login Page'),
    );
  }
}
