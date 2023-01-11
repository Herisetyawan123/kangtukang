import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kang_tukang/src/constants/collection.dart';
import 'package:kang_tukang/src/models/auth/login_model.dart';
import 'package:kang_tukang/src/models/auth/register_model.dart';
import 'package:kang_tukang/src/models/response_model.dart';
import 'package:kang_tukang/src/models/user_model.dart';

class AuthService {
  Future<ResponseModel> sigIn({required LoginModel loginModel}) async {
    ResponseModel response = ResponseModel(
      status: false,
      message: '',
    );
    final data = await MyCollection.users
        .where("email", isEqualTo: loginModel.email)
        .get() as QuerySnapshot<Map<String, dynamic>>;
    if (data.docs.isEmpty) {
      response.status = false;
      response.message = "Email belum terdaftar";
      return response;
    } else if (data.docs.isNotEmpty &&
        data.docs.first.data()["password"] != loginModel.password) {
      response.status = false;
      response.message = "Password yang anda masukan salah";
      return response;
    }
    // print(data.docs.first.data().toString());
    final userModel = UserModel.fromJson(data.docs.first.data());

    // token
    // ... token ...

    response.status = true;
    response.message = "Anda Berhasil Login";
    response.data = userModel.toJson();
    return response;
  }

  Future<bool> signUp({required RegisterModel registerModel}) async {
    final dataDoc = MyCollection.users.doc();
    registerModel.id = dataDoc.id;
    // form register model to user model
    UserModel user = UserModel.fromJson(registerModel.toJson());
    await dataDoc.set(user.toJson());
    return true;
  }
}
