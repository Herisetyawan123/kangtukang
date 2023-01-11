class UserModel {
  String? id;
  String? address;
  String? email;
  String? nama;
  String? password;
  String? phone;

  UserModel({
    this.id,
    this.address,
    this.email,
    this.nama,
    this.password,
    this.phone,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json["id"],
        nama: json["nama"],
        email: json["email"],
        phone: json["phone"],
        address: json["address"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "address": address,
        "email": email,
        "nama": nama,
        "password": password,
        "phone": phone,
      };
}
