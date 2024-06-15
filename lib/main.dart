import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:web_app/base/not_found_page.dart';
import 'package:web_app/helpers/dependencies.dart' as dep;
import 'package:web_app/pages/home/home_page.dart';
import 'package:web_app/routes/route_helpers.dart';

import 'layout/layout_template/layout_template.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // onGenerateRoute: generateRoute
      initialRoute: RouteHelpers.initial,
      unknownRoute: GetPage(
        name: "/not-found",
        page: () => const NotFoundPage(),
        transition: Transition.fadeIn,
      ),
      debugShowCheckedModeBanner: false,
      title: 'Web app',
      getPages: RouteHelpers.routes,

      theme: ThemeData(
        pageTransitionsTheme: const PageTransitionsTheme(builders: {
          TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
          TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
        }),
        textTheme: Theme.of(context).textTheme.apply(
              fontFamily: "OpenSans",
            ),
        useMaterial3: false,
      ),
      // home: const LayoutTemplate(),
    );
  }
}
