import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:swift_app/provider/menu.dart';
import 'package:swift_app/screens/menu_overview_screen.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider.value(
        value: Menus()
      ),],
          child: MaterialApp(
          title: 'swift',
          theme: ThemeData(
            primaryColor: Colors.pink[900],
            accentColor: Color(0xff5B025C),
          ),
          home: MenuOverviewScreen()),
    );
  }
}
