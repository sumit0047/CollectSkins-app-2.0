import 'dart:convert';

import 'package:collectskins/api/WaxAPI.dart';
import 'package:flutter/material.dart';

class p2pShop extends StatefulWidget {
  @override
  _p2pShopState createState() => _p2pShopState();
}

class _p2pShopState extends State<p2pShop> {

  ItemResponse itemResponse;
  bool _isLoading;

  @override
  void initState() {
    super.initState();
    _isLoading = true;
    _getItems(5);
  }

  _getItems(int from) {
    API.getItems(from).then((response) {
      if(this.mounted)
      setState(() {
        print("response "+response.body.toString());
        final jsonResponse = json.decode(response.body);
        itemResponse = new ItemResponse.fromJson(jsonResponse);
        print("itemlist"+itemResponse.toString());
        _isLoading = false;
      });
    });
  }

  final ScrollController scrollController = new ScrollController();

  @override
  void dispose() {

    scrollController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            !_isLoading?
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
              decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(10.0),
              color: Color(0xff2f3136),
            ),
              height: 50,
              child: Center(child: Row(
                children: <Widget>[
                  Icon(Icons.filter_list,color: Colors.white70,),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Filter Shop",style: TextStyle(color: Colors.white70,fontSize: 15),textAlign: TextAlign.center,),
                ],
              ))
            ) : SizedBox(
              height: 10,
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        !_isLoading?
        SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.7,
            padding: EdgeInsets.only(right: 15.0,left: 15.0),
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.05,
                  crossAxisSpacing: 15.0,
                  mainAxisSpacing: 15.0,
                ),
                itemCount: itemResponse.items.length,
                controller: scrollController,
                itemBuilder: (_ ,index) {
                  return _ShopItem(itemResponse.items[index].name, itemResponse.items[index].image,itemResponse.items[index].price/10.0,itemResponse.items[index].steam_price/1000.0, context);
                }
            ),
          ),
        )
            : Center(
          child: CircularProgressIndicator(),
        ),

      ],
    );
  }

  Widget _ShopItem(String name,String img,double price,double steamprice,context) {
    return Padding(
      padding: EdgeInsets.all(0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                  color: Colors.black87.withOpacity(0.2),
                  spreadRadius: 3.0,
                  blurRadius: 5.0)
            ],
            color: Color(0xff2f3136)),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Positioned(
                  width: 150,
                    left: 10,
                    top: 10,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Image(image: AssetImage('assets/images/coin.png',),height: 15,width: 15,),
                            SizedBox(
                              width: 2,
                            ),
                            Text(price.toString(),style: TextStyle(color: Colors.white70,),textAlign: TextAlign.center,)
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Image(image: AssetImage('assets/images/steam.png',),height: 15,width: 15,color: Colors.grey,),
                            SizedBox(
                              width: 2,
                            ),
                            Text('\$'+steamprice.toStringAsPrecision(3),style: TextStyle(color: Colors.white70,),textAlign: TextAlign.center,)
                          ],
                        )
                      ],
                    )
                ),
                Positioned(
                    child: Image(image: NetworkImage(img,),height: 160,width: 160,)
                ),
                Positioned(
                    bottom: 1,
                    width: 160,
                    child: Text(name,style: TextStyle(color: Colors.white70,),textAlign: TextAlign.center,)
                ),
                Positioned(
                  height: 250,
                  child: SizedBox(height: 100,),
                )
              ],
            ),

          ],
        )
      ),
    );
  }
}
