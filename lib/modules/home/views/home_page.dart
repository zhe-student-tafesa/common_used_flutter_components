import 'package:common_used_flutter_components/common/values/string_manager.dart';
import 'package:common_used_flutter_components/routes/app_routes.dart';
import 'package:common_used_flutter_components/routes/router_delegate.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(FZStrings.componentLibrary),
      ),
      body: ListView(
        children: [
          buildItems(context, FZStrings.avatars, FZRoutePath.avatars()),
          buildItems(context, FZStrings.badges, FZRoutePath.badges()),
          buildItems(context, FZStrings.bottomAppBar, FZRoutePath.bottomAppBar()),
          buildItems(context, FZStrings.buttons, FZRoutePath.buttons()),
          buildItems(context, FZStrings.datePicker, FZRoutePath.dataPicker()),
          buildItems(context, FZStrings.dialogs, FZRoutePath.dialogs()),
          buildItems(context, FZStrings.dividers, FZRoutePath.dividers()),
          buildItems(context, FZStrings.dropdowns, FZRoutePath.dropdowns()),
          buildItems(context, FZStrings.progressIndicators, FZRoutePath.progressIndicators()),
          buildItems(context, FZStrings.galleries, FZRoutePath.galleries()),
          buildItems(context, FZStrings.lists, FZRoutePath.lists()),
          buildItems(context, FZStrings.navigationBar, FZRoutePath.navigationBar()),
          buildItems(context, FZStrings.navigationDrawer, FZRoutePath.navigationDrawer()),
          buildItems(context, FZStrings.selections, FZRoutePath.selections()),
          buildItems(context, FZStrings.sliders, FZRoutePath.sliders()),
          buildItems(context, FZStrings.snackbars, FZRoutePath.snackbars()),
          buildItems(context, FZStrings.switches, FZRoutePath.switches()),
          buildItems(context, FZStrings.tabs, FZRoutePath.tabs()),
          buildItems(context, FZStrings.textFields, FZRoutePath.textFields()),
          buildItems(context, FZStrings.timePicker, FZRoutePath.timePicker()),
          buildItems(context, FZStrings.toolAppBars, FZRoutePath.toolAppBars()),
        ],
      ),
    );
  }

  Widget buildItems(BuildContext context, String name, FZRoutePath routePath) {
    return Column(
      children: [
        ListTile(
          title: Text(name),
          onTap: () {
            FZRouterDelegate.of(context).push(routePath);
          },
        ),
        const Divider(height: 1, thickness: 1.5),
      ],
    );
  }
}
