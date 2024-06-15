import 'package:flutter/material.dart';
import 'package:web_app/utils/colors.dart';

class NavigationDrawerHeader extends StatelessWidget {
  const NavigationDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: AppColors.baseColor,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("SKILL UP NOW",style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w800,
            color: Colors.white,
          ), ),
          Text("TAP HERE",style: TextStyle(
            // fontSize: 18,
            // fontWeight: FontWeight.w800,
            color: Colors.white,
          ), ),
        ],
      ),
    );
  }
}
