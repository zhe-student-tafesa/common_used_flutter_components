import 'package:common_used_flutter_components/common/values/string_manager.dart';
import 'package:flutter/material.dart';

import '../widgets/bottom_app_bar_component.dart';

class BottomAppBarPage extends StatefulWidget {
  const BottomAppBarPage({Key? key}) : super(key: key);

  @override
  State<BottomAppBarPage> createState() => _BottomAppBarPageState();
}

class _BottomAppBarPageState extends State<BottomAppBarPage> {
  @override
  Widget build(BuildContext context) {
    FloatingActionButtonLocation _fabLocation = FloatingActionButtonLocation.endContained;
    return Scaffold(
      appBar: AppBar(
        title: const Text(FZStrings.bottomAppBar),
      ),
      body: Center(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Create',
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: _fabLocation,
      bottomNavigationBar: const BottomAppBarComponent(),
    );
  }
}
