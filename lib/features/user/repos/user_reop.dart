import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserRepository {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<void> createProfile() async {
    // create profile
  }
  // get profile
  // update avatar
  // update bio
  // update link
}

final userRepo = Provider(
  (ref) => UserRepository(),
);
