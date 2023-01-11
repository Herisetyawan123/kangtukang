class LoginModel {
  LoginModel({
    this.email,
    this.password,
  });

  String? email;
  String? password;

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        email: json["email"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
      };
}
