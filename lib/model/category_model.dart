class CategoriesModel {
  final String categoryId;
  final String categoryName;
  final String categoryImage;
  final dynamic createdAt;
  final dynamic updatedAt;

  CategoriesModel({
    required this.categoryId,
    required this.categoryName,
    required this.categoryImage,
    required this.createdAt,
    required this.updatedAt,
  });

  // Serialize the CategoriesModel instance to a JSON map
  Map<String, dynamic> toJson() {
    return {
      'categoryId': categoryId,
      'categoryName': categoryName,
      'categoryImg': categoryImage,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }

  // Create a CategoriesModel instance from a JSON map
  factory CategoriesModel.fromJson(Map<String, dynamic> json) {
    return CategoriesModel(
      categoryId: json['categoryId'],
      categoryName: json['categoryName'],
      categoryImage: json['categoryImg'],
      createdAt: json['createdAt'].toString(),
      updatedAt: json['updatedAt'].toString(),
    );
  }
}