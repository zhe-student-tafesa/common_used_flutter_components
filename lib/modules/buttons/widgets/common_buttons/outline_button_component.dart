import 'package:flutter/material.dart';

import '../../../../common/values/color_manager.dart';

class OutlineButtonComponent extends StatefulWidget {
  final String buttonText;
  final Color fontColor;
  final VoidCallback onPressed;
  final double minWidth;
  final double minHeight;
  final Color filledColor;
  final Widget? icon;

  const OutlineButtonComponent({
    Key? key,
    required this.buttonText,
    this.fontColor = FZColors.primary,
    required this.onPressed,
    required this.minWidth,
    required this.minHeight,
    this.filledColor = FZColors.surface,
    this.icon,
  }) : super(key: key);

  @override
  State<OutlineButtonComponent> createState() => _OutlineButtonComponentState();
}

class _OutlineButtonComponentState extends State<OutlineButtonComponent> {
  @override
  Widget build(BuildContext context) {
    double minWidth = 0;
    double screenWidth = MediaQuery.of(context).size.width;
    if (widget.minWidth > (screenWidth - 40)) {
      minWidth = screenWidth - 40;
    } else {
      minWidth = widget.minWidth;
    }
    final ButtonStyle style = ButtonStyle(
      elevation: MaterialStateProperty.all(0.0),
      backgroundColor: MaterialStateProperty.all(widget.filledColor),
      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(100))),
      minimumSize: MaterialStateProperty.all(Size(minWidth, widget.minHeight)),
      shadowColor: MaterialStateProperty.all(FZColors.shadow),
      surfaceTintColor: MaterialStateProperty.all(FZColors.surfaceTintColor),
      side: MaterialStateProperty.all(const BorderSide(width: 1, color: FZColors.outline)),
    );
    return OutlinedButton(
      style: style,
      onPressed: widget.onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (widget.icon != null) widget.icon!,
          if (widget.icon != null) const SizedBox(width: 8),
          Text(
            widget.buttonText,
            style: TextStyle(color: widget.fontColor, fontSize: 14.0, fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}

///  demo: Use OutlineButtonComponent in your project
///  1. create a new StatefulWidget, for example called: MyOutlineButton
///  2. in your MyOutlineButton's build: return OutlineButtonComponent, you can set your values in OutlineButtonComponent()
///  3. Then you can use MyOutlineButton in everywhere in your project.
class MyOutlineButton extends StatefulWidget {
  final VoidCallback onPressed;

  const MyOutlineButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  State<MyOutlineButton> createState() => _MyOutlineButtonState();
}

class _MyOutlineButtonState extends State<MyOutlineButton> {
  @override
  Widget build(BuildContext context) {
    /// set your values in OutlineButtonComponent()
    return OutlineButtonComponent(
      buttonText: 'Outlined Button',
      onPressed: widget.onPressed,
      minWidth: 200,
      minHeight: 40,
    );
  }
}
