import 'package:flutter/material.dart';
import 'package:segundo_proyecto/theme/app_theme.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({Key? key, required this.imageUrl, this.imageText}) : super(key: key);

  final String imageUrl;
  final String? imageText;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
        ),
      elevation: 10,
      shadowColor: Colors.white,
      child: Column(
      children: [

          FadeInImage(
          placeholder: const AssetImage('assets/jar-loading.gif'), 
          image: NetworkImage(imageUrl),
          width: double.infinity,
          height: 250,
          fit: BoxFit.cover,
          fadeInDuration: const Duration(milliseconds: 300),
          ),
          if(imageText != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 15),
              child: Text(imageText ?? 'No title.')
              )
      ]
      ),
    );
  }
}