import 'package:get/get.dart';
import 'package:web_app/layout/layout_template/layout_template.dart';

import '../base/not_found_page.dart';

class RouteHelpers {
  static const String initial = "/";

  static String getInitial() => '$initial';
  static const String notFound = "/not-found";

  static String getNotFound() => '$notFound';
  static List<GetPage> routes = [
    GetPage(
      name: initial,
      page: () => LayoutTemplate(),
      transition: Transition.fadeIn,
    ),

  ];
}
