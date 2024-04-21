import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseService {
  FirebaseService._();

  static final FirebaseService _instance = FirebaseService._();

  factory FirebaseService() {
    return _instance;
  }

  static final db = FirebaseFirestore.instance;
}
