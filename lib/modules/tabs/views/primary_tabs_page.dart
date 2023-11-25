import 'package:common_used_flutter_components/common/values/string_manager.dart';
import 'package:common_used_flutter_components/routes/router_delegate.dart';
import 'package:flutter/material.dart';

class PrimaryTabsPage extends StatelessWidget {
  const PrimaryTabsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios_rounded),
              onPressed: () {
                FZRouterDelegate.of(context).pop();
              },
            ),
            title: const Text(FZStrings.primaryTabs),
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.flight), text: 'Flights'),
                Tab(icon: Icon(Icons.card_travel_outlined), text: 'Trips'),
                Tab(icon: Icon(Icons.explore_outlined), text: 'Explore'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}