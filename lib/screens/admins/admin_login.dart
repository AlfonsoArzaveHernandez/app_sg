import 'package:flutter/material.dart';

class FormularioLoginAdmins extends StatelessWidget {
  const FormularioLoginAdmins({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 20,),
          const Text('Administrador',
          style: TextStyle(
                fontSize: 20, 
                color: Colors.black,
                fontWeight: FontWeight.bold),),
          TextFormField(decoration: const InputDecoration(
            hintText: 'Phone number'
          ),),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'password',
            ),
          )
        ],
      ),
    );
  }
}