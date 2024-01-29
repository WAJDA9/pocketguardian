



import 'package:get/get.dart';
import 'package:pocketguardianapp/screens/homescreen.dart';
import 'package:pocketguardianapp/screens/resetpassword.dart';
import 'package:pocketguardianapp/screens/signup_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../widgets/button_widget.dart';
import '../widgets/input_field_widget.dart';

import '../auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Signin extends StatefulWidget {
   Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  Function? f() {
    return null;
  }
  String? errorMessage ='' ; 
  bool isLoged = true;
  final TextEditingController _controller = TextEditingController();
  final TextEditingController _controllerpass = TextEditingController();
   Future<void> signin() async {

    try {
      await Auth().signin(email: _controller.text, password: _controllerpass.text).whenComplete(
        () => Get.snackbar(
                "Success", "Signed in",
                snackPosition: SnackPosition.BOTTOM,
                backgroundColor: Colors.green.withOpacity(0.1),
                colorText: Colors.green)
                );
            
    } on FirebaseAuthException catch(e){
        
        setState(() {
          errorMessage = e.message;
        });
        
        Get.snackbar("Failure", "${errorMessage}",
              snackPosition: SnackPosition.BOTTOM,
              backgroundColor: Colors.red.withOpacity(0.1),
              colorText: Colors.red);
    }
   }


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      backgroundColor:  Color.fromARGB(255, 244, 242, 242),
      body: SingleChildScrollView(
          child: Container(
        margin: EdgeInsets.symmetric(horizontal: size.width * 0.2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/logo.png",
            height: 230,
            width: 230,
            ),
            Text('Log in to your account',
                style: GoogleFonts.arimaMadurai(
                    color: Colors.black,
                    fontSize: 19,
                    fontWeight: FontWeight.bold)),
            TextFieldWidget(
              error: errorMessage,
              controller: _controller,
                hintText: 'Email', obscureText: false, onchanged: (value) {}),
            TextFieldWidget(
              
              controller: _controllerpass,
                hintText: 'Password', obscureText: true, onchanged: (value) {}),
            SizedBox(
              height: size.height * 0.02,
            ),
            Button(
              'Sign in',
              onClick: () async {
                await signin();
                Get.to( 
                  ()=>Home()
                );
                
              },
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, 
            children: [
               Text('Forgot Your Password?'),
              GestureDetector(
                onTap: () {
                  Get.to(
                    () =>  ResetCoddeScreen()
                  );
                },
                child:  Text(
                  'Reset It',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ])
          ],
        ),
      )),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        elevation: 0,
        child: Container(
            margin:  EdgeInsets.only(bottom: 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                   Text('Don\'t have an account?'),
                  GestureDetector(
                    onTap: () {
                      Get.to(
                        
                        () =>  Signup(),
                      );
                    },
                    child:  Text(
                      'Sign Up',
                      style: TextStyle(decoration: TextDecoration.underline),
                    ),
                  )
                ])),
      ),
    );
  }
}
