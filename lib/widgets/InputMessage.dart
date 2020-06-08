import 'package:flutter/material.dart';

class InputMessage extends StatefulWidget {
  @override
  _InputMessageState createState() => _InputMessageState();
}

class _InputMessageState extends State<InputMessage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      height: double.infinity,
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xff212121),
                borderRadius: BorderRadius.circular(35.0),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 3),
                      blurRadius: 5,
                      color: Color(0xff212121))
                ],
              ),
              child: Row(
                children: [
                //  IconButton(
               //       icon: Icon(Icons.face,color: Colors.white70,), onPressed: () {}),
                  Expanded(
                    child:
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: TextField(
                        style: TextStyle(color: Colors.white70),
                        decoration: InputDecoration(
                            hintText: "Type Something...",
                            hintStyle: TextStyle(color: Colors.white70),
                            border: InputBorder.none),
                      ),
                      )
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 15),
          Container(
            padding: const EdgeInsets.all(15.0),
            decoration: BoxDecoration(
                color: Color(0xff212121), shape: BoxShape.circle),
            child: InkWell(
                      child: Icon(
                        Icons.send,
                        color: Colors.white,
                        size: 15,
                      ),
                    ),


          )
        ],
      ),
    );
  }
}
