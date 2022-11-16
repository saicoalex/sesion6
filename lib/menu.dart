import 'package:flutter/material.dart';
import 'package:sesion6/widgetButon.dart';
import 'package:sesion6/sesion6/screen/sesion6home.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sesiones'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            WidgetButon(
              text: 'Sesion 6',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Home6Screen(),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
