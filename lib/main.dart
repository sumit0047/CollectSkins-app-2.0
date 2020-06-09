import 'package:badges/badges.dart';
import 'package:collectskins/screens/Earn.dart';
import 'package:collectskins/widgets/ChatMessage.dart';
import 'package:collectskins/widgets/InputMessage.dart';
import 'package:flutter/material.dart';
import 'package:collectskins/widgets/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: MyHomePage(),
    );
  }
}

class DrawerItem {
  String title;
  IconData icon;
  DrawerItem(this.title, this.icon);
}

class MyHomePage extends StatefulWidget {

  final drawerItems = [
    new DrawerItem("Home", Icons.home),
    new DrawerItem("Earn", Icons.monetization_on),
    new DrawerItem("Shop", Icons.shop),
    new DrawerItem("Top", Icons.vertical_align_top),
    new DrawerItem("Blog", Icons.shop),
    new DrawerItem("Shop", Icons.short_text),
    new DrawerItem("Help", Icons.help)
  ];

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _selectedDrawerIndex = 0;

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return new Home();
      case 1:
        return new Earn();

      default:
        return new Text("Error");
    }
  }

  _onSelectItem(int index) {
    setState(() => _selectedDrawerIndex = index);
    Navigator.of(context).pop(); // close the drawer
  }


  @override
  Widget build(BuildContext context) {

    GlobalKey<ScaffoldState> _ScaffoldKey = GlobalKey();

    return Scaffold(
      key: _ScaffoldKey,
      backgroundColor: Color(0xff36393f),
      appBar: AppBar(
        title: Image(image: AssetImage('assets/images/collectlogocorelnew.png',),height: 40,),
        backgroundColor: Color(0xff2f3136),
        actions: <Widget>[
          Badge(
            badgeContent: Text("2",style: TextStyle(fontSize: 10,color: Colors.white70),),
            badgeColor: Colors.indigo,
            child: Icon(Icons.notifications,color: Colors.white70),
            position: BadgePosition.topRight(top: 5,right: -5),
          ),
          SizedBox(
            width: 30,
          )
        ],
      ),
      body: _getDrawerItemWidget(_selectedDrawerIndex),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _ScaffoldKey.currentState.openEndDrawer();
        },
        child: Icon(Icons.chat_bubble_outline),
        backgroundColor: Color(0xff424242),
        elevation: 10.0,
      ),
      drawer : SizedBox(
        width: MediaQuery.of(context).size.width * 0.55,
        child: Drawer(
          // column holds all the widgets in the drawer
          child: Column(
            children: <Widget>[
              Container(
                height : MediaQuery.of(context).size.height * 0.25,
                color: Color(0xff2f3136),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height : 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            Container(
                              height: 70,
                              width: 70,
                              child: CircularProgressIndicator(
                                strokeWidth: 7,
                                value: 0.36,
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(40.0),
                              child: Image(
                                height: 70,
                                width: 70,
                                image: AssetImage('assets/images/unnamed.jpg'),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        SizedBox(
                          height: 10,
                        ),
                        Text("Inigo Montoya",style: TextStyle(color: Colors.white70,fontSize: 20,fontWeight: FontWeight.bold),),
                        Icon(Icons.star,color: Colors.white70,size: 10,),
                        Text("sumit.kr445@gmail.com",style: TextStyle(color: Colors.white70,fontSize: 13,)),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    )
                  ],
                ),
              ),


                    Container(
                        height : MediaQuery.of(context).size.height * 0.65,
                    color: const Color(0xff2f3136),
                    child:
                        ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: widget.drawerItems.length,
                            itemBuilder: (BuildContext contxt, int Index) {
                              return new
                              Container(
                                decoration: BoxDecoration(
                                  color: _selectedDrawerIndex == Index? Color(0xff36393f) : Color(0xff2f3136),
                                ),
                                child: ListTile(
                                  title: new Text(widget.drawerItems[Index].title,style: TextStyle(color: Colors.white70),),
                                  leading: new Icon(widget.drawerItems[Index].icon,color: Colors.white70,),
                                  selected: Index == _selectedDrawerIndex,
                                  onTap: () => _onSelectItem(Index),
                                ),
                              );
                            }
                        )


              ),
              // This container holds the align
              Container(
                  height : MediaQuery.of(context).size.height * 0.10,
                      child: Container(
                          color: const Color(0xff2f3136),
                          child: Column(
                            children: <Widget>[
                              Divider(),
                              Text('COLLECTSKINS 2020',style: TextStyle(color: Colors.white70),),
                              Text('NOT AFFILIATED WITH',style: TextStyle(color: Colors.white70),),
                              Text('VALVE CORPORATION',style: TextStyle(color: Colors.white70),)
                            ],
                          )
                      )

              )
            ],
          ),
        ),
      ),
      endDrawer: SizedBox(
        width: MediaQuery.of(context).size.width * 1.0,
        child: Drawer(
          // column holds all the widgets in the drawer
          child: Column(
            children: <Widget>[
              Container(
                height : MediaQuery.of(context).size.height * 0.10,
                width: MediaQuery.of(context).size.width,
                color: const Color(0xff2f3136),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 40,),
                    Center(
                      child: Text("CHAT CHANNEL",style: TextStyle(color: Colors.white70,fontSize: 15,letterSpacing: 2,),textAlign: TextAlign.center,),
                    )
                  ],
                )
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.80,
                // ListView contains a group of widgets that scroll inside the drawer
                  child: Container(
                    color: const Color(0xff2f3136),
                    child : ListView(
                      reverse: true,
                              children: <Widget>[
                                ChatMessage(),
                                ChatMessage(),
                                ChatMessage(),
                                ChatMessage(),
                                ChatMessage(),
                                ChatMessage(),
                                ChatMessage(),
                                ChatMessage(),
                                ChatMessage(),
                                ChatMessage(),
                                ChatMessage(),
                                ChatMessage(),
                              ],
                            ),
                  )
              ),
              // This container holds the align
              Container(
                // This align moves the children to the bottom
                  height: MediaQuery.of(context).size.height * 0.10,
                  child: Container(
                          color: const Color(0xff2f3136),
                          child: InputMessage(),
                      )

              )
            ],
          ),
        ),
      ),
    );
  }
}
