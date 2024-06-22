import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white, // Background color
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(0.0),
                  child: Image.asset(
                    'assets/image/welcomepage.jpg',
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover, // Image fit
                  ),
                ),
              ),
            ],
          ),
          Container( // Background color for the bottom section
            padding: const EdgeInsets.symmetric(vertical: 16.0), // Vertical padding
            child: Column(
              mainAxisSize: MainAxisSize.min, // To minimize the height of the column
              children: [
                const Icon(
                  Icons.keyboard_arrow_up,
                  color: Colors.black,
                  size: 32.0,
                ),
                const SizedBox(height: 8.0), // Spacer
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, '/loading_page');
                  },
                  child: const Text(
                    'Swipe up',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}