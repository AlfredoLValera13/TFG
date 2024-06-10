import 'package:firebase_auth/firebase_auth.dart';

Future<void> registerWithEmailAndPassword(String email, String password, Map<String, dynamic> userData) async {
  try {
    UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      print('La contraseña es demasiado débil.');
    } else if (e.code == 'email-already-in-use') {
      print('Ya existe una cuenta con este correo.');
    }
  } catch (e) {
    print(e);
  }
}
