import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
        //   title: const Text('Background'),
        //   centerTitle: true,
        // ),

        body: SafeArea(
          child: Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://preview.redd.it/any-cool-sneaker-recommendations-for-wide-feet-v0-aswfqm06dvqb1.jpg?auto=webp&s=a261b772cf33387f981c473407268913b447536d'
                ),
                fit: BoxFit.cover,
              ),
            ),
          
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('SneakerHub',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    height: 5, fontSize: 70,
                  ),
                ),
                Text('Weclome',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                Text('To',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                Text('SneakerHub',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}