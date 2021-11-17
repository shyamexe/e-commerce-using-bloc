import 'package:e_commerce/core/constants/app_icons.dart';
import 'package:e_commerce/core/constants/strings.dart';
import 'package:e_commerce/logic/cubit/serviceselection_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

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
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration:
              BoxDecoration(border: Border.all(color: AppColors.greyColor)),
          // width: 2.w,    //It will take a 20% of screen width
          height: 10.h,
          child: Row(
            children: [
              Image.asset(
                AppImage.lapTo1,
                width: 100,
                height: 100,
              )
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration:
              BoxDecoration(border: Border.all(color: AppColors.greyColor)),
          
          child:  Container(
          height: 135,
          margin: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(16.0),
              topRight: Radius.circular(16.0),
            ),
          ),
          child: Row(
            children: [
              Container(
                width: 130,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppImage.desktop1),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Flexible(
                            child: Text(
                              'Thoshiba Tecra A50-D',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 15),
                            ),
                          ),
                          Material(
                            color: Colors.transparent,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(32.0),
                              // splashColor: ,
                              onTap: () {},
                              child: Container(
                                height: 50,
                                width: 50,
                                child: const Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                  size: 22,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text('Price:'),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '45055',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text('Sub Total:'),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '450000',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color:
                                    // themeChange.darkTheme
                                    //     ? Colors.brown.shade900
                                    //:
                                    Theme.of(context).accentColor),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Ships Free',
                            style: TextStyle(
                                color:
                                    // themeChange.darkTheme
                                    // ? Colors.brown.shade900
                                    // :
                                    Theme.of(context).accentColor),
                          ),
                          Spacer(),
                          Material(
                            color: Colors.transparent,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(4.0),
                              // splashColor: ,
                              onTap: () {},
                              child: Container(
                                child: Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Icon(
                                    Icons.remove,
                                    color: Colors.red,
                                    size: 22,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Card(
                            elevation: 12,
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.12,
                              padding: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                gradient: LinearGradient(colors: [
                                  Colors.purple,
                                  Colors.pink,
                                ], stops: [
                                  0.0,
                                  0.7
                                ]),
                              ),
                              child: Text(
                                '154',
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Material(
                            color: Colors.transparent,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(4.0),
                              // splashColor: ,
                              onTap: () {},
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.green,
                                    size: 22,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
        ),

        //!ddd

       
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
