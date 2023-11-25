import 'package:common_used_flutter_components/common/values/string_manager.dart';
import 'package:flutter/material.dart';

import '../../../routes/app_routes.dart';
import '../../../routes/router_delegate.dart';

class NavigationBarPage extends StatefulWidget {
  const NavigationBarPage({Key? key}) : super(key: key);

  @override
  State<NavigationBarPage> createState() => _NavigationBarPageState();
}

class _NavigationBarPageState extends State<NavigationBarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        FZStrings.navigationBar,
      )),
      body: ListView(
        children: [
          buildItems(context, '1', FZStrings.icon3HasLabel, FZRoutePath.icon3HasLabel()),
          buildItems(context, '2', FZStrings.icon4HasLabel, FZRoutePath.icon4HasLabel()),
          buildItems(context, '3', FZStrings.icon5HasLabel, FZRoutePath.icon5HasLabel()),
          buildItems(context, '4', FZStrings.icon3NoLabel, FZRoutePath.icon3NoLabel()),
          buildItems(context, '5', FZStrings.icon4NoLabel, FZRoutePath.icon4NoLabel()),
          buildItems(context, '6', FZStrings.icon5NoLabel, FZRoutePath.icon5NoLabel()),
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
