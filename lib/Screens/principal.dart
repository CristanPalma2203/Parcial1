import 'package:flutter/material.dart';
import 'package:contenedores/Screens/login/login.dart';
import 'package:contenedores/Screens/register/register.dart';
import 'package:contenedores/Screens/configuracion/conf.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = [
    LoginScreen(),
    RegisterScreen(),
    Conf(),
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
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Color.fromRGBO(93, 10, 40, 1),
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Login',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Register',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Configuracion',
          ),

        ],
      ),
    );
  }
}