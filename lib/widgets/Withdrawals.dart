import 'package:flutter/material.dart';
import 'package:collectskins/model/ModelWithdrawals.dart';

class Withdrawals1 extends StatefulWidget {
  @override
  _WithdrawalsState createState() => _WithdrawalsState();
}

class _WithdrawalsState extends State<Withdrawals1> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        child: new ListView.builder
          (
            physics: NeverScrollableScrollPhysics(),
            itemCount: withdrawals.length,
            itemBuilder: (BuildContext ctxt, int Index) {
              return new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(withdrawals[Index].name,style: TextStyle(color: Colors.white70,fontSize: 18,),textAlign: TextAlign.center,),
                      Container(

                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(5.0),
                          color: Color(0xff464646),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 3),
                          child: Text(withdrawals[Index].code,style: TextStyle(color: Colors.white70,fontSize: 14,),textAlign: TextAlign.center,),
                        ),
                      ),

                      Text(withdrawals[Index].time,style: TextStyle(color: Colors.white70,fontSize: 14,),textAlign: TextAlign.center,),
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

class Withdrawals2 extends StatefulWidget {
  @override
  _Withdrawals2State createState() => _Withdrawals2State();
}

class _Withdrawals2State extends State<Withdrawals2> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        child: new ListView.builder
          (
            physics: NeverScrollableScrollPhysics(),
            itemCount: withdrawals.length,
            itemBuilder: (BuildContext ctxt, int Index) {
              return new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(withdrawals[Index].name,style: TextStyle(color: Colors.white70,fontSize: 18,),textAlign: TextAlign.center,),
                      Container(

                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(5.0),
                          color: Color(0xff464646),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 3),
                          child: Text(withdrawals[Index].code,style: TextStyle(color: Colors.white70,fontSize: 14,),textAlign: TextAlign.center,),
                        ),
                      ),
                      Text(withdrawals[Index].time,style: TextStyle(color: Colors.white70,fontSize: 14,),textAlign: TextAlign.center,),
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


class Withdrawals3 extends StatefulWidget {
  @override
  _Withdrawals3State createState() => _Withdrawals3State();
}

class _Withdrawals3State extends State<Withdrawals3> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        child: new ListView.builder
          (
            physics: NeverScrollableScrollPhysics(),
            itemCount: withdrawals.length,
            itemBuilder: (BuildContext ctxt, int Index) {
              return new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(withdrawals[Index].name,style: TextStyle(color: Colors.white70,fontSize: 18,),textAlign: TextAlign.center,),
                      Container(

                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(5.0),
                          color: Color(0xff464646),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 3),
                          child: Text(withdrawals[Index].code,style: TextStyle(color: Colors.white70,fontSize: 14,),textAlign: TextAlign.center,),
                        ),
                      ),
                      Text(withdrawals[Index].time,style: TextStyle(color: Colors.white70,fontSize: 14,),textAlign: TextAlign.center,),
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