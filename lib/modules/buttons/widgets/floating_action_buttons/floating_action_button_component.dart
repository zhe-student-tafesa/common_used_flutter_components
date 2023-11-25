import 'package:flutter/material.dart';

import '../../../../common/values/color_manager.dart';

class FloatingActionButtonsComponent extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget icon;

  const FloatingActionButtonsComponent({Key? key, required this.onPressed, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 56,
      height: 56,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.all(
          Radius.circular(16),
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
      child: FloatingActionButton(
        onPressed: onPressed,
        child: icon,
        elevation: 0.0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        backgroundColor: FZColors.primaryContainer,
        mouseCursor: SystemMouseCursors.click,
      ),
    );
  }
}

///  demo: Use FloatingActionButtonsComponent in your project
///  1. create a new StatelessWidget, for example called: MyFloatingActionButton
///  2. in your MyFloatingActionButton's build: return FloatingActionButtonsComponent, you can set your values in FloatingActionButtonsComponent()
///  3. Then you can use MyFloatingActionButton in everywhere in your project.
class MyFloatingActionButton extends StatelessWidget {
  final VoidCallback onPressed;

  const MyFloatingActionButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButtonsComponent(
      onPressed: onPressed,
      icon: const Icon(
        Icons.edit,
        color: FZColors.onPrimaryContainer,
      ),
    );
  }
}
