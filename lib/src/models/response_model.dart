class ResponseModel {
  ResponseModel({
    required this.status,
    required this.message,
    this.data,
  });

  bool status;
  String message;
  Map<String, dynamic>? data;

  factory ResponseModel.fromJson(Map<String, dynamic> json) => ResponseModel(
        status: json["status"],
        message: json["message"],
        data: json["data"].toJson(),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data,
      };
}
