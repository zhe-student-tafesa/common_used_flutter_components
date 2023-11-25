import 'package:common_used_flutter_components/common/values/string_manager.dart';
import 'package:common_used_flutter_components/routes/app_routes.dart';
import 'package:common_used_flutter_components/routes/router_delegate.dart';
import 'package:flutter/material.dart';

class TabsPage extends StatelessWidget {
  const TabsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(FZStrings.tabs),
      ),
      body: ListView(
        children: [
          buildItems(context, '1', FZStrings.primaryTabs, FZRoutePath.primaryTabs()),
          buildItems(context, '2', FZStrings.secondaryTabs, FZRoutePath.secondaryTabs()),
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