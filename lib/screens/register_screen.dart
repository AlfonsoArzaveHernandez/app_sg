import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ContenidoRegisterScreen();
  }
}

class ContenidoRegisterScreen extends StatefulWidget {
  const ContenidoRegisterScreen({super.key});

  @override
  State<ContenidoRegisterScreen> createState() => _ContenidoRegisterScreenState();
}

class _ContenidoRegisterScreenState extends State<ContenidoRegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold( 
      body: Stack(
        children: [
          FondoRegistrarUsuario(),
          FormularioRegistroUsuario()
        ]
      )
    );
  }
}

class FondoRegistrarUsuario extends StatelessWidget {
  const FondoRegistrarUsuario({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.shade200,
      height: double.infinity,
      width: double.infinity,
    );
  }
}

class FormularioRegistroUsuario extends StatelessWidget {
  const FormularioRegistroUsuario({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      
      child: Container(
        
        height: 650,
        width: 350,
        color: Colors.pink.shade50,        
        child: Column(
          children: [
            const SizedBox(height: 20),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Nombre'
              ),
            ),
            const SizedBox(height: 20),
            
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Telefono'),
            ),
                
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 200,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Calle',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                //const SizedBox(width: 8), 
                
                SizedBox(
                  width: 70, 
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: '###', 
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),
            const ElevatedButton(onPressed: null, child: Text('Enviar registro'))
          ],
        ),
      )
    );
  }
}