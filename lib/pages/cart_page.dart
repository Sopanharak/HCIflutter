import 'package:flutter/material.dart';
import 'package:shoestore/component/product_card.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {

  // Sample data for list
  List<String> items = List.generate(10, (index) => "Item $index");

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
                SizedBox(
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

                      const Text("Your Cart",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                      const Icon(Icons.more_vert,
                        size: 25.0,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20.0),

                //Item
                Expanded(
                  child: ListView(
                    children: [
                      Wrap(
                        spacing: 8.0, // gap between adjacent items
                        runSpacing: 12.0, // gap between lines
                        children: items.map((item) {
                          return const ProductCard();
                        }).toList(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}