import 'package:e_commerce/core/constants/app_icons.dart';
import 'package:e_commerce/core/constants/strings.dart';
import 'package:e_commerce/logic/cubit/serviceselection_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

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

                
                BlocProvider.of<ServiceselectionCubit>(context).update();
                
              },
            );
          },
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          decoration: BoxDecoration(border: Border.all(color: AppColors.greyColor)),
          // width: 2.w,    //It will take a 20% of screen width
          height:10.h,  
          child: Row(
            children: [
              Image.asset(AppImage.lapTo1,width:100,height:100)
            ],
          ),  //It will take a 30% of screen height
    )

      ],
    );
  }
  }






// class Body extends StatefulWidget {
//   const Body({
//     Key? key,
//   }) : super(key: key);

//   @override
//   State<Body> createState() => _BodyState();
// }

// class _BodyState extends State<Body> {
  
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: [
//         BlocBuilder<ServiceselectionCubit, ServiceselectionState>(
//           builder: (context, state) {
//             return CupertinoSegmentedControl<int>(
              
//               groupValue: state.pageValue,
//               borderColor: AppColors.greenColor,
//               selectedColor: AppColors.greenColor,
//               pressedColor: AppColors.greenColor.withOpacity(.29),
//               // padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
//               children: {
//                 0: Text('Available Products'),
//                 1: Text('Service History'),
//                 2: Text('Open New Ticket'),
//               },
//               onValueChanged: (groupValue) {
//                 print(groupValue);

                
//                 BlocProvider.of<ServiceselectionCubit>(context).update();
                
//               },
//             );
//           },
//         )
//       ],
//     );
//   }
// }
