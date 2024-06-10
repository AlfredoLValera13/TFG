import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> addOrder(String userId, Map<String, dynamic> orderData) async {
  try {
    await FirebaseFirestore.instance.collection('orders').doc(userId).set(orderData);
  } catch (e) {
  }
}
