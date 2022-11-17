import 'package:flutter/material.dart';
import 'package:sesion6/sesion7/screens/scrolltrabajo7_1.dart';
import 'package:sesion6/widgetButon.dart';
import 'package:sesion6/sesion6/screen/sesion6home.dart';
import 'package:sesion6/sesion7/screens/scroll7w.dart';

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
            ),
            WidgetButon(
              text: 'Sesion 7',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ScrollScreen7(),
                  ),
                );
              },
            ),
            WidgetButon(
              text: 'Sesion 7.1 ',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ScrollScreen7_1sesion(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
