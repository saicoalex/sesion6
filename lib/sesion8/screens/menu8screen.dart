import 'package:flutter/material.dart';
import 'package:sesion6/sesion8/screens/scroll/navegacionScre8_1.dart';
import 'package:sesion6/sesion8/screens/scroll/navegacionscreen.dart';
import 'package:sesion6/widgetButon.dart';

class Menu8scren extends StatelessWidget {
  const Menu8scren({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('sesion8'), centerTitle: true),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              WidgetButon(
                text: 'Sesion 8 ',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NavegacionScreen(),
                    ),
                  );
                },
              ),
              WidgetButon(
                text: 'Sesion 8.1',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NavegacionScreenS8_1(),
                    ),
                  );
                },
              ),
            ],
          ),
        ));
  }
}
