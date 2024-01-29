import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pocketguardianapp/models/coupons.dart';

class CouponRep extends GetxController {
  static CouponRep get instance => Get.find();
  final _db = FirebaseFirestore.instance;
  
  createCoupon(CouponM coupon) async {
    await _db.collection("Coupon").add(coupon.toJson()).whenComplete(() => Get.snackbar("Success", "Your Coupon has been added",
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