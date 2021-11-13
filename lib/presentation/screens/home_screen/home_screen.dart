import 'package:e_commerce/core/constants/app_icons.dart';
import 'package:e_commerce/presentation/screens/home_screen/widgets/home_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:e_commerce/core/constants/strings.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppbar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 400,
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 4.0,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                  child: Row(
                    children: [
                      Icon(Icons.search_rounded),
                      SizedBox(width: 15,),
                      const Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "What are you looking for?.."),),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          AppIcons.barCodeIcon,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              SizedBox(
                height: 50,
                child: Row(
                  children: [
                    const Text("Welcome", style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 35, color: Colors.green
                    ),),
                    SvgPicture.asset(AppIcons.byeIcon,color: Colors.redAccent,),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                  child: Text("Need a helping hand today?..", style: TextStyle(color: Colors.grey),)),
              SizedBox(height: 25,),
              Container(
                height: 140,
                width: 500,
                decoration: BoxDecoration(
                  color: Colors.indigo[900],
                  borderRadius: BorderRadius.circular(15),)
              ),
              SizedBox(height: 25,),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text("Catogory", style: TextStyle(color: Colors.green,
                      fontSize: 20, fontWeight: FontWeight.bold),)),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10),)
                    ),
                  ),
                  SizedBox(width: 15,),
                  Expanded(
                    child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.green[200],
                          borderRadius: BorderRadius.circular(10),)
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.green[200],
                          borderRadius: BorderRadius.circular(10),)
                    ),
                  ),
                  SizedBox(width: 15,),
                  Expanded(
                    child: Container(
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.green[200],
                          borderRadius: BorderRadius.circular(10),)
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25,),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text("Offers & New", style: TextStyle(color: Colors.green,
                      fontSize: 20, fontWeight: FontWeight.bold),)),
              SizedBox(height: 15,),
              Row(
                children: [
                  InkWell(
                    onTap: (){},
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                      height: 40,
                        decoration: BoxDecoration(
                          color: Colors.green,
                            border: Border.all(color: Colors.green.shade200),
                          borderRadius: BorderRadius.circular(13),),
                      child: Text("Trending", style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold
                      ),),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
