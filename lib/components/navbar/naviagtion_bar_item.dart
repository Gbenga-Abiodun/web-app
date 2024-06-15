import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:web_app/service/navigation_service.dart';
import 'package:web_app/widgets/hover_extension.dart';

class NavBarItems extends GetView<NavigationService> {
  final String title;

  final String navigatorPath;
  // void Function()? onTap;
  const NavBarItems({super.key, required this.title, required this.navigatorPath});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => controller.navigateTo(navigatorPath),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18,
        ),
      ),
    ).moveUpOnHover;
  }
}