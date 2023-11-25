import 'package:common_used_flutter_components/common/values/color_manager.dart';
import 'package:flutter/material.dart';

class FilledTonalIconButtonComponent extends StatelessWidget {
  final VoidCallback onPressed;
  final double minWidth;
  final double minHeight;
  final Color filledColor;
  final Widget icon;

  const FilledTonalIconButtonComponent({
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

///  demo: Use FilledTonalIconButtonComponent in your project
///  1. create a new StatelessWidget, for example called: MyFilledTonalIconButton
///  2. in your MyFilledTonalIconButton's build: return FilledTonalIconButtonComponent, you can set your values in FilledTonalIconButtonComponent()
///  3. Then you can use MyFilledIconButton in everywhere in your project.
class MyFilledTonalIconButton extends StatelessWidget {
  final VoidCallback onPressed;

  const MyFilledTonalIconButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// set your values in FilledTonalIconButtonComponent()
    return FilledTonalIconButtonComponent(
      onPressed: onPressed,
      filledColor: FZColors.surfaceVariant,
      icon: const Icon(
        Icons.favorite,
        color: FZColors.onSurfaceVariant,
      ),
    );
  }
}
