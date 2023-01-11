import 'package:kang_tukang/src/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Session {
  Session._();

  static void setSession(
      {required SharedPreferences session, required UserModel userModel}) {
    session.setString("id", userModel.id as String);
    session.setString("nama", userModel.nama as String);
    session.setString("address", userModel.address as String);
    session.setString("email", userModel.email as String);
    session.setString("phone", userModel.phone as String);
    session.setString("password", userModel.password as String);
  }

  static UserModel getSession({
    required SharedPreferences session,
  }) {
    final user = UserModel(
      id: session.getString("id") ?? '',
      address: session.getString("address") ?? '',
      email: session.getString("email") ?? '',
      nama: session.getString("nama") ?? '',
      password: session.getString("password") ?? '',
      phone: session.getString("phone") ?? '',
    );
    return user;
  }

  static void clear({required SharedPreferences session}) async {
    await session.clear();
  }
}
