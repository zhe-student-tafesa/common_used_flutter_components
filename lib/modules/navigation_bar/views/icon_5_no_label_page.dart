import 'package:common_used_flutter_components/common/values/color_manager.dart';
import 'package:common_used_flutter_components/common/values/image_manager.dart';
import 'package:common_used_flutter_components/modules/tool_app_bars/widget/go_back_button_widget.dart';
import 'package:flutter/material.dart';

import '../../../common/values/string_manager.dart';

class Icon5NoLabelPage extends StatefulWidget {
  const Icon5NoLabelPage({Key? key}) : super(key: key);

  @override
  State<Icon5NoLabelPage> createState() => _Icon5NoLabelPageState();
}

class _Icon5NoLabelPageState extends State<Icon5NoLabelPage> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [Text('aa'), GoBackButtonWidget()],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [Text('bb'), GoBackButtonWidget()],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [Text('cc'), GoBackButtonWidget()],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [Text('dd'), GoBackButtonWidget()],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [Text('ee'), GoBackButtonWidget()],
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(FZStrings.icon5NoLabel),
      ),
      body: Center(
        child: _pages[_currentIndex],
      ),
      bottomNavigationBar: NavigationBar(
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        selectedIndex: _currentIndex,
        onDestinationSelected: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        destinations: [
          const NavigationDestination(
              icon: Icon(
                Icons.message,
                color: FZColors.primaryBlack,
              ),
              label: 'label'),
          NavigationDestination(
              icon: Stack(
                clipBehavior: Clip.none,
                children: const [
                  Icon(
                    Icons.airplanemode_active,
                    color: FZColors.primaryBlack,
                  ),
                  Positioned(
                    right: -6,
                    top: -6,
                    child: FZImage(FZMediaNames.iconBadgeNotice),
                  ),
                ],
              ),
              label: 'label'),
          NavigationDestination(
              icon: Stack(
                clipBehavior: Clip.none,
                children: [
                  const Icon(
                    Icons.local_fire_department_outlined,
                    color: FZColors.primaryBlack,
                  ),
                  Positioned(
                    right: -6,
                    top: -6,
                    child: Container(
                      width: 16,
                      height: 16,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: FZColors.noticeRed,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Text(
                        '9',
                        style: TextStyle(fontSize: 11, color: FZColors.primaryWhite),
                      ),
                    ),
                  )
                ],
              ),
              label: 'label'),
          const NavigationDestination(
              icon: Icon(
                Icons.view_comfortable_sharp,
                color: FZColors.primaryBlack,
              ),
              label: 'label'),
          const NavigationDestination(
              icon: Icon(
                Icons.group_rounded,
                color: FZColors.primaryBlack,
              ),
              label: 'label'),
        ],
      ),
    );
  }
}
