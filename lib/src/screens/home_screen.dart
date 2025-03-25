import 'package:flutter/material.dart';
import '../../colors_app.dart';
import '../../imports.dart';

class HomeSecreen extends StatefulWidget {
  const HomeSecreen({super.key});

  @override
  State<HomeSecreen> createState() => _HomeSecreenState();
}

class _HomeSecreenState extends State<HomeSecreen> {
  int _paginaActual = 0;
  static const List<Widget> _pages = <Widget>[
    MyHome(),
    FavoriteScreen(),
    ShoppingScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _paginaActual = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _pages.elementAt(_paginaActual)),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColors.textColor,
        unselectedItemColor: const Color.fromARGB(255, 199, 199, 199),
        currentIndex: _paginaActual,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: 'Bag'),
          BottomNavigationBarItem(icon: Icon(Icons.person_2), label: 'Me'),
        ],
      ),
    );
  }
}
