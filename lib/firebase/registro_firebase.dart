import 'package:firebase_auth/firebase_auth.dart';

Future<void> registerWithEmailAndPassword(String email, String password, Map<String, dynamic> userData) async {
  try {
    UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    // Agrega el usuario a la base de datos o maneja el userData aquí
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      print('The password provided is too weak.');
    } else if (e.code == 'email-already-in-use') {
      print('The account already exists for that email.');
    }
  } catch (e) {
    print(e);
  }
}
