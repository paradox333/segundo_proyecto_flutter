import 'package:flutter/material.dart';
import 'package:segundo_proyecto/theme/app_theme.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      appBar: AppBar(
        title: const Text('Stan Lee'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: const CircleAvatar(
              child: Text('SL', style: TextStyle(color: Colors.white)),
              backgroundColor: Colors.green,
              
            ),
          )
        ],
      ),
      body: const Center(
         child: CircleAvatar(
           maxRadius: 100,
           backgroundImage: NetworkImage('https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fbeta.ems.ladbiblegroup.com%2Fs3%2Fcontent%2F592137095cd0ec3b54dd1fc69e27eada.jpg&f=1&nofb=1'),
         ),
      ),
    );
  }
}