import 'package:e_commerce/core/constants/app_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'components/service_tile.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      // physics: NeverScrollableScrollPhysics(parent:NeverScrollableScrollPhysics()),
      children: [
       
        ServiceTile(
          productFavoriteFlag: false,
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
          productFavoriteFlag: false,
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
          productFavoriteFlag: false,
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
