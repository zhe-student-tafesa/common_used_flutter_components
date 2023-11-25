import 'package:flutter/material.dart';

import '../../../../common/values/color_manager.dart';

class StandardIconButtonComponent extends StatelessWidget {
  final VoidCallback onPressed;

  final Widget icon;

  const StandardIconButtonComponent({Key? key, required this.onPressed, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: icon,
    );
  }
}

///  demo: Use StandardIconButtonComponent in your project
///  1. create a new StatelessWidget, for example called: MyStandardIconButton
///  2. in your MyStandardIconButton's build: return StandardIconButtonComponent, you can set your values in StandardIconButtonComponent()
///  3. Then you can use MyStandardIconButton in everywhere in your project.
class MyStandardIconButton extends StatelessWidget {
  final VoidCallback onPressed;

  const MyStandardIconButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StandardIconButtonComponent(
      onPressed: onPressed,
      icon: const Icon(
        Icons.favorite,
        color: FZColors.primary,
      ),
    );
  }
}
