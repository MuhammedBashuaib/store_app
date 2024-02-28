class RatingModel {
  final num rate;
  final int cout;

  RatingModel({required this.rate, required this.cout});

  factory RatingModel.fromJson(Map<String, dynamic> json) {
    return RatingModel(
      rate: json["rate"],
      cout: json["count"],
    );
  }
}
