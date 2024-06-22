import 'package:flutter/material.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Sample data for list
    List<String> items = List.generate(20, (index) => "Item $index");
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Left to Right, Top to Bottom'),
        ),
        body: ListView(
          children: [
            Wrap(
              spacing: 8.0, // gap between adjacent items
              runSpacing: 12.0, // gap between lines
              children: items.map((item) {
                return Container(
                  padding: const EdgeInsets.all(8.0),
                  color: Colors.blue[100],
                  child: Text(item),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}