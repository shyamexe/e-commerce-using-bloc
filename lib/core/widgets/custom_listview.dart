import 'package:e_commerce/core/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomListView extends StatelessWidget {
  final String productName;
  final String image;
  const CustomListView(
      {Key? key, required this.productName, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 3),
      width: 40.w,
      height: 14.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        // color: Color(0xFFE5F3EA),
        color: AppColors.greenColor.withOpacity(.29),
      ),
      child: Row(
        mainAxisAlignment:MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 12.w,
            width: 12.w,
            child: Padding(
              padding: const EdgeInsets.all(2),
              child: Image.asset(
                image,
                fit: BoxFit.contain
                ,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Text(
              productName,
              style: TextStyle(fontSize: 20, color: AppColors.greenColor),
            ),
          ),
        ],
      ),
    );
  }
}
