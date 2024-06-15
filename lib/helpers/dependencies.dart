import 'package:get/get.dart';
import 'package:web_app/controllers/utils_controller.dart';
import '../service/navigation_service.dart';

Future<void> init() async{




  // all services
  Get.lazyPut(() => NavigationService());


  // controllers
  Get.lazyPut(() => UtilsController(), fenix: true,);
}