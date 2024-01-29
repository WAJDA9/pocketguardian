import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pocketguardianapp/models/user_model.dart';


class UserRep extends GetxController {
  static UserRep get instance => Get.find();
  final _db = FirebaseFirestore.instance;
  
  createUser(UserModel user) async {
    await _db.collection("Users").add(user.toJson()).whenComplete(() => Get.snackbar("Success", "Your User has been added",
    snackPosition: SnackPosition.BOTTOM,
    backgroundColor: Colors.green.withOpacity(0.1),
    colorText: Colors.green
    )).catchError((error){
      Get.snackbar("Failure", "Something went wrong",
    snackPosition: SnackPosition.BOTTOM,
    backgroundColor: Colors.red.withOpacity(0.1),
    colorText: Colors.red);
    });
  }
    Future<UserModel> getUserDetails(String? email) async{
    final snapshot=await _db.collection("Users").where("email", isEqualTo: email).get();
    final UserData = snapshot.docs.map((e) => UserModel.fromSnapshot(e),).single;
    return UserData;
  }

}