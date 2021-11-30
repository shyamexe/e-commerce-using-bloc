import 'package:e_commerce/logic/cubit/selected_product_cubit.dart';
import 'package:e_commerce/logic/cubit/serviceselection_cubit.dart';
import 'package:e_commerce/models/owned_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:e_commerce/core/constants/strings.dart';
import 'package:e_commerce/logic/cubit/bottam_navigation_cubit.dart';
import 'package:e_commerce/presentation/screens/commen/bottum_navigation_bar/bottom_navigation.dart';
import 'package:e_commerce/presentation/screens/service_screen/widgets/service_appbar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SelectedProductCubit, SelectedProductState>(
      builder: (context, state) {
        return Scaffold(
          body: Container(
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                border: Border.all(
                  color: AppColors.greyColor,
                ),
                borderRadius: BorderRadius.circular(10)),
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: <Widget>[
                Row(
                  children: [
                    Flexible(
                      fit: FlexFit.tight,
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          ownedProducts[state.selectdItem].image,
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
                              ownedProducts[state.selectdItem].title,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: AppColors.darkBlueColor,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: AppColors.greenColor.withOpacity(.29),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(5))),
                            margin: const EdgeInsets.only(right: 8, left: 10),
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
                                        text: ownedProducts[state.selectdItem]
                                                .status
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
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Device is out of Warranty',
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: AppColors.greenColor.withOpacity(.29),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(6))),
                      ),
                      Spacer(),
                      RaisedButton(
                        color: AppColors.greenColor,
                        onPressed: () {
                          BlocProvider.of<ServiceselectionCubit>(context)
                              .singleupdate();
                        },
                        child: const Text(
                          'Add Complaint',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
                const Divider(
                  thickness: 1,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        'Service History',
                        style: TextStyle(
                          color: AppColors.greenColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            'Screen damage',
                            style: TextStyle(
                              color: AppColors.darkBlueColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          margin: const EdgeInsets.all(10),
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: AppColors.greenColor.withOpacity(.29),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6))),
                          child: Column(
                            children: [
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Ticket Status : ',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.darkBlueColor,
                                      ),
                                    ),
                                    TextSpan(
                                      text: ownedProducts[state.selectdItem]
                                              .status
                                          ? 'Solved'
                                          : 'Not Solved',
                                      style: TextStyle(
                                          color: AppColors.greenColor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: AppColors.greenColor),
                                  onPressed: () {
                                    BlocProvider.of<ServiceselectionCubit>(
                                            context)
                                        .singleupdate();
                                  },
                                  child: const Text(
                                    'Track',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            'Battary Issue',
                            style: TextStyle(
                              color: AppColors.darkBlueColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          margin: const EdgeInsets.all(10),
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: AppColors.greenColor.withOpacity(.29),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6))),
                          child: Column(
                            children: [
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Ticket Status : ',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.darkBlueColor,
                                      ),
                                    ),
                                    TextSpan(
                                      text: ownedProducts[state.selectdItem]
                                              .status
                                          ? 'Solved'
                                          : 'Not Solved',
                                      style: TextStyle(
                                          color: AppColors.greenColor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: AppColors.greenColor),
                                  onPressed: () {
                                    BlocProvider.of<ServiceselectionCubit>(
                                            context)
                                        .singleupdate();
                                  },
                                  child: const Text(
                                    'Track',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            'Over Heat',
                            style: TextStyle(
                              color: AppColors.darkBlueColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          margin: const EdgeInsets.all(10),
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: AppColors.greenColor.withOpacity(.29),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6))),
                          child: Column(
                            children: [
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Ticket Status : ',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.darkBlueColor,
                                      ),
                                    ),
                                    TextSpan(
                                      text: ownedProducts[state.selectdItem]
                                              .status
                                          ? 'Solved'
                                          : 'Not Solved',
                                      style: TextStyle(
                                          color: AppColors.greenColor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                                child: ElevatedButton(

                                  style: ElevatedButton.styleFrom(
                                      primary: AppColors.greenColor),
                                  onPressed: () {
                                    BlocProvider.of<ServiceselectionCubit>(
                                            context)
                                        .singleupdate();
                                  },
                                  child: const Text(
                                    'Track',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 45,
                ),
                const Divider(
                  thickness: 1,
                ),
                Container(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          '  Product Details',
                          style: TextStyle(
                              color: AppColors.greenColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            ownedProducts[state.selectdItem].description,
                            style: TextStyle(
                                color: AppColors.darkGreyColor, fontSize: 12),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
