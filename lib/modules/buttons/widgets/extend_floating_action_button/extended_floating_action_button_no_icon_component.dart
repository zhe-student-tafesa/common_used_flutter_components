import 'package:flutter/material.dart';

import '../../../../common/values/color_manager.dart';

class ExtendedFABNoIconComponent extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonName;

  const ExtendedFABNoIconComponent({
    Key? key,
    required this.onPressed,
    required this.buttonName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: onPressed,
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

///  demo: Use ExtendedFABNoIconComponent in your project
///  1. create a new StatelessWidget, for example called: MyExtendedFABNoIcon
///  2. in your MyExtendedFABNoIcon's build: return ExtendedFABNoIconComponent, you can set your values in ExtendedFABNoIconComponent()
///  3. Then you can use MyExtendedFloatingActionButtonWithIcon in everywhere in your project.
class MyExtendedFABNoIcon extends StatelessWidget {
  final VoidCallback onPressed;

  const MyExtendedFABNoIcon({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExtendedFABNoIconComponent(
      onPressed: onPressed,
      buttonName: 'Extended FAB',
    );
  }
}
