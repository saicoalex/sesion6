import 'package:flutter/material.dart';

class ButonSesion6 extends StatelessWidget {
  final Function aumentarB;
  final Function disminuirB;
  final Function resetB;

  const ButonSesion6(
      {super.key,
      required this.aumentarB,
      required this.disminuirB,
      required this.resetB});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          backgroundColor:const Color.fromARGB(252, 11, 25, 221),
          heroTag: const Text('btn1'),
          tooltip: 'Incrementar',
          child: const Icon(Icons.add),
          onPressed: () => aumentarB(),
        ),
        FloatingActionButton(
          backgroundColor: const Color.fromARGB(252, 14, 174, 202),
          heroTag: const Text('btn2'),
          tooltip: 'Reset',
          child: const Icon(Icons.restart_alt_rounded),
          onPressed: () => resetB(),
        ),
        FloatingActionButton(
          backgroundColor: const Color.fromARGB(248, 224, 3, 3),
          heroTag: const Text('btn3'),
          tooltip: 'Decrementar',
          child: const Icon(Icons.remove_circle_outline_outlined),
          onPressed: () => disminuirB(),
        ),
      ],
    );
  }
}
