import 'package:web_app/pages/about/about_page.dart';
import 'package:web_app/pages/episodes/episode_page.dart';
import 'package:web_app/pages/home/home_page.dart';

class AppRoutes {
  static const String homeRoute = "/home";
  static const String aboutRoute = "/about";
  static const String episodeRoute = "/episode";

  static final pages = {
    homeRoute: (context) => HomePage(),
    aboutRoute: (context) => const AboutPage(),
    episodeRoute: (context) => const EpisodePage(),
  };
}
