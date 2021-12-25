// To parse this JSON data, do
//
//     final pokedex = pokedexFromJson(jsonString);

import 'dart:convert';

List<Pokedex> pokedexFromJson(String str) =>
    List<Pokedex>.from(json.decode(str).map((x) => Pokedex.fromJson(x)));

String pokedexToJson(List<Pokedex> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Pokedex {
  Pokedex({
    required this.foodId,
    required this.name,
    required this.foodCategory,
    required this.foodTag,
    required this.price,
    required this.priceSign,
    required this.currency,
    required this.image,
    required this.description,
    required this.rating,
  });

  int foodId;
  String name;
  List<String> foodCategory;
  List<String> foodTag;
  int price;
  String priceSign;
  String currency;
  String image;
  String description;
  double rating;

  factory Pokedex.fromJson(Map<String, dynamic> json) => Pokedex(
        foodId: json["food_id"],
        name: json["name"],
        foodCategory: List<String>.from(json["food_category"].map((x) => x)),
        foodTag: List<String>.from(json["food_tag"].map((x) => x)),
        price: json["price"],
        priceSign: json["price_sign"],
        currency: json["currency"],
        image: json["image"],
        description: json["description"],
        rating: json["rating"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "food_id": foodId,
        "name": name,
        "food_category": List<dynamic>.from(foodCategory.map((x) => x)),
        "food_tag": List<dynamic>.from(foodTag.map((x) => x)),
        "price": price,
        "price_sign": priceSign,
        "currency": currency,
        "image": image,
        "description": description,
        "rating": rating,
      };
}
