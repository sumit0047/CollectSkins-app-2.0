import 'dart:async';
import 'dart:convert';

import 'package:collectskins/api/WaxAPI.dart';
import 'package:collectskins/widgets/FilterDialog.dart';
import 'package:flutter/material.dart';

class p2pShop extends StatefulWidget {
  @override
  _p2pShopState createState() => _p2pShopState();
}

class _p2pShopState extends State<p2pShop> {

  ItemResponse itemResponse;
  bool _isLoading;
  String searchString='';
  String priceFromString='';
  String priceToString='';
  final searchController = TextEditingController();
  Timer _debounce;

  callback(from,to) {
    if(this.mounted)
    setState(() {
      priceFromString = from;
      priceToString = to;
      _isLoading = true;
      _getItems(0, searchString,priceFromString,priceToString);
      print(priceFromString+priceToString);
    });
  }
  @override
  void initState() {
    super.initState();
    _isLoading = true;
    searchController.addListener(_searchLatestValue);
    _getItems(5,searchString,priceFromString,priceToString);
  }

  _searchLatestValue() {
    if (_debounce?.isActive ?? false) _debounce.cancel();
    _debounce = Timer(const Duration(milliseconds: 1000), () {
      if(searchString!=searchController.text)
        setState(() {
          _isLoading = true;
          searchString = searchController.text;
          _getItems(0, searchString,priceFromString,priceToString);
        });
    });

  }

  _getItems(int from,String search,String pfrom,String to) {
    API.getItems(from,search,pfrom,to).then((response) {
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
    searchController.removeListener(_searchLatestValue);
    searchController.dispose();
    _debounce.cancel();
    scrollController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              child: TextField(
                controller: searchController,
                style: TextStyle(color: Colors.white70),
                decoration: new InputDecoration(
                  fillColor: Color(0xff36393f),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff2f3136))
                  ),
                  prefixIcon: Icon(Icons.search,color: Colors.white70,),
                  labelText: "Search",
                  labelStyle: TextStyle(color: Colors.white70),
                ),
              ),
              width: 250,
              height: 50,
              decoration: BoxDecoration(
                  color: Color(0xff2f3136),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12))
              ),
            ),

            InkWell(
              onTap: () => showDialog(context: context, builder: (context) => FilterDialog(callback)),
              child: Container(
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
                    Text("Filter",style: TextStyle(color: Colors.white70,fontSize: 15),textAlign: TextAlign.center,),
                  ],
                ))
              ),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        !_isLoading?itemResponse.items.length!=0?
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
        : Column(children: <Widget>[
          SizedBox(
            height: 70,
            ),
          Text("No Matching Entry found.",style: TextStyle(color: Colors.white70),)
        ])
            : Column(
          children: <Widget>[
            SizedBox(
              height: 70,
            ),
            CircularProgressIndicator()
          ],
        )

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
