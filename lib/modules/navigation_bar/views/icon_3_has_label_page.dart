import 'package:common_used_flutter_components/common/values/color_manager.dart';
import 'package:common_used_flutter_components/common/values/image_manager.dart';
import 'package:common_used_flutter_components/common/values/string_manager.dart';
import 'package:flutter/material.dart';

import '../../tool_app_bars/widget/go_back_button_widget.dart';

class Icon3HasLabelPage extends StatefulWidget {
  const Icon3HasLabelPage({Key? key}) : super(key: key);

  @override
  State<Icon3HasLabelPage> createState() => _Icon3HasLabelPageState();
}

class _Icon3HasLabelPageState extends State<Icon3HasLabelPage> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(FZStrings.icon3HasLabel),
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
            GoBackButtonWidget(),
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
            selectedIcon: Icon(
              Icons.home,
              color: Colors.black,
            ),
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
            selectedIcon: Stack(
              clipBehavior: Clip.none,
              children: const [
                Icon(
                  Icons.search,
                  color: Colors.black,
                ),
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
            selectedIcon: Stack(
              clipBehavior: Clip.none,
              children: [
                const Icon(
                  Icons.star,
                  color: Colors.black,
                ),
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
        ],
      ),
    );
  }
}
