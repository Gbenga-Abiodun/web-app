import 'package:flutter/material.dart';
import 'package:web_app/base/not_found_page.dart';
import 'package:web_app/pages/about/about_page.dart';
import 'package:web_app/pages/episodes/episode_page.dart';
import 'package:web_app/pages/home/home_page.dart';
import 'package:web_app/routes/route_helper.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.homeRoute:
      return _getPageRoute(const HomePage());
    case AppRoutes.aboutRoute:
      return _getPageRoute(const AboutPage());
    case AppRoutes.episodeRoute:
      return _getPageRoute(const EpisodePage());
    default:
      return _getPageRoute(const NotFoundPage(),);
  }
}
PageRoute _getPageRoute(Widget child) {
  return _FadeRoute(
    child: child,
  );
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  _FadeRoute({required this.child})
      : super(
    pageBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        ) =>
    child,
    transitionsBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
        ) =>
        FadeTransition(
          opacity: animation,
          child: child,
        ),
  );
}