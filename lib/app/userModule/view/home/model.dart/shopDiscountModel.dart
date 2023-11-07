import 'package:flutter/material.dart';

class Shop {
  final String name;
  final String description;
  final String imageUrl;
  final IconData icon;
  final String discount;
  final String addressUrl;
  Shop({
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.icon,
    required this.discount,
    required this.addressUrl,
  });
}
