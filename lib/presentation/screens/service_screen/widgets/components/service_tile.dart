import 'package:e_commerce/core/constants/app_icons.dart';
import 'package:e_commerce/core/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ServiceTile extends StatelessWidget {
  const ServiceTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration:
          BoxDecoration(border: Border.all(color: AppColors.greyColor)),
      // width: 2.w,    //It will take a 20% of screen width
      height: 100,
      child: Row(
        children: [
          Flexible(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset(
                AppImage.tab1,
              ),
            ),
          ),
          Flexible(
              flex: 2,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
                child: Column(
                  children: [
                    Flexible(
                      flex: 1,
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Galaxy Tab Tab A7 lite (WiFi)',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: AppColors.darkBlueColor,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          IconButton(
                            color: Colors.red,
                            splashColor: Colors.transparent,
                            onPressed: () {},
                            icon: Icon(Icons.favorite),
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    Flexible(
                      flex: 1,
                      child: Row(
                        children: [
                          RatingBarIndicator(
                            rating: 3,
                            itemBuilder: (context, index) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            itemCount: 5,
                            itemSize: 15,
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                  color:
                                      AppColors.greenColor.withOpacity(.29),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(5))),
                              margin:
                                  const EdgeInsets.only(right: 8, left: 10),
                              height: 50,
                              width: 100,
                              child:  Center(
                                child: Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Product Staus : ',
                                        style: TextStyle(
                                          color: AppColors.darkBlueColor,

                                        ),
                                      ),
                                      TextSpan(
                                        text: 'Good',
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
              ))
        ],
      ),
    );
  }
}
