import 'package:flutter/material.dart';

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

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xff36393f),
      appBar: AppBar(
        title: Text("CollectSkins"),
        backgroundColor: Color(0xff2f3136),
      ),
      drawer : SizedBox(
        width: MediaQuery.of(context).size.width * 0.55,
        child: Drawer(
          // column holds all the widgets in the drawer
          child: Column(
            children: <Widget>[
              Container(
                height : 200,
                color: Color(0xff2f3136),
                child: ListView(
                  children: <Widget>[
                    SizedBox(
                      height : 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            Container(
                              height: 50,
                              width: 50,
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),


              Expanded(
                // ListView contains a group of widgets that scroll inside the drawer
                  child: Container(
                    color: const Color(0xff2f3136),
                    child: Column(
                      children: <Widget>[
                        new ListTile(
                          title: new Text("Home",style: TextStyle(color: Colors.white70),),
                          leading: new Icon(Icons.home,color: Colors.white70,),
                        ),
                        new ListTile(
                          title: new Text("Earn",style: TextStyle(color: Colors.white70),),
                          leading: new Icon(Icons.monetization_on,color: Colors.white70,),
                        ),
                        new ListTile(
                          title: new Text("Shop",style: TextStyle(color: Colors.white70),),
                          leading: new Icon(Icons.shop,color: Colors.white70,),
                        ),
                        new ListTile(
                          title: new Text("Top",style: TextStyle(color: Colors.white70),),
                          leading: new Icon(Icons.vertical_align_top,color: Colors.white70,),
                        ),
                        new ListTile(
                          title: new Text("Games",style: TextStyle(color: Colors.white70),),
                          leading: new Icon(Icons.games,color: Colors.white70,),
                        ),
                        new ListTile(
                          title: new Text("Blog",style: TextStyle(color: Colors.white70),),
                          leading: new Icon(Icons.short_text,color: Colors.white70,),
                        ),
                        new ListTile(
                          title: new Text("Help",style: TextStyle(color: Colors.white70),),
                          leading: new Icon(Icons.help,color: Colors.white70,),
                        ),
                      ],
                    ),
                  )
              ),
              // This container holds the align
              Container(
                // This align moves the children to the bottom
                  child: Align(
                      alignment: FractionalOffset.bottomCenter,
                      // This container holds all the children that will be aligned
                      // on the bottom and should not scroll with the above ListView
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
              )
            ],
          ),
        ),
      ),
      endDrawer: SizedBox(
        width: MediaQuery.of(context).size.width * 0.75,
        child: Drawer(
          // column holds all the widgets in the drawer
          child: Column(
            children: <Widget>[
              Container(
                height : 200,
                color: const Color(0xff2f3136),
              ),
              Expanded(
                // ListView contains a group of widgets that scroll inside the drawer
                  child: Container(
                    color: const Color(0xff2f3136),
                    child: Column(
                      children: <Widget>[
                        new ListTile(
                          title: new Text("Home",style: TextStyle(color: Colors.white70),),
                          leading: new Icon(Icons.home,color: Colors.white70,),
                        ),
                      ],
                    ),
                  )
              ),
              // This container holds the align
              Container(
                // This align moves the children to the bottom
                  child: Align(
                      alignment: FractionalOffset.bottomCenter,
                      // This container holds all the children that will be aligned
                      // on the bottom and should not scroll with the above ListView
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
