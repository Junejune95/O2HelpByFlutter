class RegionModel {
  String id, name;

  RegionModel({this.id, this.name});
  factory RegionModel.fromJson(Map<String, dynamic> json) {
    return RegionModel(
      name: json['name'],
      id: json['_id'],
    );
  }
}
