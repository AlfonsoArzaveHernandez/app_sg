import 'package:flutter/material.dart';

class NuevaVisitaScreen extends StatelessWidget {
  const NuevaVisitaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade400,
      body: ContenidoNuevaVisita()
    );
  }
}

class ContenidoNuevaVisita extends StatefulWidget {
  const ContenidoNuevaVisita({super.key});

  @override
  State<ContenidoNuevaVisita> createState() => _ContenidoNuevaVisitaState();
}

class _ContenidoNuevaVisitaState extends State<ContenidoNuevaVisita> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Stack(children: [
          FondoNuevaVisita(),
          FormularioNuevaVisita()
        ],)
      ),
    );
  }
}

class FondoNuevaVisita extends StatelessWidget {
  const FondoNuevaVisita({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.shade400,
    );
  }
}

class FormularioNuevaVisita extends StatelessWidget {
  const FormularioNuevaVisita({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}