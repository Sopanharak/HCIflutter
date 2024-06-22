import 'package:flutter/material.dart';

class SizedButton extends StatelessWidget {
  final String sizeNumber;
  const SizedButton({super.key, required this.sizeNumber});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 50,
        width: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color.fromARGB(255, 212, 171, 171),
        ),
        child: Center(child: 
          Text(sizeNumber,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),
          )
        ),
      ),
    );
  }
}