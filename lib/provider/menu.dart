import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Menu {
  final String id;
  final Icon icon;
  final String iconText;

  Menu({@required this.id, @required this.icon, @required this.iconText});
}

class Menus with ChangeNotifier {
  List<Menu> _items = [
    Menu(id: 'p01', icon: Icon(Icons.message,size:40.0,), iconText: 'PAY BILL'),
    Menu(id: 'p02', icon: Icon(Icons.transform,size:40.0), iconText: 'TRANSFER'),
    Menu(id: 'p03', icon: Icon(Icons.insert_chart,size:40.0), iconText: 'AIRTIME'),
    Menu(id: 'p04', icon: Icon(Icons.shop,size:40.0), iconText: 'SHOP'),
    Menu(id: 'p05', icon: Icon(Icons.tv,size:40.0), iconText: 'CABLE/\nTV SUBSCRIPTION'),
    Menu(id: 'p06', icon: Icon(Icons.phone_android,size:40.0), iconText: 'MOBILE \n& INTERNET DATA'),
  ];
  List<Menu> get items{
  return [..._items];

}
notifyListeners();
}


