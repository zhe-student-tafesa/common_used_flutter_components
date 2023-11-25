import 'package:flutter/material.dart';
import 'app_routes.dart';

class FZRouteInformationParser extends RouteInformationParser<FZRoutePath> {
  @override
  Future<FZRoutePath> parseRouteInformation(
      RouteInformation routeInformation) async {
    final uri = Uri.parse(routeInformation.location ?? '/');
    // // Handle unknown routes
    return FZRoutePath.home();
  }

  @override
  RouteInformation restoreRouteInformation(FZRoutePath path) {
    switch (path.name) {
      case "home":
        return const RouteInformation(location: '/');
    }
    return const RouteInformation(location: '/');
  }
}