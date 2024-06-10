import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> addFavoriteCan(String userId, Map<String, dynamic> canData) async {
  try {
    await FirebaseFirestore.instance.collection('favorites').doc(userId).collection('cans').add(canData);
    // Lata favorita agregada exitosamente
  } catch (e) {
    // Manejar errores
  }
}
