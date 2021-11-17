import 'package:e_commerce/core/constants/app_icons.dart';
import 'package:flutter/cupertino.dart';

class Items{
  final String image;
  final String imageText;

  Items({required this.image, required this.imageText});
}

class DisplayItems {
  List<Items> item = [
    Items(image: AppImage.desktop1, imageText: "Desktop"),
    Items(image: AppImage.lapTop2, imageText: "Laptop"),
    Items(image: AppImage.mobile1, imageText: "Samsung"),
    Items(image: AppImage.printer1, imageText: "Hp Printer"),
    Items(image: AppImage.projector, imageText: "Projector"),
  ];
}