import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:untitle/model/model.dart';

class Database {
  static Database instance = Database._();
  Database._();
  Stream<List<model>> getAllProductStream() {
    print('getall');
    final reference = FirebaseFirestore.instance.collection('products');
    final query = reference.orderBy('productName', descending: true);

    final snapshots = query.snapshots();

    return snapshots.map((snapshot) {
      return snapshot.docs.map((doc) {
        return model.fromMap(doc.data());
      }).toList();
    });
  }
}
