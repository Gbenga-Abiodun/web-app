import 'package:flutter/material.dart';
import 'package:web_app/routes/route_names.dart';

import 'naviagtion_bar_item.dart';
import 'navigation_bar_logo.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  const NavigationBarTabletDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavigationBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              NavBarItems(title: "Episodes", navigatorPath: episodeRoute,),
              SizedBox(width: 60,),
              NavBarItems(title: "About", navigatorPath: aboutRoute,),
            ],
          )
        ],
      ),
    );
  }
}
