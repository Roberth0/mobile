import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseServices {
  final CollectionReference productsCollection =
      FirebaseFirestore.instance.collection('products');

  Future getProduts() async {
    return await productsCollection.get();
  }

  Stream<QuerySnapshot?> get products {
    return productsCollection.snapshots();
  }
}
