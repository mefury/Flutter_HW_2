import 'package:flutter/material.dart';
import 'package:homework_1/pages/page1.dart';
import 'package:homework_1/pages/page2.dart';
import 'package:homework_1/pages/page3.dart';
import 'package:homework_1/pages/page4.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const Page1(),
    const Page2(),
    Page3(),
    Page4(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    const Color defaultIconColor = Colors.grey;
    const Color selectedIconColor = Colors.amber;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        title: const Text('G R A N C E'),
        centerTitle: true,
        actions: const [
          Icon(
            Icons.settings,
            color: Colors.black,
          )
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // Set the type to fixed
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: selectedIconColor,
        unselectedItemColor: defaultIconColor,
        onTap: _onItemTapped,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
      ),
    );
  }
}
