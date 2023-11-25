import 'package:common_used_flutter_components/common/values/string_manager.dart';
import 'package:common_used_flutter_components/routes/router_delegate.dart';
import 'package:flutter/material.dart';

class SecondaryTabsPage extends StatelessWidget {
  const SecondaryTabsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios_rounded),
              onPressed: () {
                FZRouterDelegate.of(context).pop();
              },
            ),
            title: const Text(FZStrings.secondaryTabs),
            bottom: const TabBar(
              tabs: [
                Tab(text: 'Overview'),
                Tab(text: 'Specification'),
              ],
            ),
          ),
        ),
      ),
    );
  }

}