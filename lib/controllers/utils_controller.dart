import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UtilsController extends GetxController{

  // Controllers
  late ScrollController scrollController;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    scrollController = ScrollController();


  }

}