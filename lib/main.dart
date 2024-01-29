
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pocketguardianapp/firebase_options.dart';
import 'package:pocketguardianapp/screens/history.dart';
import 'package:pocketguardianapp/screens/signin_screen.dart';
import 'widgettree.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {  
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  
  runApp( MyApp());

  }

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pocket Guardian',
      home: Signin(),
    );
  }
}
