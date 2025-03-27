import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> registerUser({
    required String name,
    required String phoneNumber,
    required String street,
    required int houseNumber,
    required String password,
    required bool isAdmin,

  }) async {
    try {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(email: "$phoneNumber@dummy.com", password: password);

      String userId = userCredential.user!.uid;
      await _firestore.collection("users").doc(userId).set({
        "name": name,
        "phone_number": phoneNumber,
        "street": street,
        "house_number": houseNumber,
        "password": password, // No es seguro almacenar contraseñas en texto plano
        "role": isAdmin, // true = Admin, false = Residente
      });
        } on Exception catch (e) {
          throw Exception("Error al registrar usuario: $e");
        }
          }
} 