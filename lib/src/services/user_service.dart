import 'dart:developer';

import 'package:kang_tukang/src/constants/collection.dart';
import 'package:kang_tukang/src/models/user_model.dart';

class UserService {
  Future<UserModel> getUserByEmail({required String email}) async {
    try {
      final data =
          await MyCollection.users.where("email", isEqualTo: email).get();
      return UserModel.fromJson(
          (data.docs.first.data() as Map<String, dynamic>));
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  Future<bool> updateUser(
      {required String userId, required UserModel userModel}) async {
    try {
      await MyCollection.users.doc(userId).update(
            userModel.toJson(),
          );
      return true;
    } catch (e) {
      log(e.toString());
      return false;
    }
  }
}
