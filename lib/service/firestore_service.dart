import 'package:cloud_firestore/cloud_firestore.dart';
import '../model/course.dart';

class FireStoreService {
  final Firestore _db = Firestore.instance;

  Stream<List<Course>> getCourses() {
    return _db.collection('courses').snapshots().map((snapshot) => snapshot
        .documents
        .map((document) => Course.fromJson(document.data))
        .toList());
  }
}
