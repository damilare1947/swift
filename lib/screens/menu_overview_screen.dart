import 'package:flutter/material.dart';
//import 'package:swift_app/provider/menu.dart';
import 'package:swift_app/widgets/app_drawer.dart';
import 'package:swift_app/widgets/menu_grid.dart';

class MenuOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
      ),
      drawer: AppDrawer(),
      body:Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage('images/pix.png'),
                fit: BoxFit.cover,
              ),
            ),
            child:MenuGrid(),
          ),
         );
  }
}
