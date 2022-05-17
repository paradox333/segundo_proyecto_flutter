import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputScreen extends StatelessWidget {
   
  const InputScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name' : '',
      'last_name'  : '',
      'email'      : '',
      'password'   : '',
      'role'       : ''
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
         child:  Padding(
           padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
           child: Form(
             key: myFormKey,
             child: Column(
               children: [
                 CustomInputField( labelText: 'Nombre', hintText: 'Nombre de usuario', formProperty: 'first_name', formValues: formValues,) ,
                 const SizedBox(height: 30),
           
                 CustomInputField( labelText: 'Apellido', hintText: 'Apellido del usuario', formProperty: 'last_name', formValues: formValues) ,
                 const SizedBox(height: 30),
           
                 CustomInputField(labelText: 'Correo', hintText: 'Correo del usuarios', keyboardtype: TextInputType.emailAddress, formProperty: 'email', formValues: formValues,),
                 const SizedBox(height: 30),
           
                 CustomInputField( labelText: 'Contraseña', hintText: 'Contraseña del usuario', obscureText: true, formProperty: 'password', formValues: formValues,) ,
                 const SizedBox(height: 30),

                 DropdownButtonFormField<String>(
                   value: 'Admin',
                   items: const [
                     DropdownMenuItem(value: 'Admin', child: Text('Admin'),),
                     DropdownMenuItem(value: 'Superuser', child: Text('Superuser'),),
                     DropdownMenuItem(value: 'Developer', child: Text('Developer'),),
                     DropdownMenuItem(value: 'Jr Developer', child: Text('Jr Developer'),)
                   ], 
                   onChanged: ( value ) {
                     formValues['role'] = value ?? 'Admin';
                   }
                   ),
                 
                 const SizedBox(height: 10),
           
                 ElevatedButton(
                   child: const SizedBox(
                     width: double.infinity,
                     child: Center(child: const Text('Guardar'))
                   ),
                   onPressed: () {
                     FocusScope.of(context).requestFocus( FocusNode() );
                     if( !myFormKey.currentState!.validate()){
                        print('formulario no valido');
                        return;
                     }
                     print(formValues);
                   }, 
                   )
               ],
               ),
           ),
           ),
      )
    );
  }
}

