import 'package:firebase_auth/firebase_auth.dart';

Future<void> registerWithEmailAndPassword(String email, String password, Map<String, dynamic> userData) async {
  try {
    UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
    } else if (e.code == 'email-already-in-use') {
    }
  } catch (e) {
  }
}
