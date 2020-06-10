import 'package:flutter/material.dart';

class SurveyProvider extends StatefulWidget {
  @override
  _SurveyProviderState createState() => _SurveyProviderState();
}

class _SurveyProviderState extends State<SurveyProvider> {
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
              _ShopItem("Adgate has some very high paying mobile offers as well as decent payouts on surveys.","https://app.collectskins.com/_nuxt/img/e401ae4.png",true,"50%", context),
              _ShopItem("RevenueWall, high paying surveys that usually take longer time than usual surveys!", "https://app.collectskins.com/_nuxt/img/1ee82b1.png",true,"100%", context),
              _ShopItem("AdscendMedia offer a huge variety of offers mostly popular in US,UK,GER.","https://app.collectskins.com/_nuxt/img/e7194e0.png",false,"0%", context),
              _ShopItem("HideoutTV allows you to earn coins watching videos and ads works best in US,UK,AUS,GER", "https://app.collectskins.com/_nuxt/img/1895417.png",false,"0%", context),
              _ShopItem("Adgem mostly has high paying mobile games that pay out anywhere from 300 to 1000+ coins.","https://app.collectskins.com/_nuxt/img/d690066.png",false,"0%", context),
              _ShopItem("Theoremreach offers simple and fast surveys. If you disqualify they even offer a small reward.","https://app.collectskins.com/_nuxt/img/cd627b5.png",true,"25%", context),
              _ShopItem("AdscendMedia offer a huge variety of offers mostly popular in US,UK,GER.","https://app.collectskins.com/_nuxt/img/e7194e0.png",false,"0%", context),
              _ShopItem("HideoutTV allows you to earn coins watching videos and ads works best in US,UK,AUS,GER", "https://app.collectskins.com/_nuxt/img/1895417.png",false,"0%", context),
              _ShopItem("Adgem mostly has high paying mobile games that pay out anywhere from 300 to 1000+ coins.","https://app.collectskins.com/_nuxt/img/d690066.png",false,"0%", context),
              _ShopItem("Theoremreach offers simple and fast surveys. If you disqualify they even offer a small reward.","https://app.collectskins.com/_nuxt/img/cd627b5.png",false,"0%", context),

            ],
          ),
        )
      ],
    );
  }

  Widget _ShopItem(String name,String img,bool boost,String boostper,context) {
    return Padding(
      padding: EdgeInsets.only(top: 5,left: 10,right: 10),
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 3.0,
                    blurRadius: 5.0)
              ],
              color: Colors.white70),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 5,right: 5,top: 5),
                child: Image(image: NetworkImage(img,),height: 60,width: 150,),
              ),
              Container(
                height: 75,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: Text(name,style: TextStyle(color: Colors.black87,fontSize: 13.7),textAlign: TextAlign.center,),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.description),
                  Icon(Icons.mobile_screen_share),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              boost == true?
              Expanded(
                child : Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Color(0xfff6cc10),
                    ),
                    width: double.infinity,
                    height: 30,
                    child: Center(
                      child: Text(boostper+" BOOST",style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                    )
                  ),
              )
                  : SizedBox(
                height: 1,
              )
            ],
          )
      ),
    );
  }
  }
