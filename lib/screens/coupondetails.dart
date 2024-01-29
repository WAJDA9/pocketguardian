import 'package:flutter/material.dart';

class Coup extends StatefulWidget {
  const Coup({super.key});

  @override
  State<Coup> createState() => _CoupState();
}

class _CoupState extends State<Coup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF2F2F2),
        body: Center(
          child: Container(
            padding: EdgeInsets.fromLTRB(7, 3, 7,7),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/images/kfc-logo.png'),
                    Text(
                      '25% OFF\nKFC',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Text(
    'Get 25% at your next KFC buy ',
    textAlign: TextAlign.center,
    style: TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w700,
    ),
),
SizedBox(
    width: 249,
    child: Text.rich(
        TextSpan(
            children: [
                TextSpan(
                    text: 'Reedeamble at all KFC restaurants in Tunisia.\n',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                    ),
                ),
                TextSpan(
                    text: '\n',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                    ),
                ),
                TextSpan(
                    text: 'Not valid with any other discounts and promotions.\n',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                    ),
                ),
                TextSpan(
                    text: '\n',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                    ),
                ),
                TextSpan(
                    text: 'No cash value.',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                    ),
                ),
            ],
        ),
    ),
),
Image.asset('assets/images/qr_img 1.png'),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Icon(Icons.ios_share),
    Text(
    'Valid until 03 March 2022',
    style: TextStyle(
        color: Colors.black.withOpacity(0.30000001192092896),
        fontSize: 10,
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w500,
    ),
),
Icon(Icons.info)
  ],
)
              ],
            ),
            width: 342,
            height: 530,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/Subtractcoup.png'),
                fit: BoxFit.fill,
              ),
              
            ),
          ),
        ));
  }
}
