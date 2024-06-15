import 'package:flutter/material.dart';
import 'package:web_app/components/navigation_drawer/drawer_item.dart';
import 'package:web_app/components/navigation_drawer/navigation_drawer_header.dart';
import 'package:web_app/routes/route_names.dart';

class CustomNavigationDrawer extends StatelessWidget {
  const CustomNavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 16,
          ),
        ],
      ),
      child: Column(
        children: [
          NavigationDrawerHeader(),
          DrawerItem(
            title: "Episodes",
            icon: Icons.video_camera_back,
            navigatorPath: episodeRoute,
          ),
          DrawerItem(
            title: "Help",
            icon: Icons.help,
            navigatorPath: aboutRoute,
          ),
        ],
      ),
    );
  }
}
