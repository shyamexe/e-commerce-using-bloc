import 'package:e_commerce/models/owned_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:e_commerce/core/constants/strings.dart';
import 'package:e_commerce/logic/cubit/bottam_navigation_cubit.dart';
import 'package:e_commerce/presentation/screens/commen/bottum_navigation_bar/bottom_navigation.dart';
import 'package:e_commerce/presentation/screens/service_screen/widgets/service_appbar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProductDetails extends StatelessWidget {
  final int index;

  const ProductDetails({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: serviceAppbar(context),
      body: Container(
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.greyColor,
            ),
            borderRadius: BorderRadius.circular(15)),
        child: ListView(
          children: <Widget>[
            Row(
              children: [
                Flexible(
                  fit: FlexFit.tight,
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      ownedProducts[index].image,
                      width: 30.w,
                    ),
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 6),
                        child: Text(
                          ownedProducts[index].title,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: AppColors.darkBlueColor,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      
                      Container(
                                decoration: BoxDecoration(
                                    color:
                                        AppColors.greenColor.withOpacity(.29),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(5))),
                                margin:
                                    const EdgeInsets.only(right: 8, left: 10),
                                
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Text.rich(
                                      TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Product Staus : ',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: AppColors.darkBlueColor,
                                            ),
                                          ),
                                          TextSpan(
                                            text: ownedProducts[index].status
                                                ? 'Good'
                                                : 'Bad',
                                            style: TextStyle(
                                                color: AppColors.greenColor,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
      // bottomNavigationBar: bottomNavigation(),
    );
  }
}
