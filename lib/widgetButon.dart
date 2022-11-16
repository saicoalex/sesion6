import 'package:flutter/material.dart';

class WidgetButon extends StatelessWidget {
  final String? text;
  final Function? onPressed;

  const WidgetButon({super.key, this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 50,
      minWidth: double.infinity,
      elevation: 1,
      color: const Color.fromARGB(255, 44, 172, 189),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Text(
        text!,
        style: const TextStyle(color: Colors.white, fontSize: 18),
      ),
      onPressed: () => onPressed!(),
    );
  }
}
