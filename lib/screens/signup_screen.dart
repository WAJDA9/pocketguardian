import 'package:get/get.dart';
import 'package:pocketguardianapp/screens/homescreen.dart';

import '../widgets/button_widget.dart';
import '../widgets/input_field_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Signup extends StatefulWidget {
   Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  String? errorMessage ='' ; 
  bool isLoged = true;
  final TextEditingController _controller = TextEditingController();
  final TextEditingController _controllerpass = TextEditingController();
    final TextEditingController namecon = TextEditingController();
    final TextEditingController numbercon = TextEditingController();

  Future<void> signup() async {

    try {
      await Auth().signup(email: _controller.text, password: _controllerpass.text, username: namecon.text, phone: numbercon.text).whenComplete(() => Get.snackbar(
                "Success", "New User has been added",
                snackPosition: SnackPosition.BOTTOM,
                backgroundColor: Colors.green.withOpacity(0.1),
                colorText: Colors.green))
            .catchError((error) {
          Get.snackbar("Failure", "Something went wrong",
              snackPosition: SnackPosition.BOTTOM,
              backgroundColor: Colors.red.withOpacity(0.1),
              colorText: Colors.red);
        });
    } on FirebaseAuthException catch(e){
        setState(() {
          errorMessage = e.message;
        });
    }
   }
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      floatingActionButton: Container(
        margin: EdgeInsets.fromLTRB(size.width * 0.05, 40, 0, 0),
        child: IconButton(
          icon:  Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      backgroundColor:  Color.fromARGB(255, 244, 242, 242),
      body: SingleChildScrollView(
          child: Container(
        padding: EdgeInsets.only(top: size.height * 0.17),
        margin: EdgeInsets.symmetric(horizontal: size.width * 0.2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Create a new account',
                style: GoogleFonts.arimaMadurai(
                    color: Colors.black,
                    fontSize: 19,
                    fontWeight: FontWeight.bold)),
            TextFieldWidget(
              controller: namecon,
                hintText: 'Username',
                obscureText: false,
                onchanged: (value) {}),
            TextFieldWidget(
            controller: _controller,
                hintText: 'Email', obscureText: false, onchanged: (value) {}),
            TextFieldWidget(
              controller: _controllerpass,
                hintText: 'Password', obscureText: true, onchanged: (value) {}),
            TextFieldWidget(
              controller: _controllerpass,
                hintText: 'Confirm Password',
                obscureText: true,
                onchanged: (value) {}),
            TextFieldWidget(
              controller: numbercon,
                hintText: 'Phone Number',
                obscureText: false,
                onchanged: (value) {}),
            SizedBox(
              height: size.height * 0.02,
            ),
              Button('Sign up', onClick: () {
                signup().then((value) => {Get.to(()=>Home())});
                
              },)
          ],
        ),
      )),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        elevation: 0,
        child: Container(
            margin:  EdgeInsets.only(bottom: 10),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
               Text('Already having an account?'),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child:  Text(
                  'Sign In',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ])),
      ),
    );
  }
}
