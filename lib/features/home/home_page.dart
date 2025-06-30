import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.primary,

      // Search bar (UI only - non-functional)
      appBar: AppBar(
        centerTitle: true,
        //backgroundColor: Colors.grey[900],

        title: IntrinsicWidth(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(bottom: 5),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.search, size: 20),
                    SizedBox(width: 4),
                    Text("Search", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.grey[500]),
                    ),
                  ],
                ),
              ),
              Container(
                height: 1,
                width: 250,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ],
          ),
        ),

      ),

      // Continue Reading
      body: Column(
        children: [
          Padding(padding: EdgeInsets.symmetric(horizontal: 70, vertical: 10)),
          Text("Continue", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
        ],
      ),

      // Reading Goal

      );
  }
}
