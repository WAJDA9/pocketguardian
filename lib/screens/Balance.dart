import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';

class Balance extends StatefulWidget {
  const Balance({super.key});

  @override
  State<Balance> createState() => _BalanceState();
}

class _BalanceState extends State<Balance> {
  int activeIndex=0;
  final icons = [
    Icon(Icons.health_and_safety_outlined),
    Icon(Icons.emoji_transportation),
    Icon(Icons.food_bank_outlined),
    Icon(Icons.travel_explore)
  ];
  final labels = ['Medical', 'Transport', 'Food', 'Travel'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          elevation: 0,
        onPressed: () {Navigator.pop(context);},
      child: Icon(Icons.arrow_back_ios,color: Color(0xCC30D5C8),),
      backgroundColor: Colors.transparent,
      
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      backgroundColor: Color(0xFFF2F2F2),
      body: Container(
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Text(
            'Account Balance',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontFamily: GoogleFonts.arimaMadurai().fontFamily,
              fontWeight: FontWeight.w700,
            ),
          ),
          Container(
            width: 306,
            height: 100,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    width: 306,
                    height: 100,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 8,
                  top: 0,
                  child: SizedBox(
                    width: 63,
                    height: 43,
                    child: Text(
                      'card',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 8,
                  top: 50,
                  child: SizedBox(
                    width: 63,
                    height: 43,
                    child: Text(
                      'Net value',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 49,
                  child: Container(
                    width: 306,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 0.50,
                          strokeAlign: BorderSide.strokeAlignCenter,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 83,
                  top: 0,
                  child: Transform(
                    transform: Matrix4.identity()
                      ..translate(0.0, 0.0)
                      ..rotateZ(1.57),
                    child: Container(
                      width: 100,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 0.50,
                            strokeAlign: BorderSide.strokeAlignCenter,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 296.04,
                  top: 34.27,
                  child: Transform(
                    transform: Matrix4.identity()
                      ..translate(0.0, 0.0)
                      ..rotateZ(3.12),
                    child: Container(
                      width: 17.73,
                      height: 16.02,
                      decoration: ShapeDecoration(
                        color: Colors.black,
                        shape: StarBorder.polygon(sides: 3),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 95,
                  top: 9,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '007 000 078 351 8',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: GoogleFonts.arimaMadurai().fontFamily,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: ' ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: GoogleFonts.arimaMadurai().fontFamily,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 117,
                  top: 60,
                  child: Text(
                    '35670,653 DT',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: GoogleFonts.arimaMadurai().fontFamily,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          CarouselSlider.builder(
              options: CarouselOptions(height: 240,
              autoPlay: true,
             onPageChanged: (index, reason) {
               setState(() {
                 activeIndex=index;
               });
             },
              ),
              itemCount: icons.length,
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) {
                final icon = icons[itemIndex];
                return buildW(icon, itemIndex);
              }),
        ]),
      ),
    );
  }

  Widget buildW(Icon icon, int itemIndex) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      margin: EdgeInsets.only(top: 15),
      width: 255,
      height: 255,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: CircleBorder(),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        icon,
        Text(
          labels[itemIndex],
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(
          height: 35,
        ),
        Text(
          '450,569 DT',
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontFamily: GoogleFonts.arimaMadurai().fontFamily,
            fontWeight: FontWeight.w700,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: activeIndex==0? Colors.grey : Colors.black,
                fontSize: 70,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              '.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: activeIndex==1? Colors.grey : Colors.black,
                fontSize: 70,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              '.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: activeIndex==2? Colors.grey : Colors.black,
                fontSize: 70,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              '.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: activeIndex==3? Colors.grey : Colors.black,
                fontSize: 70,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
              ),
            ),

          ],
        )
      ]),
    );
  }
}
