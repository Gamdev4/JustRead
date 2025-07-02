import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,

      // Continue Reading
      body: Column(
        children: [
          Padding(padding: EdgeInsets.symmetric(horizontal: 70, vertical: 10)),
          Text("Write", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
        ],
      ),



    );
  }
}
