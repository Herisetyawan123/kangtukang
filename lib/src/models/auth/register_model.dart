class RegisterModel {
  String id;
  String address;
  String email;
  String nama;
  String password;
  String passwordConf;
  String phone;

  RegisterModel({
    this.id = '',
    required this.address,
    required this.email,
    required this.nama,
    required this.password,
    required this.passwordConf,
    required this.phone,
  });

  factory RegisterModel.fromJson(Map<String, dynamic> json) => RegisterModel(
        id: json["id"],
        address: json["address"],
        email: json["email"],
        nama: json["nama"],
        password: json["password"],
        phone: json["phone"],
        passwordConf: json["passwordConf"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "address": address,
        "email": email,
        "nama": nama,
        "password": password,
        "phone": phone,
      };

  bool checkPassword() {
    return password == passwordConf;
  }
}
