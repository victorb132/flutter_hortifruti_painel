class ProductModel {
  int id;
  String name;
  num price;
  String unitOfMeasure;
  String? description;
  String image;

  bool get isKg => unitOfMeasure == 'KG';

  ProductModel({
    required this.id,
    required this.name,
    required this.price,
    required this.unitOfMeasure,
    required this.image,
    this.description,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        id: json['id'],
        name: json['name'],
        price: double.tryParse(json['price']) ?? 0,
        unitOfMeasure: json['unity'],
        image: json['image'],
        description: json['description'],
      );
}
