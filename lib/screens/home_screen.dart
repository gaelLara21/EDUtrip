import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'carrusel/carrusel.dart';

class HomeLog extends StatefulWidget {
  const HomeLog({super.key});

  @override
  State<HomeLog> createState() => _HomeLogState();
}

class _HomeLogState extends State<HomeLog> {
  int _currentIndex = 0;

  final screens = [
    const Carrusel(),
    const Center(child: Text('Test', style: TextStyle(fontSize: 45))),
    const Center(child: Text('Blog', style: TextStyle(fontSize: 45))),
    const Center(child: Text('Busqueda', style: TextStyle(fontSize: 45))),
  ];

  final colors = [
    Colors.cyan,
    Colors.purple,
    Colors.green,
    Colors.red,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EDUtrip',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700)),
        centerTitle: true,
        backgroundColor: colors[_currentIndex],
      ),
      body: screens[_currentIndex],
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        margin: const EdgeInsets.only(bottom: 10),
        child: GNav(
            selectedIndex: _currentIndex,
            tabBorderRadius: 10,
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            onTabChange: (index) => {setState(() => _currentIndex = index)},
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Inicio',
                iconActiveColor: Colors.cyan,
                textColor: Colors.black,
              ),
              GButton(
                icon: Icons.book_sharp,
                text: 'Test',
                iconActiveColor: Colors.purple,
                textColor: Colors.black,
              ),
              GButton(
                icon: Icons.camera_alt_outlined,
                text: 'Blog',
                iconActiveColor: Colors.green,
                textColor: Colors.black,
              ),
              GButton(
                icon: Icons.content_paste_search_rounded,
                text: 'Busqueda',
                iconActiveColor: Colors.red,
                textColor: Colors.black,
              ),
            ]),
      ),
    );
  }
}
