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
      // physics: NeverScrollableScrollPhysics(parent:NeverScrollableScrollPhysics()),
      children: [
        
        
      
           ServiceTile(),
           ServiceTile(),
           ServiceTile(),
           ServiceTile(),
           ServiceTile(),
           ServiceTile(),
           ServiceTile(),
           ServiceTile(),
           ServiceTile(),
           ServiceTile()
        
        
        
       
      ],
    );
  }
}
