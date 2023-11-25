import 'package:common_used_flutter_components/common/values/color_manager.dart';
import 'package:common_used_flutter_components/common/values/image_manager.dart';
import 'package:common_used_flutter_components/common/values/string_manager.dart';
import 'package:flutter/material.dart';

import '../../tool_app_bars/widget/go_back_button_widget.dart';

class Icon3NoLabelPage extends StatefulWidget {
  const Icon3NoLabelPage({Key? key}) : super(key: key);

  @override
  State<Icon3NoLabelPage> createState() => _Icon3NoLabelPageState();
}

class _Icon3NoLabelPageState extends State<Icon3NoLabelPage> {
  final List<Widget> _pages = [
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(child: const Text('message')),
        const GoBackButtonWidget(),
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text('airplane'),
        GoBackButtonWidget(),
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(child: const Text('fire')),
        const GoBackButtonWidget(),
      ],
    ),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(FZStrings.icon3NoLabel),
      ),
      body: Center(child: _pages[currentIndex]),
      bottomNavigationBar: NavigationBar(
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        selectedIndex: currentIndex,
        onDestinationSelected: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        destinations: [
          const NavigationDestination(
            icon: Icon(Icons.message),
            selectedIcon: Icon(Icons.message, color: FZColors.primaryBlack),
            label: 'aa',
          ),
          NavigationDestination(
            icon: Stack(
              clipBehavior: Clip.none,
              children: const [
                Icon(Icons.airplanemode_active, color: FZColors.primaryBlack),
                Positioned(top: -6, right: -6, child: FZImage(FZMediaNames.iconBadgeNotice)),
              ],
            ),
            selectedIcon: Stack(
              clipBehavior: Clip.none,
              children: const [
                Icon(Icons.airplanemode_active, color: FZColors.primaryBlack),
                Positioned(top: -6, right: -6, child: FZImage(FZMediaNames.iconBadgeNotice)),
              ],
            ),
            label: 'bb',
          ),
          NavigationDestination(
            icon: Stack(
              clipBehavior: Clip.none,
              children: [
                const Icon(Icons.local_fire_department, color: FZColors.primaryBlack),
                Positioned(
                  top: -6,
                  right: -6,
                  child: Container(
                    height: 16,
                    width: 16,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: FZColors.noticeRed,
                    ),
                    child: const Text(
                      '9',
                      style: TextStyle(fontSize: 11, color: FZColors.primaryWhite),
                    ),
                  ),
                ),
              ],
            ),
            selectedIcon: Stack(
              clipBehavior: Clip.none,
              children: const [
                Icon(Icons.local_fire_department, color: FZColors.primaryBlack),
                Positioned(top: -6, right: -6, child: FZImage(FZMediaNames.iconBadgeNotice)),
              ],
            ),
            label: 'cc',
          ),
        ],
      ),
    );
  }
}
