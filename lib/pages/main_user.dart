import 'package:flutter/material.dart';
import 'package:motor_termos_front_end/pages/payment_page.dart';
import 'package:motor_termos_front_end/pages/home_page.dart';

class MainUserPage extends StatefulWidget {
  const MainUserPage({super.key});

  @override
  _MainUserPageState createState() => _MainUserPageState();
}

class _MainUserPageState extends State<MainUserPage> {
  int _selectedIndex = 0;
  
  final List<Widget> _pages = [
    const HomePage(),
    const PaymentPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment),
            label: 'Payment',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).primaryColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
