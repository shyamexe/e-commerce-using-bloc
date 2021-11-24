import 'package:e_commerce/core/constants/strings.dart';
import 'package:flutter/material.dart';

class ReuseCardContainer extends StatelessWidget {
  final String image;
  final String headText;
  final String price;
  final String mrp;
  const ReuseCardContainer(
      {Key? key,
      required this.image,
      required this.headText,
      required this.mrp,
      required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 120,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          
          Radius.circular(10),
        ),
        border: Border.all(width: 1,color: AppColors.greyColor),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: SizedBox(
                height: 40,
                child: Image.asset(
                  image,
                  fit: BoxFit.contain,
                )),
          ),
          Text(
            headText,
            style: TextStyle(fontSize: 25, color: AppColors.darkBlueColor),
          ),
          Text(
            price,
            style: TextStyle(fontSize: 18, color: AppColors.ligthBlue),
          ),
          Text(
            mrp,
            style: TextStyle(
                fontSize: 18,
                color: AppColors.darkGreyColor.withOpacity(.80),
                decoration: TextDecoration.lineThrough),
          ),
        ],
      ),
    );
  }
}
