import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final Icon icon;
  final String iconText;
  MenuItem(this.icon, this.iconText);
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromRGBO(127, 118, 187, 0.7).withOpacity(0.5),
      margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: GridTile(
        child: SingleChildScrollView(
                  child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  icon: icon,
                  color: Colors.white,
                  alignment:Alignment.center,
                  onPressed: () {},
                ),
                SizedBox(height: 5.0),
                Text(
                  iconText,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                )
              ]),
        ),
      ),
    );
  }
}
