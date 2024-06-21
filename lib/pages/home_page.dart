import 'package:flutter/material.dart';
import 'package:shoestore/component/circle_logo.dart';
import 'package:shoestore/component/product_card.dart';

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
    'https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Under_armour_logo.svg/2560px-Under_armour_logo.svg.png',
    'https://www.shutterstock.com/image-vector/adidas-icon-logo-sign-label-600nw-2411345361.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/3/30/Converse_logo.svg/320px-Converse_logo.svg.png'  
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

                const SizedBox(height: 10.0),

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

                const SizedBox(height: 5.0),

                //New_Arrival
                SizedBox(
                  height: 185,
                  width: double.infinity,
                  // color: const Color.fromARGB(255, 233, 145, 145),
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('New Arrival',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            )
                          ),
                          Text('See all',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16,
                            )
                          ),
                        ],
                      ),

                      const SizedBox(height: 20),

                      Container(
                        height: 140,
                        width: 340,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5), // Shadow color
                              spreadRadius: 5, // Spread radius
                              blurRadius: 7, // Blur radius
                              offset: const Offset(0, 3), // Offset position of shadow
                            )
                          ],                          
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(33, 12, 33, 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const SizedBox(
                                width: 140,
                                height: double.infinity,
                                // color: Colors.red,
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('New Arrival',
                                        style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: 20,
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text('Nike air Jordan',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text('\$700'),
                                    ],
                                  ),
                                ),
                              ),

                              Transform.rotate(
                                angle: -25 * (3.1415927 / 180),
                                child: const SizedBox(
                                  width: 100,
                                  height: double.infinity,
                                  // color: Colors.red,
                                  child: Center(
                                    child: Image(
                                      image: NetworkImage('https://i5.walmartimages.com/asr/0a34ef4c-d1f5-4627-832f-e4125701d399.14cbe143d89f81352a894ddb0ef5d96a.jpeg')
                                      ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 19.0),
                //Popular_Shoe
                SizedBox(
                  height: 225,
                  width: double.infinity,
                  // color: Colors.pink,
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Popular Shoes',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            )
                          ),
                          Text('See all',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16,
                            )
                          ),
                        ],
                      ),

                      const SizedBox(height: 10),

                      SizedBox(
                        height: 190,
                        width: double.infinity,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: _brands.length,
                          itemBuilder: (context, index){
                            return const ProductCard();
                          }
                        ),  
                      ),
                      // ProductCard(),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ),

      //Navigate_Bar
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
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