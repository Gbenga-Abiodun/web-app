import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'home_content_desktop.dart';
import 'home_content_mobile.dart';



class HomeContent extends StatelessWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: HomeContentMobileTablet(),
      desktop: HomeContentDesktop(),
      tablet: HomeContentMobileTablet(),
    );
  }
}
