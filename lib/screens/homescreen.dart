import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:pocketguardianapp/controllers/users_cont.dart';
import 'package:pocketguardianapp/models/user_model.dart';
import 'package:pocketguardianapp/screens/Balance.dart';
import 'package:pocketguardianapp/screens/settings_screen.dart';

import '../auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pocketguardianapp/screens/accountscreen.dart';
import 'package:pocketguardianapp/screens/coupondetails.dart';
import 'package:pocketguardianapp/screens/coupons.dart';

class Home extends StatefulWidget {
  Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final User? user = Auth().curretUser;
  final db = FirebaseFirestore.instance;
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final _controller = Get.put(UserController());
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: BottomNavigationBar(
            elevation: 20,
            showUnselectedLabels: true,
            currentIndex: selectedIndex,
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
              switch(index){
                case 3: Get.to(Account(index));
              }
            },
            selectedItemColor: Color(0xB73A1892),
            unselectedItemColor: Colors.grey,
            backgroundColor: Color.fromARGB(47, 0, 0, 0),
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.payment,
                  ),
                  label: "pay"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.notifications,
                  ),
                  label: "notifications"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.account_box,
                  ),
                  label: "account"),
            ]),
      ),
      backgroundColor: Color(0xFFF2F2F2),
      appBar: AppBar(
          backgroundColor: Colors.white,
          actions: [
            IconButton(
                onPressed: () {
                  Get.to(
                    SettingsScreen()
                  );
                },
                icon: Icon(color: Colors.black, Icons.settings))
          ],
          leading: Image.asset(width: 62, 'assets/images/logo.png')),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(15),
          child: FutureBuilder(
              future: _controller.getUserData(),
              builder: (context, snapshot) {
                UserModel userData = snapshot.data as UserModel;
                if (snapshot.hasData) {
                  return Column(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'hey,',
                                style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontFamily:
                                        GoogleFonts.arimaMadurai().fontFamily,
                                    fontSize: 14),
                              ),
                              Text(
                                '${userData.name}',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily:
                                      GoogleFonts.arimaMadurai().fontFamily,
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: const [
                              Text(
                                  style: TextStyle(fontWeight: FontWeight.w100),
                                  'SmartCard**0622')
                            ],
                          )
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: const [Color(0xff30d5c8), Color(0xffc8b5ff)],
                              stops: const [0.6, 1],
                              begin: Alignment.centerRight,
                              end: Alignment.centerLeft,
                            ),
                            borderRadius: BorderRadius.circular(17)),
                        width: size.width,
                        height: 120,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                margin: EdgeInsets.only(top: 10),
                                child: Column(
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                            color: Colors.white,
                                            Icons.compare_arrows_sharp)),
                                    Text(
                                      'Transfer Money',
                                      style: TextStyle(
                                        fontFamily: GoogleFonts.arimaMadurai()
                                            .fontFamily,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: VerticalDivider(
                                color: Colors.white,
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                margin: EdgeInsets.only(top: 10),
                                child: Column(
                                  children: [
                                    IconButton(
                                        onPressed: () {
                                          Get.to(() => Balance());
                                        },
                                        icon: Icon(
                                            color: Colors.white,
                                            Icons.credit_card)),
                                    Text(
                                      'Check Balance',
                                      style: TextStyle(
                                        fontFamily: GoogleFonts.arimaMadurai()
                                            .fontFamily,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Pay',
                                style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontFamily:
                                        GoogleFonts.arimaMadurai().fontFamily,
                                    fontSize: 20),
                              ),
                            ],
                          ),
                        ],
                      ),

                      //      Text(
                      //       textAlign: TextAlign.left,
                      //       'PAY',
                      //       style: TextStyle(
                      //         fontSize: 25,
                      //         fontWeight: FontWeight.bold,
                      //         fontFamily: GoogleFonts.arimaMadurai().fontFamily,
                      //         color: Colors.black,
                      //       ),
                      // ),

                      Container(
                        width: 428,
                        height: 64,
                        padding: EdgeInsets.symmetric(horizontal: 39),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 64,
                              height: 64,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 64,
                                      height: 64,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFFE1D2FD),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(17),
                                        ),
                                      ),
                                      child: IconButton(
                                          icon: Icon(Icons.phone),
                                          onPressed: () {}),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 40),
                            Container(
                              width: 64,
                              height: 64,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 64,
                                      height: 64,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFFFFE0F2),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(17),
                                        ),
                                      ),
                                      child: IconButton(
                                          icon: Icon(Icons.wifi),
                                          onPressed: () {}),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 40),
                            Container(
                              width: 64,
                              height: 64,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 64,
                                      height: 64,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFFC7E1FF),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(17),
                                        ),
                                      ),
                                      child: IconButton(
                                          icon:
                                              Icon(Icons.emoji_transportation),
                                          onPressed: () {}),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Container(
                        width: 428,
                        height: 64,
                        padding: EdgeInsets.symmetric(horizontal: 39),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 64,
                              height: 64,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 64,
                                      height: 64,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFFFFEBCA),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(17),
                                        ),
                                      ),
                                      child: IconButton(
                                          icon: Icon(Icons.school),
                                          onPressed: () {}),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 40),
                            Container(
                              width: 64,
                              height: 64,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 64,
                                      height: 64,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFFCCE4FF),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(17),
                                        ),
                                      ),
                                      child: IconButton(
                                          icon: Icon(Icons.health_and_safety),
                                          onPressed: () {}),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 40),
                            Container(
                              width: 64,
                              height: 64,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 64,
                                      height: 64,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFFE1D2FD),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(17),
                                        ),
                                      ),
                                      child: IconButton(
                                          icon: Icon(Icons.more),
                                          onPressed: () {}),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Discount Cards',
                                style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontFamily:
                                        GoogleFonts.arimaMadurai().fontFamily,
                                    fontSize: 18),
                              ),
                              Spacer(),
                              InkWell(
                                onTap: () {
                                  Get.to((context) => Coupons());
                                },
                                child: Text(
                                  'view All',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xB73A1892),
                                    fontSize: 14,
                                    fontFamily:
                                        GoogleFonts.arimaMadurai().fontFamily,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),

                      Container(
                        margin: EdgeInsets.only(top: 15),
                        width: 352,
                        height: 177,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 352,
                                height: 177,
                                decoration: ShapeDecoration(
                                  color: Color(0xFF33138C),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(17),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 20,
                              top: 142,
                              child: Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '007 000 078 351 8',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontFamily: GoogleFonts.arimaMadurai()
                                            .fontFamily,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' ',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontFamily: GoogleFonts.arimaMadurai()
                                            .fontFamily,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                                left: 206,
                                top: 23,
                                child: Image.asset(
                                    'assets/images/playing-game-4801908-4015616.png')),
                            Positioned(
                              left: 20,
                              top: 23,
                              child: Container(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Game Hub ',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontFamily: GoogleFonts.arimaMadurai()
                                            .fontFamily,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  );
                }
                else {
                  return(Center(child: CircularProgressIndicator(color:Color(0xff30d5c8) )));
                }
              }),
        ),
      ),
    );
  }
}
