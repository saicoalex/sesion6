import 'package:flutter/material.dart';
import 'package:sesion6/sesion8/screens/scroll/amigospage.dart';
import 'package:sesion6/sesion8/screens/scroll/bandejapage.dart';
import 'package:sesion6/sesion8/screens/scroll/homepage8_1.dart';

class NavegacionScreenS8_1 extends StatefulWidget {
  const NavegacionScreenS8_1({super.key});

  @override
  State<NavegacionScreenS8_1> createState() => _NavegacionScreenS8_1State();
}

class _NavegacionScreenS8_1State extends State<NavegacionScreenS8_1> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = [
    HomePage8_1Home(),
    // Text('1'),
    //Text('2'),
    AmigosPage(),
    Text('3'),
    //Text('4'),
    BandejaPage(),
    Text('5'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shop,
                size: 38,
              ),
              label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.sell), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: ''),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
