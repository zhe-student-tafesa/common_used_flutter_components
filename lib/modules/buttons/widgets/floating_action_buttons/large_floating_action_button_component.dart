import 'package:flutter/material.dart';

import '../../../../common/values/color_manager.dart';

class LargeFloatingActionButtonsComponent extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget icon;

  const LargeFloatingActionButtonsComponent({Key? key, required this.onPressed, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 96,
      height: 96,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.all(
          Radius.circular(28),
        ),
        boxShadow: [
          BoxShadow(
            color: FZColors.shadow,
            blurRadius: 1,
            spreadRadius: 0,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: FloatingActionButton.large(
        onPressed: onPressed,
        child: icon,
        elevation: 0.0,
        // shape: const RoundedRectangleBorder(
        //   borderRadius: BorderRadius.all(Radius.circular(16)),
        // ),
        backgroundColor: FZColors.primaryContainer,
        mouseCursor: SystemMouseCursors.click,
      ),
    );
  }
}

///  demo: Use LargeFloatingActionButtonsComponent in your project
///  1. create a new StatelessWidget, for example called: MyLargeFloatingActionButton
///  2. in your MyLargeFloatingActionButton's build: return LargeFloatingActionButtonsComponent, you can set your values in LargeFloatingActionButtonsComponent()
///  3. Then you can use MyLargeFloatingActionButton in everywhere in your project.
class MyLargeFloatingActionButton extends StatelessWidget {
  final VoidCallback onPressed;

  const MyLargeFloatingActionButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LargeFloatingActionButtonsComponent(
      onPressed: onPressed,
      icon: const Icon(
        Icons.edit,
        color: FZColors.onPrimaryContainer,
      ),
    );
  }
}
