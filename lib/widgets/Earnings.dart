import 'package:flutter/material.dart';
import 'package:collectskins/model/ModelEarnings.dart';

class Earnings1 extends StatefulWidget {
  @override
  _EarningsState createState() => _EarningsState();
}

class _EarningsState extends State<Earnings1> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        child: new ListView.builder
          (
          physics: NeverScrollableScrollPhysics(),
            itemCount: earnings.length,
            itemBuilder: (BuildContext ctxt, int Index) {
              return new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(earnings[Index].provider,style: TextStyle(color: Colors.white70,fontSize: 18,),textAlign: TextAlign.center,),
                      Text(earnings[Index].type,style: TextStyle(color: Colors.white70,fontSize: 14,),textAlign: TextAlign.center,),
                      Text(earnings[Index].time,style: TextStyle(color: Colors.white70,fontSize: 14,),textAlign: TextAlign.center,),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image(
                        height : 20,
                        width : 20,
                        image: AssetImage('assets/images/coin.png'),
                      ),
                      Text("COINS",style: TextStyle(color: Colors.white70,fontSize: 14,),textAlign: TextAlign.center,),
                    ],
                  ),

                ],
              );
            }
        )
    );
  }
}

class Earnings2 extends StatefulWidget {
  @override
  _Earnings2State createState() => _Earnings2State();
}

class _Earnings2State extends State<Earnings2> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        child: new ListView.builder
          (
            physics: NeverScrollableScrollPhysics(),
            itemCount: earnings.length,
            itemBuilder: (BuildContext ctxt, int Index) {
              return new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(earnings[Index].provider,style: TextStyle(color: Colors.white70,fontSize: 18,),textAlign: TextAlign.center,),
                      Text(earnings[Index].type,style: TextStyle(color: Colors.white70,fontSize: 14,),textAlign: TextAlign.center,),
                      Text(earnings[Index].time,style: TextStyle(color: Colors.white70,fontSize: 14,),textAlign: TextAlign.center,),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image(
                        height : 20,
                        width : 20,
                        image: AssetImage('assets/images/coin.png'),
                      ),
                      Text("COINS",style: TextStyle(color: Colors.white70,fontSize: 14,),textAlign: TextAlign.center,),
                    ],
                  )
                ],
              );
            }
        )
    );
  }
}


class Earnings3 extends StatefulWidget {
  @override
  _Earnings3State createState() => _Earnings3State();
}

class _Earnings3State extends State<Earnings3> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        child: new ListView.builder
          (
            physics: NeverScrollableScrollPhysics(),
            itemCount: earnings.length,
            itemBuilder: (BuildContext ctxt, int Index) {
              return new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(earnings[Index].provider,style: TextStyle(color: Colors.white70,fontSize: 18,),textAlign: TextAlign.center,),
                      Text(earnings[Index].type,style: TextStyle(color: Colors.white70,fontSize: 14,),textAlign: TextAlign.center,),
                      Text(earnings[Index].time,style: TextStyle(color: Colors.white70,fontSize: 14,),textAlign: TextAlign.center,),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image(
                        height : 20,
                        width : 20,
                        image: AssetImage('assets/images/coin.png'),
                      ),
                      Text("COINS",style: TextStyle(color: Colors.white70,fontSize: 14,),textAlign: TextAlign.center,),
                    ],
                  )
                ],
              );
            }
        )
    );
  }
}