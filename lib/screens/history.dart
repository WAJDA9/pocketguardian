import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        colors: [Color(0xcc30d5c8), Color(0xff8fcaf9)],
        stops: [0, 1],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(6, 30, 6, 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.white,
                        )),
                    Text(
                      'payment history',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.800000011920929),
                        fontSize: 20,
                        fontFamily: GoogleFonts.arimaMadurai().fontFamily,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.menu,
                          color: Colors.white,
                        )),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 18),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  color: Colors.white,
                ),
                width: size.width - 40,
                height: 800,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin:
                            const EdgeInsets.symmetric(vertical: 10, horizontal: 9),
                        child: Text(
                          textAlign: TextAlign.left,
                          'spendings',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontFamily: GoogleFonts.arimaMadurai().fontFamily,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Container(
                        height: 120,
                        margin: const EdgeInsets.fromLTRB(4, 5, 0, 10),
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          physics: const AlwaysScrollableScrollPhysics(),
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 7),
                              child: const Center(
                                  child: Icon(
                                color: Colors.white,
                                Icons.shopping_bag_outlined,
                                size: 50,
                              )),
                              width: 168,
                              height: 105,
                              decoration: ShapeDecoration(
                                color: const Color(0xFF7945FF),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(17),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 7),
                              child: const Center(
                                  child: Icon(
                                color: Colors.white,
                                Icons.apple,
                                size: 50,
                              )),
                              width: 168,
                              height: 105,
                              decoration: ShapeDecoration(
                                color: const Color(0xFFFF71D6),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(17),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 7),
                              child: const Center(
                                  child: Icon(
                                color: Colors.white,
                                Icons.phone,
                                size: 50,
                              )),
                              width: 168,
                              height: 105,
                              decoration: ShapeDecoration(
                                color: const Color(0xFFF2E682),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(17),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 7),
                              child: const Center(
                                  child: Icon(
                                color: Colors.white,
                                Icons.shopping_bag_outlined,
                                size: 50,
                              )),
                              width: 168,
                              height: 105,
                              decoration: ShapeDecoration(
                                color: const Color(0xFF7945FF),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(17),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: Container(
                          margin: const EdgeInsets.only(top: 14),
                          child: Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(left: 6),
                                width: 42,
                                height: 42,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 42,
                                        height: 42,
                                        decoration: const ShapeDecoration(
                                          color: Color(0xFFF247D2),
                                          shape: OvalBorder(),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 11,
                                      top: 14,
                                      child: Container(
                                        width: 20,
                                        height: 14,
                                        decoration: const ShapeDecoration(
                                          color: Color(0xFFFFDBFF),
                                          shape: StarBorder.polygon(
                                            sides: 3,
                                            pointRounding: 0.5,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    'Your expenses have increased by 5.693DT \ncompared to the previous month.',
                                    softWrap: true,
                                  ),
                                  Text(
                                    'Financial analysis >',
                                    style: TextStyle(
                                      fontFamily:
                                          GoogleFonts.arimaMadurai().fontFamily,
                                      color: const Color(0xFFF247D2),
                                    ),
                                  )
                                ],
                              )
                            ],
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                          ),
                          width: 346,
                          height: 111,
                          decoration: ShapeDecoration(
                            color: const Color(0x1CFF77D5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(17),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        textAlign: TextAlign.left,
                        'spendings',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontFamily: GoogleFonts.arimaMadurai().fontFamily,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        width: size.width - 55,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 50),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    child: const Icon(Icons.food_bank_rounded,
                                        color: Colors.white),
                                    width: 45,
                                    height: 47,
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFF7945FF),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(17),
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        'The HOOD Rest',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontFamily: GoogleFonts.arimaMadurai()
                                              .fontFamily,
                                          fontWeight: FontWeight.w500,
                                          height: 1.35,
                                        ),
                                      ),
                                      Text(
                                        '22.09.2022   16:30',
                                        style: TextStyle(
                                          color: Colors.black
                                              .withOpacity(0.20000000298023224),
                                          fontSize: 15,
                                          fontFamily: GoogleFonts.arimaMadurai()
                                              .fontFamily,
                                          fontWeight: FontWeight.w400,
                                          height: 1.35,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Text(
                                    '-31.00 DT',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 22,
                                      fontFamily: 'Arima Madurai',
                                      fontWeight: FontWeight.w700,
                                      height: 0.97,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                             Container(
                              margin: EdgeInsets.only(bottom: 50),
                               child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    child: const Icon(Icons.gamepad_outlined,
                                        color: Colors.white),
                                    width: 45,
                                    height: 47,
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFFFF71D6),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(17),
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        'Game Center',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontFamily: GoogleFonts.arimaMadurai()
                                              .fontFamily,
                                          fontWeight: FontWeight.w500,
                                          height: 1.35,
                                        ),
                                      ),
                                      Text(
                                        '22.09.2022   16:30',
                                        style: TextStyle(
                                          color: Colors.black
                                              .withOpacity(0.20000000298023224),
                                          fontSize: 15,
                                          fontFamily: GoogleFonts.arimaMadurai()
                                              .fontFamily,
                                          fontWeight: FontWeight.w400,
                                          height: 1.35,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Text(
                                    '-15.00 DT',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 22,
                                      fontFamily: 'Arima Madurai',
                                      fontWeight: FontWeight.w700,
                                      height: 0.97,
                                    ),
                                  ),
                                ],
                                                         ),
                             ),
                             Container(
                              margin: EdgeInsets.only(bottom: 50),
                               child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    child: const Icon(Icons.compare_arrows_outlined,
                                        color: Colors.white),
                                    width: 45,
                                    height: 47,
                                    decoration: ShapeDecoration(
                                      color: Colors.blue.shade100,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(17),
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        'Transfer',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontFamily: GoogleFonts.arimaMadurai()
                                              .fontFamily,
                                          fontWeight: FontWeight.w500,
                                          height: 1.35,
                                        ),
                                      ),
                                      Text(
                                        '22.09.2022   16:30',
                                        style: TextStyle(
                                          color: Colors.black
                                              .withOpacity(0.20000000298023224),
                                          fontSize: 15,
                                          fontFamily: GoogleFonts.arimaMadurai()
                                              .fontFamily,
                                          fontWeight: FontWeight.w400,
                                          height: 1.35,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Text(
                                    '-50.00 DT',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 22,
                                      fontFamily: 'Arima Madurai',
                                      fontWeight: FontWeight.w700,
                                      height: 0.97,
                                    ),
                                  ),
                                ],
                                                         ),
                             )
                          ],
                        ),
                      )
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
