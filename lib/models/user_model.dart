import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String? id;
  final String name;
  final String email;
  final String phoneno;

  UserModel(
      {this.id,
      required this.name,
      required this.email,
      required this.phoneno});
  toJson() {
    return {"Name": name, "Email": email, "Phone Number": phoneno};
  }

  factory UserModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> document) {
    final data = document.data();
    return UserModel(
      id: document.id,
      name: data!["name"],
       email: data["email"],
       phoneno: data["phoneno"],      
       );
  }
}
