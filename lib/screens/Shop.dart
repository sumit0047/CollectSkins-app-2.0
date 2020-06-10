
import 'package:collectskins/widgets/p2pShop.dart';
import 'package:flutter/material.dart';

class Shop extends StatefulWidget {
  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<Shop>
    with SingleTickerProviderStateMixin {
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalObjectKey<ScaffoldState>('TabScreen');
  TabController _tabController;

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff36393f),
      key: _scaffoldKey,
      body : Column(

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
                  child: Text('P2P',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 21.0,
                      )),
                ),
                Tab(
                  child: Text('MISC',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 21.0,
                      )),
                ),

              ]),
          SizedBox(height: 10,),

          Container(
              height: MediaQuery.of(context).size.height * 0.795,
              child: TabBarView(
                  controller: _tabController,
                  children: [
                    p2pShop(),
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
