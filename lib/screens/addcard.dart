import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pocketguardianapp/screens/Details.dart';
import 'package:pocketguardianapp/screens/Scancard.dart';

class AddCard extends StatefulWidget {
  const AddCard({super.key});

  @override
  State<AddCard> createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      body: Container(
        margin: EdgeInsets.only(top: 45),
        alignment: Alignment.center,
        padding: EdgeInsets.only(top: 15),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Choose a method to \nadd a credit card',
                style: GoogleFonts.arimaMadurai(
                    fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                padding: EdgeInsets.symmetric(horizontal: 10),
                width: 228,
                height: 43,
                decoration: ShapeDecoration(
                  color: Color(0xFF30D5C8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(17),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Scan Card"),
                    IconButton(
                        onPressed: () {
                          Get.to(() => Scan());
                        },
                        icon: Icon(Icons.qr_code_scanner_rounded))
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                padding: EdgeInsets.symmetric(horizontal: 10),
                width: 228,
                height: 43,
                decoration: ShapeDecoration(
                  color: Color(0xFF30D5C8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(17),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Enter Details"),
                    IconButton(
                        onPressed: () {
                          Get.to(() => CreditCardPage());
                        },
                        icon: Icon(Icons.edit_note_rounded))
                  ],
                ),
              ),
            ]),
      ),
    );
  }
}
