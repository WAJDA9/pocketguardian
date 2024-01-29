
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:pocketguardianapp/auth.dart';
import 'package:pocketguardianapp/repositories/user_repo.dart';
import 'package:firebase_core/firebase_core.dart';
class UserController extends GetxController{
  static UserController get instance => Get.find();
  final userrepo = Get.put(UserRep());
  final User? user = Auth().curretUser;
  
  
  getUserData(){
     var userdata = userrepo.getUserDetails(user?.email);
     return userdata;
  }
}