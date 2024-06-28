import 'package:web_app/routes/routing_data.dart';

extension StringExtension on String {
  RoutingData get getRoutingData {
    var uriData = Uri.parse(this);
    return RoutingData(
      route: uriData.path,
      queryParams: uriData.queryParameters,
    );
  }
}
