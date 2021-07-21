class PostModel {
  String id, plantName, address, phoneNumber, information, remark;
  bool like, dislike;
  List<String> status, size;

  PostModel(
      {this.id,
      this.plantName,
      this.address,
      this.phoneNumber,
      this.information,
      this.remark,
      this.like,
      this.dislike,
      this.status,
      this.size});
  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(
      plantName: json['plantName'],
      id: json['_id'],
      address: json['address'],
      phoneNumber: json['phoneNumber'],
      information: json['information'],
      remark: json['remark'],
      like: json['like'],
      dislike: json['dislike'],
      status: json['status'],
      size: json['size'],
    );
  }
}
