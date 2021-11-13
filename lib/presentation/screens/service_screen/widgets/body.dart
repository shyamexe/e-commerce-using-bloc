import 'package:e_commerce/core/constants/strings.dart';
import 'package:e_commerce/logic/cubit/serviceselection_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Body extends StatefulWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        BlocBuilder<ServiceselectionCubit, ServiceselectionState>(
          builder: (context, state) {
            return CupertinoSegmentedControl<int>(
              
              groupValue: state.pageValue,
              borderColor: AppColors.greenColor,
              selectedColor: AppColors.greenColor,
              pressedColor: AppColors.greenColor.withOpacity(.29),
              // padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
              children: {
                0: Text('Available Products'),
                1: Text('Service History'),
                2: Text('Open New Ticket'),
              },
              onValueChanged: (groupValue) {
                print(groupValue);

                if(state.pageValue<2){
                  BlocProvider.of<ServiceselectionCubit>(context).update();
                }
              },
            );
          },
        )
      ],
    );
  }
}
