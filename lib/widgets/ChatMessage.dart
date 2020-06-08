import 'package:flutter/material.dart';

class ChatMessage extends StatefulWidget {
  @override
  _ChatMessageState createState() => _ChatMessageState();
}

class _ChatMessageState extends State<ChatMessage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff2f3136),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 5,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.08,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(40.0),
                child: Image(
                  height: 30,
                  width: 30,
                  image: NetworkImage("https://lh3.googleusercontent.com/a-/AOh14Gj9CTzspQNm96Sfl7g0RgKzN-fu1SsdQjfERA7Q1g"),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.03,
              ),
              Stack(
                children: <Widget>[
                  Container(
                    height: 30,
                    width: 30,
                    child: CircularProgressIndicator(
                      strokeWidth: 3,
                      value: 1,
                    ),
                  ),
                  Positioned(left: 10,top: 6,child: Text("7",style: TextStyle(color: Colors.white70,fontSize: 18,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),)
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.03,
              ),
              Text("Inigo Montoya",style: TextStyle(color: Colors.white70,fontSize: 18,),),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.2,
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding : EdgeInsets.only(left: 40,right: 40,top: 10),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xff212121),
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                  width: MediaQuery.of(context).size.width * 0.80,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    child: Text("i linked all but still have coins on hold wtf?",style : TextStyle(color: Colors.white70,fontSize: 15),textAlign: TextAlign.justify,),
                  ),
                ),
              ),

            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: EdgeInsets.only(right: 30,top: 5),
                  child: Text("a few seconds ago",style: TextStyle(color: Colors.white70,fontSize: 12),textAlign: TextAlign.right,),
                )
              ),
            ],
          ),

          SizedBox(
            height: 5,
          )
        ],
      ),
    );
  }
}
