import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
   
  final lista = const['Super Smash', 'Megaman', 'Final Fantasy VII'];

  const ListView2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Segunda aplicación"),
      ),
      body: ListView.separated(
        itemCount: lista.length,
        itemBuilder: (context, i) => ListTile(
          title: Text(lista[i]), trailing: const Icon(Icons.arrow_forward_ios, color: Colors.indigo,),
          onTap: (
          ){},
        ),
        separatorBuilder: (_, __) => const Divider(), 
      )
    );
  }
}

