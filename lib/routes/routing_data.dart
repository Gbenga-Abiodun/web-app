class RoutingData{
  final String route;
  final Map<String, String> _queryParams;

  RoutingData({required this.route, required Map<String, String> queryParams}) : _queryParams = queryParams;


  operator[] (String key) => _queryParams[key];
}