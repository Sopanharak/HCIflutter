import 'package:flutter/material.dart';
import 'package:shoestore/nav_page.dart';
import 'package:shoestore/pages/login_page.dart';
import 'package:shoestore/pages/product_detail_page.dart';
import 'package:shoestore/pages/signup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),

      routes: {
        '/signup_page': (context) => const SignUpPage(),
        '/login_page': (context) => const LoginPage(),
        '/nav_page': (context) => const NavPage(),
        '/product_detail': (context) => const ProductDetailPage(),
      },
    );
  }
}

