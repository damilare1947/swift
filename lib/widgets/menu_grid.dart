import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:swift_app/widgets/menu_item.dart';
import '../provider/menu.dart';

class MenuGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   final loadedMenu= Provider.of<Menus>(context).items;
   final deviceSize=MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment:MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(height:deviceSize.height/6),
        Expanded(
                        child: GridView.builder(
            itemCount: loadedMenu.length,
            itemBuilder: (ctx, i) => MenuItem(loadedMenu[i].icon,loadedMenu[i].iconText),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //this specifies how many columns we should have
            crossAxisCount: 2, //amount of columns you want
            childAspectRatio: 3 / 2, //tall/wide
             //spacing between columns in px
            mainAxisSpacing: //space between rows in px
                2.0)
   
          ),
        ),
      ],
    );
  }
}
