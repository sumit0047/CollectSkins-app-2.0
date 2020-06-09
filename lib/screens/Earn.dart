import 'package:flutter/material.dart';

class Earn extends StatefulWidget {
  @override
  _EarnState createState() => _EarnState();
}

class _EarnState extends State<Earn> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child : Center(
        child: Text("Earn Page",style: TextStyle(color : Colors.white70),),
      ),

    );
  }
}
