import 'package:flutter/material.dart';
import 'package:wanna_kick/widget/feature.dart';
import 'package:wanna_kick/themes/constain_color.dart';
import 'package:wanna_kick/widget/cap.dart';
import 'package:wanna_kick/widget/catalog.dart';
import 'package:fancy_bottom_navigation_2/fancy_bottom_navigation.dart';
import 'package:fancy_bottom_navigation_2/internal/tab_item.dart';
import 'package:fancy_bottom_navigation_2/paint/half_clipper.dart';
import 'package:fancy_bottom_navigation_2/paint/half_painter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    FeaturePage(),
    CapturePage(),
    CatalogPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: ConstainColor.whiteColor,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[850],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.teal[300],
        unselectedItemColor: ConstainColor.whiteColor,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.compass_calibration_outlined, size: 30),
            label: 'Discover',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera, size: 30),
            label: 'Try on',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, size: 30),
            label: 'Catalog',
          ),
        ],
      ),
    );
  }
}
