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
      color: Colors.grey.shade400,
      height: double.infinity,
      width: double.infinity,
    );
  }
}

class FormularioRegistroUsuario extends StatelessWidget {
  const FormularioRegistroUsuario({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Nombre'
              ),
            ),
            const SizedBox(height: 20),
            
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Telefono'),
            ),

            const SizedBox(height: 20),
            TextFormField(
              
              decoration: const InputDecoration(
                
                hintText: 'Calle'
              ),        
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: '###'
              ),
            ),
            ElevatedButton(onPressed: null, child: const Text('Enviar registro'))
          ],
        ),
      ),
    );
  }
}