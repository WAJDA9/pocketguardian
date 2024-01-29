import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pocketguardianapp/screens/changepassword.dart';
import 'package:pocketguardianapp/screens/signin_screen.dart';

import '../widgets/input_field_widget.dart';

class SubmitCodeScreen extends StatefulWidget {
   SubmitCodeScreen({super.key});

  @override
  State<SubmitCodeScreen> createState() => _SubmitCodeScreenState();
}

class _SubmitCodeScreenState extends State<SubmitCodeScreen> {
  final TextEditingController decoy = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor:  Color.fromARGB(255, 244, 242, 242),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: size.height * 0.17),
          margin: EdgeInsets.symmetric(horizontal: size.width * 0.2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Please provide the code we sent you',
                style: GoogleFonts.arimaMadurai(
                    fontSize: 22, fontWeight: FontWeight.bold),
              ),
              TextFieldWidget(
                controller: decoy,
                  hintText: 'Code', obscureText: false, onchanged: (value) {}),
              SizedBox(
                height: size.height * 0.02,
              ),
              MaterialButton(
                minWidth: size.width,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                padding:  EdgeInsets.fromLTRB(40, 20, 40, 20),
                color:  Color(0xFF30D5C8), // Background color
                textColor: Colors.white, // Text Color (Foreground color)
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>  ChangePass()),
                  );
                },
                child:  Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
