import 'package:e_commerce/core/constants/strings.dart';
import 'package:flutter/material.dart';

class CustomListView extends StatelessWidget {
  final String productName;
  final String image;
  const CustomListView(
      {Key? key, required this.productName, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Color(0xFFE5F3EA),
      ),
      child: Row(
        children: [
          SizedBox(
            height: 50,
            width: 50,
            child: Image.asset(
              image,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            productName,
            style: TextStyle(fontSize: 20, color: AppColors.greenColor),
          ),
        ],
      ),
    );
  }
}
