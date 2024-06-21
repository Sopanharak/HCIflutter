import 'package:flutter/material.dart';
import 'package:shoestore/component/circle_logo.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List  _brands = [
    'Nike',
    'Puma',
    'UNDER ARMOUR',
    'Adidas',
    'Converse'
  ];

  final List _brandLogo = [
    'https://logos-world.net/wp-content/uploads/2020/04/Nike-Logo.png',
    'https://1000logos.net/wp-content/uploads/2021/04/Puma-logo.png',
    'https://i.pinimg.com/736x/96/38/49/9638499b85a4bfff985a1482c263734c.jpg',
    'https://cdn.freebiesupply.com/logos/thumbs/2x/adidas-4-logo.png',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLF1boTlepWqZTP2XKnxf1pAaMB3rhnn_YIQ&s',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //AppBar
                const SizedBox(
                  height: 50.0,
                  width: double.infinity,
                  // color: Colors.amber,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.menu,
                        size: 25.0,
                        color: Colors.black,
                      ),

                      Text("SNEAKER HUB",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),

                      Icon(Icons.shopping_cart,
                        size: 25.0,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20.0),

                //SearchBar
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    prefixIcon:const Icon(Icons.search),
                    label: const Text("browse here"),
                  ),
                ),

                const SizedBox(height: 20.0),

                //Category
                SizedBox(
                  height: 90,
                  // color: Colors.amber,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _brands.length,
                    itemBuilder: (context, index){
                      return CircleLogo(brandLogo: _brandLogo[index]);
                    }
                  ),
                ),

                //New_Arrival

                //Popular_Shoe

                //Navigate_Bar
              ],
            ),
          ),
        )
      ),
    );
  }
}