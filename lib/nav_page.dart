import 'package:flutter/material.dart';
import 'package:shoestore/pages/cart_page.dart';
import 'package:shoestore/pages/home_page.dart';
import 'package:shoestore/pages/profile_page.dart';
import 'package:shoestore/pages/wallet_page.dart';

class NavPage extends StatefulWidget {
  const NavPage({super.key});

  @override
  State<NavPage> createState() => _NavPageState();
}

class _NavPageState extends State<NavPage> {

  int _selectedIndex = 0;

  void _navigationBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _page = [
    const HomePage(),
    const WalletPage(),
    const CartPage(),
    const ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _page[_selectedIndex],
      //Navigate_Bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigationBottomBar,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        // currentIndex: _selectedIndex,
        // selectedItemColor: Colors.blue,
        // onTap: _onItemTapped,
      ),
    );
  }
}