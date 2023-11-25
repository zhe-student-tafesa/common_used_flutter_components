import 'package:flutter/material.dart';

import '../../../../common/values/color_manager.dart';

class ExtendedFABWithIconComponent extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonName;
  final Widget icon;

  const ExtendedFABWithIconComponent({
    Key? key,
    required this.onPressed,
    required this.icon,
    required this.buttonName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: onPressed,
      icon: icon,
      elevation: 0.0,
      backgroundColor: FZColors.primaryContainer,
      mouseCursor: SystemMouseCursors.click,
      label: Text(
        buttonName,
        style: const TextStyle(color: FZColors.primary),
      ),
    );
  }
}

///  demo: Use ExtendedFABWithIconComponent in your project
///  1. create a new StatelessWidget, for example called: MyExtendedFloatingActionButtonWithIcon
///  2. in your MyExtendedFloatingActionButtonWithIcon's build: return ExtendedFABWithIconComponent, you can set your values in ExtendedFABWithIconComponent()
///  3. Then you can use MyExtendedFloatingActionButtonWithIcon in everywhere in your project.
class MyExtendedFloatingActionButtonWithIcon extends StatelessWidget {
  final VoidCallback onPressed;

  const MyExtendedFloatingActionButtonWithIcon({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExtendedFABWithIconComponent(
      onPressed: onPressed,
      icon: const Icon(
        Icons.edit,
        color: FZColors.primary,
      ),
      buttonName: 'Extended FAB',
    );
  }
}
