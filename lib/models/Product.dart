import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

String baseUrl() {
  return "https://topshoes.herokuapp.com/Bags";
}

List<Color> allColors = [
  Color.fromARGB(255, 210, 224, 224),
  Color(0xFFD3A984),
  Color.fromARGB(255, 115, 111, 110),
  Color(0xFFE6B398),
  Color.fromARGB(255, 197, 104, 115),
  Color.fromARGB(255, 178, 173, 173),
  Color.fromARGB(255, 115, 111, 110),
  Color.fromARGB(255, 227, 214, 200),
  Color.fromARGB(255, 183, 181, 179),
  Color(0xFFE6B398),
  Color(0xFFE6B398),
  Color.fromARGB(255, 178, 173, 173),
  Color.fromARGB(255, 210, 224, 224),
];

var allPrices = [15900, 17900, 11900, 9900, 19900, 15900];

var products = createProducts();

List<Product> createProducts() {
  List<Product> products = [];
  for (var i = 1; i <= 60; i++) {
    products.add(Product(
        id: i,
        title: "Office Code",
        price: allPrices[i % allPrices.length],
        size: 12,
        description: dummyText,
        image: "./assets/images/bag_${1 + i % 12}.png",
        color: allColors[i % allColors.length]));
  }
  return products;
}

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
