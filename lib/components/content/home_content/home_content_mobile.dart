import 'package:flutter/material.dart';
import 'package:web_app/components/call_to_action/call_to_action.dart';
import 'package:web_app/components/course_details/course_details.dart';

class HomeContentMobileTablet extends StatelessWidget {
  const HomeContentMobileTablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CourseDetails(),
        SizedBox(height: 100,),
        CallToAction(title: "Join Course"),
      ],
    );
  }
}
