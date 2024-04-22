import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_masterclass_advanced_app/models/character_model.dart';

class FireStoreService {
  static final ref = FirebaseFirestore.instance
      .collection('characters')
      .withConverter(
          fromFirestore: Character.fromFirestore,
          toFirestore: (Character character, _) => character.toFirestore());

  //create data
  static Future<void> addCharacterToDb(Character character) async {
    await ref.doc(character.id).set(character);
  }

  //read data
  static Future<QuerySnapshot<Character>> getCharactesFromDb() {
    return ref.get();
  }
  // update data

  //delete data
}
