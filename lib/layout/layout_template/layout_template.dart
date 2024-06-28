import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_app/pages/home/home_page.dart';
import 'package:web_app/routes/route_helper.dart';
import 'package:web_app/routes/router.dart';
import 'package:web_app/service/navigation_service.dart';

import '../../components/centered_view/centered_view.dart';
import '../../components/navbar/navigation_bar.dart';
import '../../components/navigation_drawer/navigation_drawer.dart';
import '../../widgets/web_scroll_view.dart';

class LayoutTemplate extends GetView<NavigationService> {
  final Widget? child;
  const LayoutTemplate({super.key,  this.child});

  @override
  Widget build(BuildContext context) {
    return  ResponsiveBuilder(builder: (context, sizeInformation) {
      return Scaffold(
        drawer: sizeInformation.isMobile ? CustomNavigationDrawer() : null,
        backgroundColor: Colors.white,
        body: WebScrollView(
          child: CenteredView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomNavigationBar(),
                SizedBox(
                  height: 60,
                ),
               SizedBox(
                 width: 800,
                 height: 500,
                 child: child!,
               )
              ],
            ),
          ),
        ),
      );
    });
  }
}
