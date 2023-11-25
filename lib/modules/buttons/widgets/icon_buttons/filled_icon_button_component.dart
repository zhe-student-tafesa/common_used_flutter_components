import 'package:common_used_flutter_components/common/values/color_manager.dart';
import 'package:flutter/material.dart';

class FilledIconButtonComponent extends StatelessWidget {
  final VoidCallback onPressed;
  final double minWidth;
  final double minHeight;
  final Color filledColor;
  final Widget icon;

  const FilledIconButtonComponent({
    Key? key,
    required this.onPressed,
    this.minWidth = 40,
    this.minHeight = 40,
    required this.filledColor,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ButtonStyle(
      elevation: MaterialStateProperty.all(0.0),
      backgroundColor: MaterialStateProperty.all(filledColor),
      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      minimumSize: MaterialStateProperty.all(Size(minWidth, minHeight)),
    );
    return IconButton(
      onPressed: onPressed,
      style: style,
      icon: icon,
    );
  }
}

///  demo: Use FilledIconButtonComponent in your project
///  1. create a new StatelessWidget, for example called: MyFilledIconButton
///  2. in your MyFilledIconButton's build: return FilledIconButtonComponent, you can set your values in FilledIconButtonComponent()
///  3. Then you can use MyFilledIconButton in everywhere in your project.
class MyFilledIconButton extends StatelessWidget {
  final VoidCallback onPressed;

  const MyFilledIconButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// set your values in FilledButtonComponent()
    return FilledIconButtonComponent(
      onPressed: onPressed,
      filledColor: FZColors.surfaceVariant,
      icon: const Icon(
        Icons.favorite,
        color: FZColors.primary,
      ),
    );
  }
}
