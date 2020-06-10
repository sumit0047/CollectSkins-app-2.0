import 'dart:async';
import 'package:http/http.dart' as http;

const baseUrl = "https://api.waxpeer.com/v1";

class API {
  static Future getItems(int startFrom) {
    var url = baseUrl + '/get-items-list?api=4c4f30f71ff7b553c2dc4d7d2b28ca153aaa69b85254ce2c1175ecf5e51371c0&skip=' + startFrom.toString() + '&order_by=best_deals&max_price=5000&minified=0&game=csgo';
    return http.get(url);
  }
}

class ItemResponse {
  bool success;
  List<Item> items;
  int count;


  ItemResponse({
    this.success,
    this.items,
    this.count
  });


  factory ItemResponse.fromJson(Map<String, dynamic> parsedJson)
  {
    var list = parsedJson['items'] as List;
    List<Item> itemList = list.map((i) => Item.fromJson(i)).toList();

    return new ItemResponse(
      success: parsedJson['success'],
      items: itemList,
      count: parsedJson['count'],
    );
  }

}

class Item{
  String item_id;
  String image;
  int price;
  String name;
  int best_deals;
  int discount;
  int steam_price;

  Item({this.item_id, this.image, this.price, this.name, this.best_deals,
      this.discount, this.steam_price});

  factory Item.fromJson(Map<String, dynamic> parsedJson){
    return Item(
        item_id:parsedJson['item_id'],
        image:parsedJson['image'],
      price:parsedJson['price'],
      name:parsedJson['name'],
      best_deals:parsedJson['best_deals'],
      discount:parsedJson['discount'],
      steam_price:parsedJson['steam_price'],
    );
  }

}