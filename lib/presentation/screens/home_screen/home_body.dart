import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce/core/constants/app_icons.dart';
import 'package:e_commerce/core/widgets/widgets.dart';
import 'package:e_commerce/logic/cubit/bottam_navigation_cubit.dart';
import 'package:e_commerce/models/models.dart';
import 'package:e_commerce/presentation/screens/commen/bottum_navigation_bar/bottum_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'widget/categories_containers.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 1.5.h, horizontal: 3.h),
      child: Column(children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: Colors.white,
          shadowColor: Colors.grey,
          elevation: 4,
          child: SizedBox(
            width: 94.w,
            height: 6.h,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 0.h, horizontal: 1.5.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.search_rounded),
                  SizedBox(
                    width: 2.w,
                  ),
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "What are you looking for?.."),
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.mic_none_outlined))
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 2.h,
        ),
        Row(
          children: [
            const Text(
              "Welcome ",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                  color: Colors.green),
            ),
            SvgPicture.asset(
              AppIcons.byeIcon,
              height: 5.h,
              color: Colors.redAccent,
            ),
          ],
        ),
        SizedBox(
          height: 0.5.h,
        ),
        const Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Need a helping hand today?..",
              style: TextStyle(color: Colors.grey),
            )),
        Container(
            child: CarouselSlider(
          options: CarouselOptions(
            aspectRatio: 2.5,
            enlargeCenterPage: true,
            enableInfiniteScroll: false,
            initialPage: 2,
            autoPlay: true,
          ),
          items: MainOffers.mainOffers
              .map((mainOffer) => HeroCarouselCard4MainOffer(
                    mainOffers: mainOffer,
                  ))
              .toList(),
        )),
        SizedBox(
          height: 0.5.h,
        ),
        const Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Category",
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            )),
        SizedBox(
          height: 0.5.h,
        ),
        Row(
          children: [
            CategoriesContainers(
              height: 11.h,
              text: 'Shop',
              icon: Icons.shopping_bag_outlined,
              onTap: (){
                BlocProvider.of<BottamNavigationCubit>(context).setoder(1);
              },
            ),
            SizedBox(
              width: 10.sp,
            ),
            CategoriesContainers(
              height: 11.h,
              text: 'Service',
              icon: Icons.video_settings_outlined,
              onTap: (){
                BlocProvider.of<BottamNavigationCubit>(context).setoder(3);
                
              },
            ),
          ],
        ),
        SizedBox(
          height: 10.sp,
        ),
        Row(
          children: [
            CategoriesContainers(
              height: 9.h,
              text: 'Track',
              icon: Icons.not_listed_location_outlined,
              onTap: (){},
            ),
            SizedBox(
              width: 10.sp,
            ),
            CategoriesContainers(
              height: 9.h,
              text: 'Quiz',
              icon: Icons.question_answer_outlined,
              onTap: (){},
            ),
          ],
        ),
        SizedBox(
          height: 0.5.h,
        ),
        const Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Deal of Today",
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            )),
      ]),
    );
  }
}

