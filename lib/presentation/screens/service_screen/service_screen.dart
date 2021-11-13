import 'package:e_commerce/core/constants/app_icons.dart';
import 'package:e_commerce/core/constants/strings.dart';
import 'package:e_commerce/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:e_commerce/presentation/screens/service_screen/widgets/service_appbar.dart';

class ServiceScreen extends StatelessWidget {
  const ServiceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: serviceAppbar(context),
      body: ListView(
        children: [
          CupertinoSegmentedControl<int>(
            
            borderColor: AppColors.greenColor,
            selectedColor: AppColors.greenColor,
            pressedColor: AppColors.greenColor.withOpacity(.29),
            // padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
            children: {
              0: Text('Available Products'),
              1: Text('Service History'),
              2: Text('Open New Ticket'),
            },
            onValueChanged: (groupValue){
              print(groupValue);
            },
          )
        ],
      ),
    );
  }
}
