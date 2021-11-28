import 'package:e_commerce/core/constants/strings.dart';
import 'package:flutter/material.dart';

class NewTicket extends StatelessWidget {
  const NewTicket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.greyColor,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}