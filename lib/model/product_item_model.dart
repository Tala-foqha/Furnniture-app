// model/product_item_model.dart


import 'package:flutter/material.dart';

class FurnitureModel {
  final String id;
  final String name;
  final String imageUrl;
  final double price;
  final double oldPrice;
  final double discount;
  final double rating;
  final int reviews;
  final List<Color> colors;
  final String description;
  int quantity = 1; 

  FurnitureModel({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.oldPrice,
    required this.discount,
    required this.rating,
    required this.reviews,
    required this.colors,
    required this.description,
  });


  void increaseProduct() => quantity++;


  void decreasingProduct() {
    if (quantity > 1) {
      quantity--;
    }
  }

  /// إنشاء كائن من JSON
  factory FurnitureModel.fromJson(Map<String, dynamic> json) {
    return FurnitureModel(
      id: json['id'],
      name: json['name'],
      imageUrl: json['imageUrl'],
      price: json['price'].toDouble(),
      oldPrice: json['oldPrice'].toDouble(),
      discount: json['discount'].toDouble(),
      rating: json['rating'].toDouble(),
      reviews: json['reviews'],
      colors: (json['colors'] as List)
          .map((color) => Color(int.parse(color)))
          .toList(),
      description: json['description'],
    )..quantity = json['quantity'] ?? 1; 
  }


  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'imageUrl': imageUrl,
      'price': price,
      'oldPrice': oldPrice,
      'discount': discount,
      'rating': rating,
      'reviews': reviews,
      'quantity': quantity,
      'colors': colors.map((color) => color.value.toString()).toList(),
      'description': description,
    };
  }
}

  List<FurnitureModel>furniture=[
    FurnitureModel(id: '1', name: 'EKERÖ', 
    imageUrl: 'assets/images/sofa.png',
     price:230.00 , 
     oldPrice: 512.58,
      discount: 45,
       rating:4.9 ,
        reviews:456 ,
  
         colors:[] ,
        description: ''),

         FurnitureModel(
          id: '2', 
          name: 'STRANDMON', 
    imageUrl: 'assets/images/greysofa.png',
     price:274.13, 
     oldPrice: 856.60,
      discount: 45,
       rating:4.8 ,
        reviews:128 ,
      
         colors:[] ,
        description: ''),

         FurnitureModel(
          id: '3', 
          name: 'PLATTLÄNS', 
    imageUrl: 'assets/images/image 17.png',
     price:24.13, 
     oldPrice:69.99,
      discount: 45,
       rating:4.8 ,
        reviews:128,
         colors:[] ,
        description: ''),

        
         FurnitureModel(
          id: '4', 
          name: 'MALM', 
    imageUrl: 'assets/images/malam.png',
     price:50.99, 
     oldPrice:69.99,
      discount: 45,
       rating:4.9 ,
        reviews:256,
         colors:[] ,
        description: ''),
        



  ];
