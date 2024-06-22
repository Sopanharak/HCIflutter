import 'package:flutter/material.dart';
import 'package:shoestore/component/sized_button.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({super.key});

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {

  // final List<String> _sizes = List.generate(20, (index) => '${index + 1}');
  // final List<String> _sizes = [for (int i = 1; i <= 20; i++) '$i'];


  final List<String> _sizes = [
    '20', '21', '22', '23', '24', '25', '26', '27', '28', '29', 
    '30', '31', '32', '33', '34', '35', '36', '37', '38', '39', '40'
  ];
  
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
          
              const SizedBox(height: 10.0),
          
              //Information
              Expanded(
                child: Column(
                  children: [
                    SizedBox(
                      height: 400,
                      width: double.infinity,
                      // color: Colors.red,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 70,
                              height: double.infinity,
                              // color: Colors.amber,
                              child: Column(
                                children: [
                                  //Sized_Selection
                                  const Text('Size',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17
                                    ),
                                  ),
                                  Expanded(
                                    child: ListView.builder(
                                      scrollDirection: Axis.vertical,
                                      itemCount: _sizes.length,
                                      itemBuilder: (context, index){
                                        return SizedButton(sizeNumber: _sizes[index]);
                                      }
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            
                            const SizedBox(width: 20),

                            const Expanded(
                              //Shoe_Type
                              child: Image(image: 
                                NetworkImage('https://t3.ftcdn.net/jpg/06/10/27/02/360_F_610270204_4caPs2ahuPak18PVqDgXU38eb4Wz8Nnu.jpg'),
                                // fit: BoxFit.cover,
                                // height: 300,
                                // width: 310,
                              ),
                            )
                          ],
                        )
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        width: double.infinity,
                        // color: Colors.pink,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text("\$1000",
                                    style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  Container(
                                    height: 50,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 5.0,
                                          color: Colors.black.withOpacity(0.5),
                                          offset: const Offset(2.0, 2.0),
                                        )
                                      ],
                                    ),
                                    child: const Center(
                                      child: Text('In stock',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),

                              const SizedBox(height: 15),

                              // Color_Seletion
                              Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),

                                  const SizedBox(width: 10),

                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),

                                  const SizedBox(width: 10),

                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),

                                  const SizedBox(width: 10),

                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ],
                              ),

                              //Lorem
                              const Text("data")

                            ],
                          ),
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

// class CustomClipperPath extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     double w = size.width;
//     double h = size.height;

//     final path = Path();
//     // (0., 0) // 1. Point
//     path.lineTo(0, h); // 2. Point
//     path.quadraticBezierTo(
//       w * 0.5, // 3. Point 
//       h - 100, // 3. Point
//       w, // 4. Point
//       h, // 4. Point
//     ); 
//     path.lineTo(w, 0); // 5. Point

//     path.close();


//     return path;
//   }

//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
//     throw UnimplementedError();
//   }
  
// }

