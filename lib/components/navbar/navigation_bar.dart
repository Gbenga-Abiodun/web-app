import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_app/components/navbar/navigation_bar_logo.dart';
import 'package:web_app/components/navbar/navigation_bar_tablet_desktop.dart';
import 'package:web_app/widgets/hover_extension.dart';

import 'naviagtion_bar_item.dart';
import 'navigation_bar_mobile.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: NavigationBarMobile(),
      desktop: NavigationBarTabletDesktop(),
      tablet: NavigationBarTabletDesktop(),
    ).showCursorOnHover;
  }
}
