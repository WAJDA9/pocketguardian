import 'package:flutter/material.dart';
import './auth.dart';
import './screens/signin_screen.dart';
import './screens/signup_screen.dart';
import './screens/homescreen.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Auth().authStateChanges,
      builder: (context, snapshot){
        if(snapshot.hasData){
          return Home();
        } else {
          return Signin();
        }
      }
      
      );
  }
}