import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_app/controllers/utils_controller.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';

class WebScrollView extends GetView<UtilsController> {
  final Widget child;

  final ScrollPhysics? physics;
  const WebScrollView({Key? key, required this.child, this.physics = const NeverScrollableScrollPhysics(),}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WebSmoothScroll(
      controller: controller.scrollController,
      child: SingleChildScrollView(
        physics: physics,
        controller: controller.scrollController,
        child: child,
      ),
    );
  }
}
