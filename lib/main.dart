import 'package:flutter/material.dart';
import 'package:sesion6/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(
        useMaterial3: true,
      ).copyWith(
          splashColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.black,
          scaffoldBackgroundColor: Colors.black),

      // theme: ThemeData(
      //    useMaterial3: true,
      //    primarySwatch: Colors.blue,
      //  ),
      home: const Menu(),
    );
  }
}
