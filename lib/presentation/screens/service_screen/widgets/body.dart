import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:e_commerce/core/constants/app_icons.dart';
import 'package:e_commerce/core/constants/strings.dart';
import 'package:e_commerce/logic/cubit/serviceselection_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'components/app_tile_View.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'components/service_tile.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
      // physics: NeverScrollableScrollPhysics(parent:NeverScrollableScrollPhysics()),
      children: [
       
        ServiceTile(
          productFavoriteFlag: true,
          productIcon: AppImage.lapTo1,
          productStatus: false,
          productTitle: 'lenovo laptop intel i5 1dx001',
          starCount: 2,
        ),
        ServiceTile(
          productFavoriteFlag: true,
          productIcon: AppImage.mobile1,
          productStatus: true,
          productTitle: 'samsung galaxy dose 2',
          starCount: 3,
        ),
        ServiceTile(
          productFavoriteFlag: true,
          productIcon: AppImage.projector,
          productStatus: true,
          productTitle: 'BENQ projector',
          starCount: 5,
        ),
        ServiceTile(
          productFavoriteFlag: true,
          productIcon: AppImage.lapTop2,
          productStatus: false,
          productTitle: 'Hp laptop intel i5 1dx001',
          starCount: 2,
        ),
        ServiceTile(
          productFavoriteFlag: true,
          productIcon: AppImage.monitor1,
          productStatus: true,
          productTitle: 'LG monitoe 15 inch',
          starCount: 3,
        ),
        ServiceTile(
          productFavoriteFlag: true,
          productIcon: AppImage.tab1,
          productStatus: true,
          productTitle: 'lenova tab 7 inch',
          starCount: 5,
        ),
         ServiceTile(
          productFavoriteFlag: true,
          productIcon: AppImage.desktop1,
          productStatus: true,
          productTitle: 'Hp desktop intel i5 1dx001',
          starCount: 4,
        ),

      ],
    );
  }
}
