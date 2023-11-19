import 'package:flutter/material.dart';
import 'package:scroll_page_view/pager/page_controller.dart';
import 'package:scroll_page_view/pager/scroll_page_view.dart';

final List<String> images = [
  "https://gratisography.com/wp-content/uploads/2022/03/gratisography-10-free-stock-photo-800x525.jpg",
  "https://gratisography.com/wp-content/uploads/2022/03/gratisography-10-free-stock-photo-800x525.jpg",
  "https://gratisography.com/wp-content/uploads/2022/03/gratisography-10-free-stock-photo-800x525.jpg",
  "https://gratisography.com/wp-content/uploads/2022/03/gratisography-10-free-stock-photo-800x525.jpg",
  "https://gratisography.com/wp-content/uploads/2022/03/gratisography-10-free-stock-photo-800x525.jpg",
];

Widget imageView(String image) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8),
    child: Card(
      child: ClipRRect(
        clipBehavior: Clip.antiAlias,
        borderRadius: BorderRadius.circular(8),
        child: Image.network(image, fit: BoxFit.cover),
      ),
    ),
  );
}

Widget imageSlider(List<String> images) {
  return SizedBox(
    height: 164,
    child: ScrollPageView(
      controller: ScrollPageController(),
      children: images.map((image) => imageView(image)).toList(),
    ),
  );
}
