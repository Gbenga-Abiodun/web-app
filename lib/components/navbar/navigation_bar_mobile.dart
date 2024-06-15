import 'package:flutter/material.dart';
import 'package:web_app/components/navbar/navigation_bar_logo.dart';

class NavigationBarMobile extends StatelessWidget {
  const NavigationBarMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(Icons.menu_outlined),
          ),
          NavigationBarLogo(),
        ],
      ),
    );
  }
}
