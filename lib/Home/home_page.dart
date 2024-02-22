import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ant_design.dart';
import 'package:iconify_flutter/icons/bi.dart';
import 'package:iconify_flutter/icons/icomoon_free.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pkk_project/Helper/themes.dart';
import 'package:pkk_project/QuizPage/quiz_page.dart';

import '../models/model.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  List<Country> countries = countryModel();

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        backgroundColor: Colors.white,
        children: [
          SpeedDialChild(
            elevation: 3,
            child: Iconify(MaterialSymbols.layers),
            label: 'Quiz',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => QuizPage()),
              );
            },
          ),
          SpeedDialChild(
            elevation: 3,
            child: Iconify(IcomoonFree.user),
            label: 'User'
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                height: screenSize.height * 0.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  color: backgroundColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    )
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: screenSize.height * 0.03,
                        bottom: screenSize.height * 0.015,
                        left: screenSize.width * 0.080,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Hello", style: helloUserText),
                          Text("Admin", style: helloUserText),
                          SizedBox(height: screenSize.height * 0.05),
                          Text(
                            "Today is a good day \n to learn something new",
                            style: welcomeText,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        right: screenSize.width * 0.1,
                        bottom: screenSize.height * 0.1,
                      ),
                      height: screenSize.height * 0.13,
                      width: screenSize.height * 0.13,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: Offset(3, 3),
                          )
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          "assets/profile_photo.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: screenSize.height * 0.05),
                width: screenSize.width * 0.8,
                height: screenSize.height * 0.06,
                decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.7),
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: Offset(0, 5),
                    )
                  ],
                ),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: screenSize.width * 0.05),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Find your course ...",
                        style: searchText,
                      ),
                      Icon(Iconsax.search_normal, color: Colors.grey, size: 30)
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 50),
                height: screenSize.height * 0.59,
                width: screenSize.width * 0.99,
                decoration: BoxDecoration(
                  color: backgroundColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 5,
                      offset: Offset(1, 0),
                    )
                  ],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: screenSize.height * 0.03,
                          left: screenSize.width * 0.19
                      ),
                      child: Text('Top Languages', style: titleText,),
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 100,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: countries.length,
                        itemBuilder: (context, index) {
                          Country country = countries[index];
                          return Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            width: 100,
                            child: Card(
                              surfaceTintColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                              elevation: 3,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 70,
                                    height: 80,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage(country.flagCountry),
                                        fit: BoxFit.cover,
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 2,
                                          blurRadius: 4,
                                          offset: Offset(2, 3),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('See all', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                        SizedBox(width: 5),
                        Icon(Icons.arrow_right, size: 35,),
                      ],
                    ),
                    Center(
                      child: Container(
                        height: 180,
                        margin: EdgeInsets.only(bottom: 50,),
                        child: ListView.builder(
                          itemCount: countries.length,
                          itemBuilder: (context, index) {
                            Country country = countries[index];
                            return Padding(
                              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                              child: Card(
                                surfaceTintColor: Colors.white,
                                elevation: 3,
                                child: Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 10, bottom: 10, left: 20),
                                      width: 80,
                                      height: 80,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                          image: AssetImage(country.flagCountry),
                                          fit: BoxFit.cover,
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 2,
                                            blurRadius: 5,
                                            offset: Offset(0, 3),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 10, width: 30,),
                                    Text(
                                      country.name,
                                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
