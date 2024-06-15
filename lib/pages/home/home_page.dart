import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_app/components/call_to_action/call_to_action.dart';

import 'package:web_app/components/navigation_drawer/navigation_drawer.dart';
import 'package:web_app/layout/layout_template/layout_template.dart';

import '../../components/centered_view/centered_view.dart';
import '../../components/content/home_content/home_content.dart';
import '../../components/course_details/course_details.dart';
import '../../components/navbar/navigation_bar.dart';
import '../../widgets/web_scroll_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomeContent();
  }
}
