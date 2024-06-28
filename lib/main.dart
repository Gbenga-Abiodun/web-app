import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_app/helpers/dependencies.dart' as dep;

import 'package:web_app/routes/route_helper.dart';
import 'package:web_app/routes/router.dart';
import 'package:web_app/service/navigation_service.dart';

import 'base/not_found_page.dart';
import 'layout/layout_template/layout_template.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  // setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Web app',
      routes: AppRoutes.pages,
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
              fontFamily: "OpenSans",
            ),
        useMaterial3: false,
      ),
      builder: (context, child) => LayoutTemplate(child: child!),
      navigatorKey: Get.find<NavigationService>().navigatorKey,
      onGenerateRoute: generateRoute,
      initialRoute: AppRoutes.homeRoute,
      // onUnknownRoute: (RouteSettings settings) {
      //   return MaterialPageRoute<void>(
      //     settings: settings,
      //     builder: (BuildContext context) =>
      //         Scaffold(body: Center(child: Text('Not Found'))),
      //   );
      // },
    );
  }
}
