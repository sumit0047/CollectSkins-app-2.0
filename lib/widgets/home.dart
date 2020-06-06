import 'package:flutter/material.dart';
import 'package:collectskins/widgets/Earnings.dart';
import 'package:collectskins/widgets/Withdrawals.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:badges/badges.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PageController _EarningsController = PageController(
    initialPage: 0,
  );
  PageController _WithdrawalsController = PageController(
    initialPage: 0,
  );
  String _ref = "CollectSkins.com/?=InigoMontoya";

  @override
  void dispose() {
    _EarningsController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child :
        ListView(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            //Profile
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Color(0xff2f3136),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                      width : MediaQuery.of(context).size.width * 0.85,

                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(5.0),
                        color: Color(0xff145cae),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                        child: Text("PROFILE",style: TextStyle(color: Colors.white70,fontSize: 18,),textAlign: TextAlign.center,),
                      )
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(40.0),
                            child: Image(
                              height: 60,
                              width: 60,
                              image: AssetImage('assets/images/unnamed.jpg'),
                            ),
                          ),
                          Column(
                            children: <Widget>[
                              Text("Inigo Montoya",style: TextStyle(color: Colors.white70,fontSize: 20,fontWeight: FontWeight.bold),),
                              Text("Member",style: TextStyle(color: Colors.white70,fontSize: 13,)),
                            ],
                          ),
                          Stack(
                            children: <Widget>[
                              Container(
                                height: 40,
                                width: 40,
                                child: CircularProgressIndicator(
                                  strokeWidth: 4,
                                  value: 0.36,
                                ),
                              ),
                              Positioned(top: 7,left: 15,child: Text("7",style: TextStyle(color: Colors.white70,fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),)
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Badge(
                            badgeContent: Icon(Icons.check,color: Colors.white70,size: 10,),
                            badgeColor: Colors.indigo,
                            child: Icon(Icons.phone,color: Colors.white70,size: 30,),
                          ),
                          Badge(
                            badgeContent: Icon(Icons.check,color: Colors.white70,size: 10,),
                            badgeColor: Colors.indigo,
                            child: Icon(Icons.email,color: Colors.white70,size: 30,),
                          ),
                          Badge(
                            badgeContent: Icon(Icons.check,color: Colors.white70,size: 10,),
                            badgeColor: Colors.indigo,
                            child: Icon(Icons.track_changes,color: Colors.white70,size: 30,),
                          ),
                          Badge(
                            badgeContent: Icon(Icons.check,color: Colors.white70,size: 10,),
                            badgeColor: Colors.indigo,
                            child: Icon(Icons.message,color: Colors.white70,size: 30,),
                          ),
                          Badge(
                            badgeContent: Icon(Icons.check,color: Colors.white70,size: 10,),
                            badgeColor: Colors.indigo,
                            child: Icon(Icons.data_usage,color: Colors.white70,size: 30,),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Image(
                            height: 30,
                            width: 30,
                            image: AssetImage('assets/images/coin.png'),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text("1360.90",style: TextStyle(color: Colors.white70,fontSize: 18,),textAlign: TextAlign.center,),

                          Text("COINS",style: TextStyle(color: Colors.lightGreen,fontSize: 13,),textAlign: TextAlign.center,),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Image(
                            height: 30,
                            width: 30,
                            image: AssetImage('assets/images/coin.png'),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text("0.00",style: TextStyle(color: Colors.white70,fontSize: 18,),textAlign: TextAlign.center,),

                          Text("ON HOLD",style: TextStyle(color: Colors.orangeAccent,fontSize: 13,),textAlign: TextAlign.center,),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),

          //End Profile
          SizedBox(
            height: 10,
          ),

          //Start Referral
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Color(0xff2f3136),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 15,
                ),
                Container(
                  width : MediaQuery.of(context).size.width * 0.85,

                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(5.0),
                    color: Color(0xff145cae),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                    child: Text("REFERRAL STATUS",style: TextStyle(color: Colors.white70,fontSize: 18,),textAlign: TextAlign.center,),
                  )
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  child: Text("Get 5% of other peoples earnings when they signup via your link.",style: TextStyle(color: Colors.white70),textAlign: TextAlign.center,),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                          Column(
                            children: <Widget>[
                          Text("Count :",style: TextStyle(color: Colors.white70,fontSize: 18,),textAlign: TextAlign.center,),
                          SizedBox(
                            height: 5,
                          ),
                          Text("0",style: TextStyle(color: Colors.white70,fontSize: 18,),textAlign: TextAlign.center,),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text("Earnt :",style: TextStyle(color: Colors.white70,fontSize: 18,),textAlign: TextAlign.center,),
                              SizedBox(
                                height: 5,
                              ),
                              Text("0.00",style: TextStyle(color: Colors.white70,fontSize: 18,),textAlign: TextAlign.center,),
                            ],
                          )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      width : MediaQuery.of(context).size.width * 0.65,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(5.0),
                        color: Color(0xff464646),
                    ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                        child: Text("https://app.collectskins.com/?r=Inigomontoya",style: TextStyle(color: Colors.white70,fontSize: 14,),textAlign: TextAlign.center,),
                      ),
                    ),
                    Container(
                      width : MediaQuery.of(context).size.width * 0.15,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(5.0),
                        //color: Color(0xff1f1e1e),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                        child: Icon(Icons.content_copy,color: Colors.white70,),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),

            //End Referral
            SizedBox(
              height: 10,
            ),
            //Announcements
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Color(0xff2f3136),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                      width : MediaQuery.of(context).size.width * 0.85,

                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(5.0),
                        color: Color(0xff145cae),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                        child: Text("ANNOUNCEMENTS",style: TextStyle(color: Colors.white70,fontSize: 18,),textAlign: TextAlign.center,),
                      )
                  ),
                  Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            width : MediaQuery.of(context).size.width * 0.15,
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                              child: Icon(Icons.notification_important,color: Colors.white70,),
                            ),
                          ),
                          Container(
                            width : MediaQuery.of(context).size.width * 0.75,
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                              child: Text("NOTE! If you want to transfer coins from 1.0 to 2.0 do it before the 1st of June as no transfers can be made after that!",style: TextStyle(color: Colors.white70,fontSize: 14,),textAlign: TextAlign.justify,),
                            ),
                          ),
                        ],
                      ),

                      Row(
                        children: <Widget>[
                          Container(
                            width : MediaQuery.of(context).size.width * 0.15,
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                              child: Icon(Icons.notification_important,color: Colors.white70,),
                            ),
                          ),
                          Container(
                            width : MediaQuery.of(context).size.width * 0.75,
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                              child: Text("100% Boost on adscendmedia - check it out on the earn page!",style: TextStyle(color: Colors.white70,fontSize: 14,),textAlign: TextAlign.justify,),
                            ),
                          ),

                        ],
                      ),

                      Row(
                        children: <Widget>[
                          Container(
                            width : MediaQuery.of(context).size.width * 0.15,
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                              child: Icon(Icons.notification_important,color: Colors.white70,),
                            ),
                          ),
                          Container(
                            width : MediaQuery.of(context).size.width * 0.75,
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                              child: Text("We have a new game, Wheel Of Joshua! Go find it in games now... :-)",style: TextStyle(color: Colors.white70,fontSize: 14,),textAlign: TextAlign.justify,),
                            ),
                          ),

                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),


            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Color(0xff2f3136),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                      width : MediaQuery.of(context).size.width * 0.85,

                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(5.0),
                        color: Color(0xff145cae),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                        child: Text("EARNINGS",style: TextStyle(color: Colors.white70,fontSize: 18,),textAlign: TextAlign.center,),
                      )
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 182,
                    child: PageView(
                      controller: _EarningsController,
                      children: [
                        Earnings1(),
                        Earnings2(),
                        Earnings3(),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 5,
                  ),

                  SmoothPageIndicator(
                    controller: _EarningsController,
                    count:  3,
                    effect:  WormEffect(
                        spacing:  8.0,
                        radius:  20,
                        dotWidth:  10.0,
                        dotHeight:  10.0,
                        dotColor:  Colors.grey,
                        activeDotColor:  Colors.indigo
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 10,
            ),
            //Withdrawals
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Color(0xff2f3136),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                      width : MediaQuery.of(context).size.width * 0.85,

                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(5.0),
                        color: Color(0xff145cae),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                        child: Text("WITHDRAWALS",style: TextStyle(color: Colors.white70,fontSize: 18,),textAlign: TextAlign.center,),
                      )
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 200,
                    child: PageView(
                      controller: _WithdrawalsController,
                      children: [
                        Withdrawals1(),
                        Withdrawals2(),
                        Withdrawals3(),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 5,
                  ),

                  SmoothPageIndicator(
                    controller: _WithdrawalsController,
                    count:  3,
                    effect:  WormEffect(
                        spacing:  8.0,
                        radius:  20,
                        dotWidth:  10.0,
                        dotHeight:  10.0,
                        dotColor:  Colors.grey,
                        activeDotColor:  Colors.indigo
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            //End Withdrawals

            SizedBox(
              height: 30,
            ),
          ],
        )
      ),
    );
  }
}


