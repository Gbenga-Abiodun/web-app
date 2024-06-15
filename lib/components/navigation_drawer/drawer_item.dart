import 'package:flutter/material.dart';
import 'package:web_app/components/navbar/naviagtion_bar_item.dart';

class DrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final String navigatorPath;
  const DrawerItem({Key? key, required this.title, required this.icon, required this.navigatorPath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 60,
        left: 30,

      ),
      child: Row(
        children: [
          Icon(icon),
          SizedBox(width: 30,),
          NavBarItems(title: title, navigatorPath: navigatorPath,),
        ],
      ),
    );
  }
}
