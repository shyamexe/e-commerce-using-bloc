import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CategoriesContainers extends StatelessWidget {
  double height;
  String text;
  IconData icon;
  void Function()? onTap;

  CategoriesContainers(
      {Key? key, required this.height, required this.text, required this.icon, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 4,
      color: Colors.lightGreen.shade700,
      child: InkWell(
        child: SizedBox(
          width: 41.w,
          height: height,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                icon,
                color: Colors.white,
                size: 32.sp,
              ),
              Text(
                text,
                style: TextStyle(color: Colors.white, fontSize: 18.sp),
              )
            ],
          ),
        ),
        onTap: onTap,
        focusColor: Colors.green[200],
      ),
    );
  }
}