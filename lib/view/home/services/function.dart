import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toplulugum/view/home/model.dart/comunityNoticeModel.dart';
import 'package:toplulugum/view/home/model.dart/shopDiscountModel.dart';

final List<CommunityModel> communityData = [
  CommunityModel(
    communityName: 'Topluluk 1',
    announcement: 'Bu topluluğun duyurusu 1',
  ),
  CommunityModel(
    communityName: 'Topluluk 2',
    announcement: 'Bu topluluğun duyurusu 2',
  ),
  CommunityModel(
    communityName: 'Topluluk 3',
    announcement: 'Bu topluluğun duyurusu 3',
  ),
];
final List<String> imageUrls = [
  'https://gratisography.com/wp-content/uploads/2022/03/gratisography-10-free-stock-photo-800x525.jpg',
  'https://gratisography.com/wp-content/uploads/2022/03/gratisography-10-free-stock-photo-800x525.jpg',
  'https://gratisography.com/wp-content/uploads/2022/03/gratisography-10-free-stock-photo-800x525.jpg',
  'https://gratisography.com/wp-content/uploads/2022/03/gratisography-10-free-stock-photo-800x525.jpg',
  'https://gratisography.com/wp-content/uploads/2022/03/gratisography-10-free-stock-photo-800x525.jpg',
  'https://gratisography.com/wp-content/uploads/2022/03/gratisography-10-free-stock-photo-800x525.jpg',
  'https://gratisography.com/wp-content/uploads/2022/03/gratisography-10-free-stock-photo-800x525.jpg',
];

List<Shop> shopList = [
  Shop(
      name: "Koala Cafe",
      description: "Tüm ürünlerde indirim yapılacaktır",
      imageUrl:
          "https://gratisography.com/wp-content/uploads/2022/03/gratisography-10-free-stock-photo-800x525.jpg",
      icon: CupertinoIcons.right_chevron,
      addressUrl: "asd",
      discount: "%20"),
  Shop(
      name: "Dükkan 2",
      description: "Açıklama 2",
      imageUrl:
          "https://gratisography.com/wp-content/uploads/2022/03/gratisography-10-free-stock-photo-800x525.jpg",
      icon: CupertinoIcons.right_chevron,
      addressUrl: "",
      discount: "%20"),
  Shop(
      name: "Dükkan 3",
      description: "Açıklama 3",
      imageUrl:
          "https://gratisography.com/wp-content/uploads/2022/03/gratisography-10-free-stock-photo-800x525.jpg",
      icon: CupertinoIcons.right_chevron,
      addressUrl: "",
      discount: "%20"),
  Shop(
      name: "Dükkan 3",
      description: "Açıklama 3",
      imageUrl:
          "https://gratisography.com/wp-content/uploads/2022/03/gratisography-10-free-stock-photo-800x525.jpg",
      icon: Icons.store,
      addressUrl: "",
      discount: "%20"),
  Shop(
      name: "Dükkan 3",
      description: "Açıklama 3",
      imageUrl:
          "https://gratisography.com/wp-content/uploads/2022/03/gratisography-10-free-stock-photo-800x525.jpg",
      icon: Icons.store,
      addressUrl: "",
      discount: "%20"),
];
final List<String> images = [
  "https://gratisography.com/wp-content/uploads/2022/03/gratisography-10-free-stock-photo-800x525.jpg",
  "https://gratisography.com/wp-content/uploads/2022/03/gratisography-10-free-stock-photo-800x525.jpg",
  "https://gratisography.com/wp-content/uploads/2022/03/gratisography-10-free-stock-photo-800x525.jpg",
  "https://gratisography.com/wp-content/uploads/2022/03/gratisography-10-free-stock-photo-800x525.jpg",
  "https://gratisography.com/wp-content/uploads/2022/03/gratisography-10-free-stock-photo-800x525.jpg",
];
