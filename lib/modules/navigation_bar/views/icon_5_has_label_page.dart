import 'package:common_used_flutter_components/common/values/color_manager.dart';
import 'package:common_used_flutter_components/common/values/image_manager.dart';
import 'package:common_used_flutter_components/common/values/string_manager.dart';
import 'package:flutter/material.dart';

import '../../tool_app_bars/widget/go_back_button_widget.dart';

class Icon5HasLabelPage extends StatefulWidget {
  const Icon5HasLabelPage({Key? key}) : super(key: key);

  @override
  State<Icon5HasLabelPage> createState() => _Icon5HasLabelPageState();
}

class _Icon5HasLabelPageState extends State<Icon5HasLabelPage> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(FZStrings.icon5HasLabel),
        automaticallyImplyLeading: false,
      ),
      body: <Widget>[
        Column(
          children: [
            Container(
              height: 200,
              color: Colors.red[200],
              alignment: Alignment.center,
              child: const Text('Home Page'),
            ),
            GoBackButtonWidget(),
          ],
        ),
        Column(
          children: [
            Container(
              height: 200,
              color: Colors.green[200],
              alignment: Alignment.center,
              child: const Text('Search Page'),
            ),
            GoBackButtonWidget(),
          ],
        ),
        Column(
          children: [
            Container(
              height: 200,
              color: Colors.blue[200],
              alignment: Alignment.center,
              child: const Text('Star Page'),
            ),
            const GoBackButtonWidget(),
          ],
        ),
        Column(
          children: [
            Container(
              height: 200,
              color: Colors.orange,
              alignment: Alignment.center,
              child: const Text('Square Page'),
            ),
            const GoBackButtonWidget(),
          ],
        ),
        Column(
          children: [
            Container(
              height: 200,
              color: Colors.pink[300],
              alignment: Alignment.center,
              child: const Text('Group Rounded Page'),
            ),
            const GoBackButtonWidget(),
          ],
        ),
      ][currentPageIndex],
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: <Widget>[
          const NavigationDestination(
            icon: Icon(Icons.home),
            label: FZStrings.label,
          ),
          NavigationDestination(
            icon: Stack(
              clipBehavior: Clip.none,
              children: const [
                Icon(Icons.search),
                Positioned(
                  right: -5,
                  top: -5,
                  child: FZImage(FZMediaNames.iconBadgeNotice),
                ),
              ],
            ),
            label: FZStrings.label,
          ),
          NavigationDestination(
            // selectedIcon: Icon(Icons.bookmark),
            icon: Stack(
              clipBehavior: Clip.none,
              children: [
                const Icon(Icons.star),
                Positioned(
                  right: -7,
                  top: -7,
                  child: Container(
                    alignment: Alignment.center,
                    width: 16,
                    height: 16,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: FZColors.noticeRed),
                    child: const Text(
                      '9',
                      style: TextStyle(color: FZColors.primaryWhite, fontSize: 11),
                    ),
                  ),
                ),
              ],
            ),
            label: FZStrings.label,
          ),
          const NavigationDestination(
            icon: Icon(Icons.view_comfortable_sharp),
            label: FZStrings.label,
          ),
          const NavigationDestination(
            icon: Icon(Icons.group_rounded),
            label: FZStrings.label,
          ),
        ],
      ),
    );
  }
}
