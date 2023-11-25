
import 'package:common_used_flutter_components/routes/router_delegate.dart';
import 'package:common_used_flutter_components/routes/router_info_parser.dart';
import 'package:flutter/material.dart';

import 'common/values/color_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final FZRouterDelegate _routerDelegate = FZRouterDelegate.instance;

  final FZRouteInformationParser _parser = FZRouteInformationParser();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Template',
      color: Colors.black,
      routeInformationParser: _parser,
      routerDelegate: _routerDelegate,
      theme: ThemeData(
        useMaterial3: true,
        appBarTheme: AppBarTheme(backgroundColor: Colors.blue[300]),
        navigationBarTheme: const NavigationBarThemeData(
          indicatorColor: FZColors.lightChooseBlue,
        ),
      ),
    );
  }
}
