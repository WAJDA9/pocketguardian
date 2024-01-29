import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pocketguardianapp/models/coupons.dart';
import 'package:pocketguardianapp/repositories/couponrep.dart';
import 'package:pocketguardianapp/screens/coupondetails.dart';
import 'package:pocketguardianapp/widgets/input_field_widget.dart';

class Coupons extends StatefulWidget {
  const Coupons({super.key});

  @override
  State<Coupons> createState() => _CouponsState();
}

class _CouponsState extends State<Coupons> {
  final TextEditingController _controller = TextEditingController();
  final TextEditingController _imcontroller = TextEditingController();
  var couprep = CouponRep();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xCC30D5C8),
        onPressed: (){
          _showDialog();
        },
      child: Icon(Icons.add,color: Colors.white,),
      ),
      backgroundColor: Color(0xFFF2F2F2),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Coupons',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontFamily: GoogleFonts.arimaMadurai().fontFamily,
                fontWeight: FontWeight.w700,
              ),
            ),
             GestureDetector(
              onLongPress: () {
                Get.to( MaterialPageRoute(builder: (context)=> Coup()));
              },
               child: Container(
                
                       margin:  EdgeInsets.only(top: 15),
                       width: 352,
                       height: 177,
                       clipBehavior: Clip.antiAlias,
                       decoration:  BoxDecoration(),
                       child: Stack(
                       children: [
                Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                        width: 352,
                        height: 177,
                        decoration: ShapeDecoration(
                            color:  Color(0xFF33138C),
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
                                        fontFamily: GoogleFonts.arimaMadurai().fontFamily,
                                        fontWeight: FontWeight.w400,
                                    ),
                                ),
                                TextSpan(
                                    text: ' ',
                                    style: TextStyle(
                                        color: Colors.white,
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
                    left: 206,
                    top: 23,
                    child: Image.asset('assets/images/playing-game-4801908-4015616.png')
                ),
                Positioned(
                    left: 20,
                    top: 23,
                    child: Container(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:  [
                                Text(
                                    'Game Hub ',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontFamily: GoogleFonts.arimaMadurai().fontFamily,
                                        fontWeight: FontWeight.w900,
                                    ),
                                ),
                            ],
                        ),
                    ),
                ),
                       ],
                       ),
                   ),
             ),
       Container(
          margin:  EdgeInsets.only(top: 15),
          width: 352,
          height: 177,
          clipBehavior: Clip.antiAlias,
          decoration:  BoxDecoration(),
          child: Stack(
          children: [
              Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                      width: 352,
                      height: 177,
                      decoration: ShapeDecoration(
                          color:  Color(0xCC30D5C8),
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
                                      fontFamily: GoogleFonts.arimaMadurai().fontFamily,
                                      fontWeight: FontWeight.w400,
                                  ),
                              ),
                              TextSpan(
                                  text: ' ',
                                  style: TextStyle(
                                      color: Colors.white,
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
                  left: 206,
                  top: 23,
                  child: Image.asset('assets/images/ZARA.png')
              ),
              Positioned(
                  left: 20,
                  top: 23,
                  child: Container(
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:  [
                              Text(
                                  'ZARA 30 %',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontFamily: GoogleFonts.arimaMadurai().fontFamily,
                                      fontWeight: FontWeight.w900,
                                  ),
                              ),
                          ],
                      ),
                  ),
              ),
          ],
          ),
      ),
      Container(
                
                       margin:  EdgeInsets.only(top: 15),
                       width: 352,
                       height: 177,
                       clipBehavior: Clip.antiAlias,
                       decoration:  BoxDecoration(),
                       child: Stack(
                       children: [
                Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                        width: 352,
                        height: 177,
                        decoration: ShapeDecoration(
                            color:   Color(0xFF7945FF),
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
                                        fontFamily: GoogleFonts.arimaMadurai().fontFamily,
                                        fontWeight: FontWeight.w400,
                                    ),
                                ),
                                TextSpan(
                                    text: ' ',
                                    style: TextStyle(
                                        color: Colors.white,
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
                    left: 206,
                    top: 23,
                    child: Image.asset('assets/images/image 17.png')
                ),
                Positioned(
                    left: 20,
                    top: 23,
                    child: Container(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:  [
                                Text(
                                    'KFC 25% ',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontFamily: GoogleFonts.arimaMadurai().fontFamily,
                                        fontWeight: FontWeight.w900,
                                    ),
                                ),
                            ],
                        ),
                    ),
                ),
                       ],
                       ),
                   ),
          ],
        ),
      ),
    );
  }
  
  void _showDialog() {
    showDialog(context: context, 
    builder:(BuildContext context){
      return AlertDialog(
       content: Column(
         children: [
           TextFieldWidget(hintText: "name",obscureText: false, onchanged: (value){}, controller: _controller),
           TextFieldWidget(hintText: "image",obscureText: false, onchanged: (value){}, controller: _imcontroller),
         ],
         
       ), 
      actions: [
        TextButton(onPressed: (){
          CouponM coup = new CouponM(name: _controller.text, image: _imcontroller.text);
          couprep.createCoupon(coup);
          Navigator.pop(context);
        }, 
        child: Text("Add coupon"))
      ],
      );
    }
    
    );

  }
}
