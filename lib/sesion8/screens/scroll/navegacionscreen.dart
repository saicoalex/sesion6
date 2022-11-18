import 'package:flutter/material.dart';
import 'package:sesion6/sesion8/screens/scroll/amigospage.dart';
import 'package:sesion6/sesion8/screens/scroll/bandejapage.dart';
import 'package:sesion6/sesion8/screens/scroll/homepage.dart';

class NavegacionScreen extends StatefulWidget {
  const NavegacionScreen({super.key});

  @override
  State<NavegacionScreen> createState() => _NavegacionScreenState();
}

class _NavegacionScreenState extends State<NavegacionScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = [
    HomePage(),
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
            label: 'inicio',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Amigos'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.tiktok,
                size: 38,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.message), label: 'Bandeja de entrada'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
