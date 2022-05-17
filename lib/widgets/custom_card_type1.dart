import 'package:flutter/material.dart';
import 'package:segundo_proyecto/theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children:  [
          const ListTile(
            leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary),
            title: Text('Soy Un Titylo'),
            subtitle: Text('hola'),
          ),
          
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                onPressed: (){}, 
                child: const Text('Cancel'),
                //style: TextButton.styleFrom(primary: AppTheme.secondary),
                ),

                TextButton(
                onPressed: (){}, 
                child: const Text('Ok')
                )
              ],
            ),
          )
        ]
        ),
    );
  }
}