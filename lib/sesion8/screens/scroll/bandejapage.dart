import 'package:flutter/material.dart';

class BandejaPage extends StatelessWidget {
  const BandejaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<dynamic> Product = [
      {
        'name': 'CocaCola',
        'descripcion': '400ml',
        'pcompra': '3.00',
        'pVenta': '3.50'
      },
      {
        'name': 'oreo',
        'descripcion': '12grams',
        'pcompra': '2.00',
        'pVenta': '3.50'
      },
      {
        'name': 'Inkacolca',
        'descripcion': '400ml',
        'pcompra': '3.00',
        'pVenta': '3.50'
      },
      {
        'name': 'Leche Gloria',
        'descripcion': '400ml',
        'pcompra': '3.00',
        'pVenta': '3.80'
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('DataTable'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: DataTable(
            border: TableBorder.all(color: Colors.white),
            columns: const [
              DataColumn(label: Text('Name')),
              DataColumn(label: Text('Descipcion')),
              DataColumn(label: Text('P. compra')),
              DataColumn(label: Text('P. venta')),
            ],
            rows: Product.map(
              (e) => DataRow(
                cells: [
                  DataCell(Text(e['name'])),
                  DataCell(Text(e['descripcion'])),
                  DataCell(Text(e['pcompra'])),
                  DataCell(Text(e['pVenta'])),
                ],
              ),
            ).toList(),
          ),
        ),
      ),
    );
  }
}
