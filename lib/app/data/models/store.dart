import 'package:flutter_hortifruti_painel/app/data/models/category.dart';
import 'package:flutter_hortifruti_painel/app/data/models/payment_method.dart';
import 'package:flutter_hortifruti_painel/app/data/models/shipping_by_city.dart';

class StoreModel {
  int id;
  String name;
  String? image;
  bool isOnline;
  List<CategoryModel> categories;
  List<ShippingByCityModel> shippingByCity;
  List<PaymentMethodModel> paymentMethods;

  StoreModel({
    required this.id,
    required this.name,
    this.image,
    required this.isOnline,
    required this.categories,
    required this.shippingByCity,
    required this.paymentMethods,
  });

  factory StoreModel.fromJson(Map<String, dynamic> json) => StoreModel(
        id: json['id'],
        name: json['name'],
        image: json['logo'],
        isOnline: json['online'] == 1,
        categories: json['categories'] == null
            ? []
            : List<CategoryModel>.from(json['categories']
                .map((product) => CategoryModel.fromJson(product))),
        shippingByCity: json['cities'] == null
            ? []
            : List<ShippingByCityModel>.from(json['cities']
                .map((city) => ShippingByCityModel.fromJson(city))),
        paymentMethods: json['supply_payments'] == null
            ? []
            : List<PaymentMethodModel>.from(json['supply_payments'].map(
                (paymentMethod) => PaymentMethodModel.fromJson(paymentMethod))),
      );
}
