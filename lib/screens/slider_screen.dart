import 'package:flutter/material.dart';
import 'package:segundo_proyecto/theme/app_theme.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  
  double _slideValue = 100;
  bool _sliderEnabled = true; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider and Checks'),
      ),
      body: Column(
        children: [
      
          Slider.adaptive(
            min: 50,
            max: 400,
            value: _slideValue,
            activeColor: AppTheme.primary,
            onChanged: _sliderEnabled 
            ? ( value ){
                _slideValue = value;
                setState(() {});          
              }
            : null
            ),
            // Checkbox(
            //   value: _sliderEnabled, 
            //   onChanged:  ( value ){
            //     _sliderEnabled = value ?? true;
            //     setState(() {
                  
            //     });
            //   },
            //   ),
              CheckboxListTile(
                title: const Text('Habilitar Slider'),
                activeColor: AppTheme.primary,
                value: _sliderEnabled, 
                onChanged: ( value ) => setState(() {_sliderEnabled = value ?? true;})
                ),
              SwitchListTile.adaptive(
                title: const Text('Habilitar Slider'),
                activeColor: AppTheme.primary,
                value: _sliderEnabled, 
                onChanged: ( value ) => setState(() {_sliderEnabled = value;})
              ),
              const AboutListTile(),

            Expanded(
              child: SingleChildScrollView(
                child: Image(
                  image: const NetworkImage('https://images.guitarguitar.co.uk/cdn/large/150/191004349382008f.jpg'),
                  fit: BoxFit.contain,
                  width: _slideValue,
                  ),
              ),
            ),
              const SizedBox(height: 50,)
      
        ],
      )
    );
  }
}