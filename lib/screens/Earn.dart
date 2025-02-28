
import 'package:collectskins/widgets/SurveyProviders.dart';
import 'package:flutter/material.dart';

class Earn extends StatefulWidget {
  @override
  _EarnState createState() => _EarnState();
}

class _EarnState extends State<Earn>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child : Column(

        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 20,
              ),
              //Text("Shop",style: TextStyle(color: Colors.white70,fontSize: 40,fontWeight: FontWeight.bold,letterSpacing: 1,),)
            ],
          ),
          TabBar(
              controller: _tabController,
              indicatorColor: Colors.white70,
              labelColor: Color(0xFFC88D67),
              isScrollable: true,
              labelPadding: EdgeInsets.only(right: 40.0,left: 40),
              unselectedLabelColor: Color(0xFFCDCDCD),
              tabs: [
                Tab(
                  child: Text('ALL',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 17.0,
                      )),
                ),
                Tab(
                  child: Text('SURVEYS',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 17.0,
                      )),
                ),
                Tab(
                  child: Text('APPS',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 17.0,
                      )),
                ),
                Tab(
                  child: Text('VIDEOS',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 17.0,
                      )),
                ),
                Tab(
                  child: Text('CLICKS',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 17.0,
                      )),
                ),
              ]),
          SizedBox(height: 10,),
          Container(
              height: MediaQuery.of(context).size.height * 0.79,
              width: double.infinity,
              child: TabBarView(
                  controller: _tabController,
                  children: [
                    SurveyProvider(),
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xff3aa845)
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xff3aa845)
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xff3aa845)
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xff3aa845)
                      ),
                    ),
                  ]
              )
          )
        ],
      ),

      );


  }
}
