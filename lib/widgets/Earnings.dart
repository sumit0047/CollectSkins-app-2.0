import 'package:flutter/material.dart';
import 'package:collectskins/model/ModelEarnings.dart';

class Earnings extends StatefulWidget {
  @override
  _EarningsState createState() => _EarningsState();
  final List item;
  final index;
  const Earnings(this.item, this.index);
}

class _EarningsState extends State<Earnings> {
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
                  if(Index+widget.index < widget.item.length)
                    Container(
                        width : MediaQuery.of(context).size.width * 0.55,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[

                          Text(widget.item[Index+widget.index]['provider'],style: TextStyle(color: Colors.white70,fontSize: 18,),textAlign: TextAlign.center,),

                          Text(widget.item[Index+widget.index]['type'],style: TextStyle(color: Colors.white70,fontSize: 14,),textAlign: TextAlign.center,),

                          Text(widget.item[Index+widget.index]['time'],style: TextStyle(color: Colors.white70,fontSize: 14,),textAlign: TextAlign.center,),

                          SizedBox(
                            height: 10,
                          )

                        ],
                      ),
                    ),

                  if(Index+widget.index < widget.item.length)
                    Container(
                      width : MediaQuery.of(context).size.width * 0.35,
                      child : Column(
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
                  ),


                ],
              );
            }
        )
    );
  }
}

