import 'package:common_used_flutter_components/common/values/color_manager.dart';
import 'package:common_used_flutter_components/common/values/image_manager.dart';
import 'package:common_used_flutter_components/modules/tool_app_bars/widget/go_back_button_widget.dart';
import 'package:flutter/material.dart';

import '../../../common/values/string_manager.dart';

class Icon4NoLabelPage extends StatefulWidget {
  const Icon4NoLabelPage({Key? key}) : super(key: key);

  @override
  State<Icon4NoLabelPage> createState() => _Icon4NoLabelPageState();
}

class _Icon4NoLabelPageState extends State<Icon4NoLabelPage> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [Text('message'), GoBackButtonWidget()],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [Text('air plane mode'), GoBackButtonWidget()],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text('fire'),
        GoBackButtonWidget(),
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('group'),
        GoBackButtonWidget(),
      ],
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(FZStrings.icon4NoLabel),
      ),
      body: Center(child: _pages[_currentIndex]),
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
                color: Colors.black,
              ),
              label: 'aa'),
          NavigationDestination(
              icon: Stack(
                clipBehavior: Clip.none,
                children: const [
                  Icon(
                    Icons.airplanemode_active,
                    color: Colors.black,
                  ),
                  Positioned(right: -6, top: -6, child: FZImage(FZMediaNames.iconBadgeNotice)),
                ],
              ),
              label: 'bb'),
          NavigationDestination(
              icon: Stack(
                clipBehavior: Clip.none,
                children: [
                  const Icon(
                    Icons.local_fire_department_outlined,
                    color: Colors.black,
                  ),
                  Positioned(
                    right: -6,
                    top: -6,
                    child: Container(
                      height: 16,
                      width: 16,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: FZColors.noticeRed,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Text(
                        '9',
                        style: TextStyle(
                          fontSize: 11,
                          color: FZColors.primaryWhite,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              label: 'cc'),
          const NavigationDestination(
              icon: Icon(
                Icons.group_rounded,
                color: Colors.black,
              ),
              label: 'dd'),
        ],
      ),
    );
  }
}
