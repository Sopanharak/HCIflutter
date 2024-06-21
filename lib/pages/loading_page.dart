import 'package:flutter/material.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(child: Row(
          children: [
            Container(
              height: 500.0,
              width: 150.0,
              color: Colors.amber,
            ),
            Container(
              height: 100.0,
              width: 150.0,
              color: Colors.red,
            ),
          ],
          ),
        ),
      ),
    );
  }
}