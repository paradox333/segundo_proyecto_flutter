import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
   
  final lista = const['Super Smash', 'Megaman', 'Final Fantasy VII'];

  const ListViewScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Segunda aplicación"),
      ),
      body: ListView(
        children:  [

          ...lista.map(
            (games) =>  ListTile( title: Text(games), trailing: const Icon(Icons.arrow_forward_ios ),
            )
          ).toList()
        ],
      )
    );
  }
}

