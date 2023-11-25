import 'package:flutter/material.dart';

import '../../../../common/values/color_manager.dart';

class SmallFloatingActionButtonsComponent extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget icon;

  const SmallFloatingActionButtonsComponent({Key? key, required this.onPressed, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.all(
          Radius.circular(12),
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
      child: FloatingActionButton.small(
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

///  demo: Use SmallFloatingActionButtonsComponent in your project
///  1. create a new StatelessWidget, for example called: MySmallFloatingActionButtons
///  2. in your MySmallFloatingActionButtons's build: return SmallFloatingActionButtonsComponent, you can set your values in SmallFloatingActionButtonsComponent()
///  3. Then you can use MySmallFloatingActionButtons in everywhere in your project.
class MySmallFloatingActionButtons extends StatelessWidget {
  final VoidCallback onPressed;

  const MySmallFloatingActionButtons({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SmallFloatingActionButtonsComponent(
      onPressed: onPressed,
      icon: const Icon(
        Icons.edit,
        color: FZColors.onPrimaryContainer,
      ),
    );
  }
}
