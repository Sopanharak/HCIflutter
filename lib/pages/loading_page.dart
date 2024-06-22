import 'package:flutter/material.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: const Color(0xFFE7EAE9),
        ),
        child: Stack(
          children: [
            Positioned(
        left: -48,
        top:5,
        child: Image.asset(
      'assets/image/image3.png',
      width: 375,
      height: 501,
      fit: BoxFit.contain, // Use BoxFit.contain to fit the image within the specified dimensions
        ),
      ),
      
            Positioned(
              left: 150,
              top: 185,
              child: Image.asset(
                'assets/image/image2.png',
                width: 357,
                height: 501,
                fit: BoxFit.cover,
              ),
            ),
            const Positioned(
              left: 20,
              bottom: 100,
              child: SingleChildScrollView(
                // Wrap the Column with SingleChildScrollView to make it scrollable
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 144,
                      child: Text(
                        'Start Your Journey With',
                        style: TextStyle(
                          color: Color(0xFF222021),
                          fontSize: 32,
                          fontFamily: 'Andika New Basic',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Positioned(
              left: 20,
              bottom: 80,
              child: Text(
                'SneakerHub',
                style: TextStyle(
                  color: Color(0xFF434645),
                  fontSize: 24,
                  fontFamily: 'Andada Pro',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Positioned(
              left: 298,
              top: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Fashionable',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Andada Pro',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '&',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Andada Pro',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const Positioned(
              left: 302,
              top: 90,
              child: SizedBox(
                width: 98,
                child: Text(
                  'Unique Life Style',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Andada Pro',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 200,
              bottom: 20,
              child: GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, '/login_page');
                },
                child: Container(
                  width: 196,
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color(0xFF5B9EE1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Center(
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontFamily: 'Anek Bangla',
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}