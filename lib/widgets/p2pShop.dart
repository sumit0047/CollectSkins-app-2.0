import 'package:flutter/material.dart';

class p2pShop extends StatefulWidget {
  @override
  _p2pShopState createState() => _p2pShopState();
}

class _p2pShopState extends State<p2pShop> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height * 0.79,
          padding: EdgeInsets.only(right: 15.0,left: 15.0),
          child: GridView.count(
              crossAxisCount: 2,
            primary: false,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 15.0,
            childAspectRatio: 0.9,
            children: <Widget>[
                        _ShopItem("M4A4 | Howl","https://steamcommunity-a.akamaihd.net/economy/image/class/730/3841869331/200fx125f", context),
              _ShopItem("AWP | Gungnir", "https://steamcommunity-a.akamaihd.net/economy/image/class/730/3608084461/200fx125f", context),
                        _ShopItem("Sport Gloves | Pandora's Box","https://steamcommunity-a.akamaihd.net/economy/image/class/730/2077639777/200fx125f", context),
                        _ShopItem("AK-47 | Fire Serpent", "https://steamcommunity-a.akamaihd.net/economy/image/class/730/2437969307/200fx125f", context),
                        _ShopItem("Karambit | Autotronic","https://steamcommunity-a.akamaihd.net/economy/image/class/730/1817997692/200fx125f", context),
                        _ShopItem("M4A4 | Howl","https://steamcommunity-a.akamaihd.net/economy/image/class/730/3841869331/200fx125f", context),
                        _ShopItem("AWP | Gungnir", "https://steamcommunity-a.akamaihd.net/economy/image/class/730/3608084461/200fx125f", context),
                        _ShopItem("Sport Gloves | Pandora's Box","https://steamcommunity-a.akamaihd.net/economy/image/class/730/2077639777/200fx125f", context),
                        _ShopItem("AK-47 | Fire Serpent", "https://steamcommunity-a.akamaihd.net/economy/image/class/730/2437969307/200fx125f", context),
                        _ShopItem("Karambit | Autotronic","https://steamcommunity-a.akamaihd.net/economy/image/class/730/1817997692/200fx125f", context),

            ],
          ),
        )
      ],
    );
  }

  Widget _ShopItem(String name,String img,context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
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
            Image(image: NetworkImage(img,),height: 150,width: 150,),
            Text(name,style: TextStyle(color: Colors.white70,),textAlign: TextAlign.center,),
            SizedBox(
              height: 10,
            )
          ],
        )
      ),
    );
  }
}
