import 'package:flutter/material.dart';

import '../../../common/values/string_manager.dart';
import '../widgets/navigation_drawer_widget.dart';

class NavigationDrawerPage extends StatefulWidget {
  const NavigationDrawerPage({Key? key}) : super(key: key);

  @override
  State<NavigationDrawerPage> createState() => _NavigationDrawerPageState();
}

class _NavigationDrawerPageState extends State<NavigationDrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(FZStrings.navigationDrawer),
      ),
      drawer: const NavigationDrawerWidget(),
    );
  }
}
