// To parse this JSON data, do
//
//     final food = foodFromJson(jsonString);

import 'dart:convert';

Food foodFromJson(String str) => Food.fromJson(json.decode(str));

String foodToJson(Food data) => json.encode(data.toJson());

class Food {
    Food({
       required this.foodList,
       required this.categoryList,
       required this.tagList,
    });

    List<FoodList> foodList;
    List<String> categoryList;
    List<String> tagList;

    factory Food.fromJson(Map<String, dynamic> json) => Food(
        foodList: List<FoodList>.from(json["food_list"].map((x) => FoodList.fromJson(x))),
        categoryList: List<String>.from(json["category_list"].map((x) => x)),
        tagList: List<String>.from(json["tag_list"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "food_list": List<dynamic>.from(foodList.map((x) => x.toJson())),
        "category_list": List<dynamic>.from(categoryList.map((x) => x)),
        "tag_list": List<dynamic>.from(tagList.map((x) => x)),
    };
}

class FoodList {
    FoodList({
       required this.foodId,
      required  this.name,
      required  this.foodCategory,
      required  this.foodTag,
      required  this.price,
      required  this.priceSign,
      required  this.currency,
      required  this.image,
      required  this.description,
      required  this.rating,
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

    factory FoodList.fromJson(Map<String, dynamic> json) => FoodList(
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
