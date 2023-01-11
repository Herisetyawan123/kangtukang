class PembangunanModel {
  PembangunanModel({
    this.title,
    this.description,
    this.assets,
  });

  String? title;
  String? description;
  String? assets;

  factory PembangunanModel.fromJson(Map<String, dynamic> json) =>
      PembangunanModel(
        title: json["title"],
        description: json["description"],
        assets: json["assets"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "description": description,
        "assets": assets,
      };
}
