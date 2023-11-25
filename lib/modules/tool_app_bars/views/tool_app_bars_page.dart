import 'package:common_used_flutter_components/common/values/string_manager.dart';
import 'package:common_used_flutter_components/routes/app_routes.dart';
import 'package:common_used_flutter_components/routes/router_delegate.dart';
import 'package:flutter/material.dart';

class ToolAppBarsPage extends StatelessWidget {
  const ToolAppBarsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(FZStrings.toolAppBars),
      ),
      body: ListView(
        children: [
          buildItems(context, '1', FZStrings.appBarCenterAligned, FZRoutePath.appBarCenterAligned()),
          buildItems(context, '2', FZStrings.appBarSmall, FZRoutePath.appBarSmall()),
          buildItems(context, '3', FZStrings.appBarMedium, FZRoutePath.appBarMedium()),
          buildItems(context, '4', FZStrings.appBarLarge, FZRoutePath.appBarLarge()),
        ],
      ),
    );
  }

  Widget buildItems(BuildContext context, String name, String description, FZRoutePath routePath) {
    return Column(
      children: [
        ListTile(
          title: Text(name),
          subtitle: Text(description),
          onTap: () {
            FZRouterDelegate.of(context).push(routePath);
          },
        ),
        const Divider(height: 1, thickness: 1.5),
      ],
    );
  }
}