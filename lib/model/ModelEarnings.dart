import 'package:firebase_database/firebase_database.dart';

class Earnings{
  String provider;
  String type;
  String time;
  String coins;

  Earnings({
    this.provider,
    this.time,
    this.coins,
    this.type,
});

  Earnings.fromJson(Map data){
    provider = data['provider'];
    type = data['type'];
    time = data['time'];
    coins = data['coins'];

    if (provider == null) {
      provider = '';
    }
    if (type == null) {
      type = '';
    }
    if (coins == null) {
      coins = '';
    }
    if (time == null) {
      time = '';
    }
  }


  Earnings.fromSnapshot(DataSnapshot data)
      : provider = data.value['provider'],
        type = data.value['type'],
        time = data.value['time'],
        coins = data.value['coins'];


}

List<Earnings> earnings = [
  Earnings(
    provider : "TheoremReach",
    type : "Survey",
    time : "10 hours ago",
    coins : "2.00",
  ),
  Earnings(
    provider : "TheoremReach",
    type : "Survey",
    time : "12 hours ago",
    coins : "2.00",
  ),
  Earnings(
    provider : "TheoremReach",
    type : "Survey",
    time : "18 hours ago",
    coins : "2.00",
  )
];