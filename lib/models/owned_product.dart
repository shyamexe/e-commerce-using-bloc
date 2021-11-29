
import 'package:e_commerce/core/constants/app_icons.dart';

class OwnedProduct {
   String title,image,description;
   bool status,productFlag;
   double star;
   int? id;
   
  OwnedProduct({
    required this.title,
    required this.image,
    required this.description,
    required this.status,
    required this.productFlag,
    required this.star,
    this.id,
   
  });
}

List<OwnedProduct> ownedProducts= [
  OwnedProduct(
    id: 1,
    image: AppImage.desktop1,
    title: 'HP desktop i5 10th gen',
    description: dummyText,
    star: 4,
    productFlag: true,
    status: true, 
  ),
  OwnedProduct(
    id: 2,
    image: AppImage.lapTo1,
    title: 'Lenova Laptop i7 11th gen',
    description: dummyText,
    star: 3,
    productFlag: false,
    status: false,
  ),
  OwnedProduct(
    id: 3,
    image: AppImage.lapTop2,
    title: 'HP laptop i5 9th gen black',
    description: dummyText,
    star: 3,
    productFlag: true,
    status: true, 
  ),
  OwnedProduct(
    id: 4,
    image: AppImage.mobile1,
    title: 'Galaxy dose 2 2/16gb white',
    description: dummyText,
    star: 4,
    productFlag: false,
    status: true, 
  ),
  OwnedProduct(
    id: 5,
    image: AppImage.monitor1,
    title: 'ACER monitor 15 inch',
    description: dummyText,
    star: 2,
    productFlag: true,
    status: true, 
  ),
  OwnedProduct(
    id: 6,
    image: AppImage.printer1,
    title: 'EPSON colour printer',
    description: dummyText,
    star: 1,
    productFlag: false,
    status: false, 
  ),
  OwnedProduct(
    id: 5,
    image: AppImage.projector,
    title: 'BENQ projecter',
    description: dummyText,
    star: 1,
    productFlag: false,
    status: true, 
  ),
  OwnedProduct(
    id: 2,
    image: AppImage.tab1,
    title: 'LENOVO tab 7 3/64gb black',
    description: dummyText,
    star: 1,
    productFlag: false,
    status: true,
  ),
];
String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";