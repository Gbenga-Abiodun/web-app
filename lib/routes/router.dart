import 'package:flutter/material.dart';
import 'package:web_app/pages/about/about_page.dart';
import 'package:web_app/pages/episodes/episode_page.dart';
import 'package:web_app/pages/home/home_page.dart';
import 'package:web_app/routes/route_names.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case homeRoute:
      return _getPageRoute(const HomePage());
    case aboutRoute:
      return _getPageRoute(const AboutPage());
    case episodeRoute:
      return _getPageRoute(const EpisodePage());
    default:
      return _getPageRoute(const HomePage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}