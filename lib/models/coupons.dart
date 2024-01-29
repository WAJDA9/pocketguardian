

import 'package:cloud_firestore/cloud_firestore.dart';

class CouponM {
  final String? id;
  final String name;
  final String image;

  CouponM({this.id,required this.name,required this.image});
toJson() {
  return{"Name": name,"Image":image};
}

}
