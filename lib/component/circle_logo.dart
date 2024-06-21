import 'package:flutter/material.dart';

class CircleLogo extends StatelessWidget {

  final String brandLogo;
  const CircleLogo({super.key, required this.brandLogo});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7),
      child: Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 5.0,
            color: Colors.black.withOpacity(0.5),
            offset: const Offset(2.0, 2.0),
          )
        ],
        shape: BoxShape.circle,
        color: Colors.white,
        ),
        child: ClipOval(
          child: Center(
            child: Image(
              image: NetworkImage(brandLogo),
              // fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}