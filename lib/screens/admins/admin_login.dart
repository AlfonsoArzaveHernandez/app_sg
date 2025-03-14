import 'package:flutter/material.dart';


class AdminLoginScreen extends StatelessWidget {
  const AdminLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class ContenidoAdminLogin extends StatefulWidget {
  const ContenidoAdminLogin({super.key});

  @override
  State<ContenidoAdminLogin> createState() => _ContenidoAdminLoginState();
}

class _ContenidoAdminLoginState extends State<ContenidoAdminLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hola Usuario'),
        centerTitle: true,
        backgroundColor: Colors.green,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25))
          ),),
      body: const Stack(
        children: [
          FormularioLoginAdmins()
        ],
      ),
    );
  }
}

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