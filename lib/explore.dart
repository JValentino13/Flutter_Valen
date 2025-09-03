import 'package:flutter/material.dart';
import 'menu.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:  NavigationValen(
        OnItemSelected: (index) {
          Navigator.pop(context);
          },
          ), //Connect Sidebar
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'Explore', 
          style: TextStyle(
            fontWeight: FontWeight.bold),
          ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 15, left: 0),
            child: Row(
              children: [
                const Icon(
                    Icons.search,
                    size: 28,
                    color: Colors.black,
                    weight: 800,
                    ),

                IconButton(
                  icon: const Icon(
                    Icons.person,
                    size: 28,
                    color: Colors.black,
                    weight: 800,
                    ),
                  onPressed: (){
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}