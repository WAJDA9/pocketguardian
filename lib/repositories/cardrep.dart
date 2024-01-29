import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pocketguardianapp/models/cards.dart';


class Cardrep extends GetxController {
  static Cardrep get instance => Get.find();
  final _db = FirebaseFirestore.instance;
  
  createCoupon(CardM coupon) async {
    await _db.collection("Cards").add(coupon.toJson()).whenComplete(() => Get.snackbar("Success", "Your Card has been added",
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
}