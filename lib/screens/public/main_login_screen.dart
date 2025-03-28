import 'package:app_sg/screens/public/register_screen.dart';
import 'package:app_sg/screens/residentes/resi_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class MainLoginScreen extends StatelessWidget {
  const MainLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ContenidoLogin();
  }
}

class ContenidoLogin extends StatefulWidget {
  const ContenidoLogin({super.key});

  @override
  State<ContenidoLogin> createState() => _ContenidoLoginState();
}

class _ContenidoLoginState extends State<ContenidoLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   // Color del fondo, si es visible algo se hizo mal en la interfaz
      backgroundColor: Colors.red.shade400,
      body: const Stack( children: [ 
        Fondo(),
        FormularioLogin()      
        ],
      ),
    );
  }
}

class Fondo extends StatelessWidget {
  const Fondo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.blue.shade400, // Fondo azul
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 150),
          Icon(Icons.business, size: 50, color: Colors.white), // Ícono como logo
           SizedBox(height: 10),
           Text(
            "Mi Empresa Ficticia",
            style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class FormularioLogin extends StatelessWidget {
  const FormularioLogin({super.key});
  


  @override
  Widget build(BuildContext context) { 
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 450,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30)
            )
            ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text('Iniciar Sesion', 
                style: TextStyle(
                  fontSize: 30, 
                  color: Colors.black,
                  fontWeight: FontWeight.bold),),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  keyboardType: const TextInputType.numberWithOptions(decimal: false, signed: false),
                  inputFormatters: [
                  LengthLimitingTextInputFormatter(10),],
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Number',
                    icon: Icon(
                      Icons.phone_iphone_rounded,
                      color: Colors.black,
                    ),
                    contentPadding: EdgeInsets.all(20.0)
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(    
                  obscureText: true,      
                  decoration: const InputDecoration(
                    hintText: 'Password',
                    icon: Icon(Icons.password,
                              color: Colors.black,
                              ),
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.all(20.0),  
                    hintStyle: TextStyle(color: Colors.black),
                    
                  ),                   
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 20)
                ),
                onPressed: (){                        Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const RegisterScreen() )
                  );
                }, child: const Text('Sign in')),
    
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 150,vertical: 20)),
                  onPressed: (){Navigator.push(
                    context,
                     MaterialPageRoute(builder: (context) => const ResiScreen()),
                );
                }, 
                     child: const Text('Log in')),
                     
            ],
          ),
      ),
    );
  }
}