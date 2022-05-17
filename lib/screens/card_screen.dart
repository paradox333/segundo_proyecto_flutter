import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('CardView'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),

          SizedBox(height: 15),

          CustomCardType2(imageUrl: 'https://i.pinimg.com/originals/7b/8b/da/7b8bda529f590e9f3b8d2275e832571f.jpg', imageText: 'Arte Abstracta.'),
          
          SizedBox(height: 15),

          CustomCardType2(imageUrl: 'https://wallpaperaccess.com/full/506907.jpg')

        ],
      ),
    );
  }
}

