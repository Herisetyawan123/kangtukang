import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kang_tukang/src/constants/collection.dart';
import 'package:kang_tukang/src/models/ppembangunan_modal.dart';

class PembangunanService {
  final collection = MyCollection.pembangunan;

  Future<List<PembangunanModel>> getAll() async {
    final data = await collection.get();
    List<PembangunanModel> pembangunan = [];
    for (QueryDocumentSnapshot<Object?> item in data.docs) {
      pembangunan
          .add(PembangunanModel.fromJson(item.data() as Map<String, dynamic>));
    }

    return pembangunan;
  }
}
