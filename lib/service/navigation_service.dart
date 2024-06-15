import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class NavigationService extends GetxController {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<dynamic> navigateTo(String routeName) async {
    return navigatorKey.currentState!.pushNamed(routeName);

  }


  void goBack(){
    return navigatorKey.currentState!.pop();
  }
}
