

import 'package:firebase_database/firebase_database.dart';

class Profile {
  String userID;
  String userName;
  String userRole;
  String userLevel;
  String userCoins;
  String userCoinsOnHold;

  Profile.fromMap(Map<String, dynamic> data){
    userCoins = data['userCoins'];
    userName = data['userName'];
    userRole = data['userRole'];
    userLevel = data['userLevel'];
    userCoinsOnHold = data['userCoinsOnHold'];
    userID = data['userID'];
  }

  Profile.fromSnapshot(DataSnapshot snapshot)
      : userName = snapshot.value["userName"],
        userRole = snapshot.value["userRole"];
  Profile.fromJson(Map data){
    userName = data['userName'];
    userRole = data['userRole'];
    userCoins = data['userCoins'];
    userCoinsOnHold = data['userCoinsOnHold'];
    userLevel = data['userLevel'];
    if (userName == null) {
      userName = '';
    }
    if (userRole == null) {
      userRole = '';
    }
    if (userCoins == null) {
      userCoins = '';
    }
    if (userCoinsOnHold == null) {
      userCoinsOnHold = '';
    }
    if (userLevel == null) {
      userLevel = '';
    }
  }
}