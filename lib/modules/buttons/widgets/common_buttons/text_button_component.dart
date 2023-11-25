import 'package:common_used_flutter_components/common/values/color_manager.dart';
import 'package:flutter/material.dart';

class TextButtonComponent extends StatefulWidget {
  final String buttonText;
  final Color fontColor;
  final VoidCallback onPressed;
  final double minWidth;
  final double minHeight;

  final Widget? icon;

  const TextButtonComponent({
    Key? key,
    required this.buttonText,
    this.fontColor = FZColors.primary,
    required this.onPressed,
    required this.minWidth,
    required this.minHeight,
    this.icon,
  }) : super(key: key);

  @override
  State<TextButtonComponent> createState() => _TextButtonComponentState();
}

class _TextButtonComponentState extends State<TextButtonComponent> {
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
      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(100))),
      minimumSize: MaterialStateProperty.all(Size(minWidth, widget.minHeight)),
      shadowColor: MaterialStateProperty.all(FZColors.shadow),
      surfaceTintColor: MaterialStateProperty.all(FZColors.surfaceTintColor),
    );
    return TextButton(
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

///  demo: Use TextButtonComponent in your project
///  1. create a new StatefulWidget, for example called: MyTextButton
///  2. in your MyTextButton's build: return TextButtonComponent, you can set your values in TextButtonComponent()
///  3. Then you can use NextButton89 in everywhere in your project.
class MyTextButton extends StatefulWidget {
  final VoidCallback onPressed;

  const MyTextButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  State<MyTextButton> createState() => _MyTextButtonState();
}

class _MyTextButtonState extends State<MyTextButton> {
  @override
  Widget build(BuildContext context) {
    /// set your values in TextButtonComponent()
    return TextButtonComponent(
      buttonText: 'Text Button',
      onPressed: widget.onPressed,
      minWidth: 1500,
      minHeight: 40,
    );
  }
}
