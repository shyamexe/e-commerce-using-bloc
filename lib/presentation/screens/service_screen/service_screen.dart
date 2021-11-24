import 'package:e_commerce/core/constants/app_icons.dart';
import 'package:e_commerce/core/constants/strings.dart';
import 'package:e_commerce/logic/cubit/serviceselection_cubit.dart';
import 'package:e_commerce/main.dart';
import 'package:e_commerce/presentation/screens/service_screen/widgets/body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:e_commerce/presentation/screens/service_screen/widgets/service_appbar.dart';

class ServiceScreen extends StatelessWidget {
  const ServiceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: serviceAppbar(context),
      body: Body(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.navigate_next_rounded,size: 30,),
        backgroundColor: AppColors.greenColor,
        onPressed: () {
          BlocProvider.of<ServiceselectionCubit>(context).singleupdate();     
        },
      ),
    );
  }
}
