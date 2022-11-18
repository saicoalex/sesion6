import 'package:flutter/material.dart';

class AmigosPage extends StatelessWidget {
  const AmigosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Table'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Table(
          border: TableBorder.all(color: Colors.white),
          children: const [
            TableRow(
                children: [Text('Productos'), Text('PVenta'), Text('PCompra')]),
            TableRow(
                children: [Text('Productos'), Text('PVenta'), Text('PCompra')]),
            TableRow(
                children: [Text('Productos'), Text('PVenta'), Text('PCompra')]),
            TableRow(
                children: [Text('Productos'), Text('PVenta'), Text('PCompra')]),
            TableRow(
                children: [Text('Productos'), Text('PVenta'), Text('PCompra')]),
          ],
        ),
      ),
    );
  }
}
