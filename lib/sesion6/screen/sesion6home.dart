import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sesion6/sesion6/widgets6/buton6sesion.dart';

class Home6Screen extends StatefulWidget {
  const Home6Screen({super.key});

  @override
  State<Home6Screen> createState() => _Home6ScreenState();
}

class _Home6ScreenState extends State<Home6Screen> {
  int numero = 0;

  void incrementarNum() {
    setState(() {
      numero++;
    });
  }

  void disminuirNum() {
    setState(() {
      numero--;
    });
  }

  void resetNum() {
    setState(() {
      numero = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff76917),
      appBar: AppBar(
        backgroundColor: const Color(0xfff76917),
        title: Text(' Bienvenido sesion 6',
            style: GoogleFonts.bowlbyOneSc(fontSize: 20)),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 150,
               
              child: Image.asset('assets/rostro.jpg'),
            ),
            Text(
              '\n NOMBRE:   Alexander',
              style: GoogleFonts.dancingScript(fontSize: 30),
            ),
            Text(
              'APELLIDO:   Saico Yucra',
              style: GoogleFonts.dancingScript(fontSize: 30),
            ),
            Text(
              'Contador',
              style: GoogleFonts.lobster(fontSize: 48),
            ),
            Text(
              '$numero',
              style: GoogleFonts.syneMono(fontSize: 70),
            ),
            ButonSesion6(
              aumentarB: () => incrementarNum(),
              disminuirB: () => disminuirNum(),
              resetB: () => resetNum(),
            ),
          ],
        ),
      ),
      //floatingActionButton: ButonSesion6(
      //  aumentarB: () => incrementarNum(),
      //  disminuirB: () => disminuirNum(),
      //  resetB: () => resetNum(),
      // ),
    );
  }
}
