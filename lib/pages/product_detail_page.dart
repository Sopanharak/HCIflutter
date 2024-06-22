import 'package:flutter/material.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({super.key});

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //AppBar
              Padding(
                padding: const EdgeInsets.all(20),
                child: SizedBox(
                  height: 50.0,
                  width: double.infinity,
                  // color: Colors.amber,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/nav_page');
                        },
                        child: const Icon(Icons.keyboard_arrow_left,
                          size: 38.0,
                          color: Colors.black,
                        ),
                      ),
                          
                      const Text("Nike Air Zoom",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                      const Icon(Icons.favorite,
                        size: 25.0,     
                      ),
                    ],
                  ),
                ),
              ),
          
              const SizedBox(height: 20.0),
          
              //Information
              Expanded(
                child: Column(
                  children: [
                    Container(
                      height: 400,
                      width: double.infinity,
                      color: Colors.red,
                    ),
                    Expanded(
                      child: ClipOval(
                        child: Container(
                          width: double.infinity,
                          color: Colors.pink,
                        ),
                      ),
                    ),
                  ],
                )
              ),
            ],
          ),
        )
      ),
    );
  }
}