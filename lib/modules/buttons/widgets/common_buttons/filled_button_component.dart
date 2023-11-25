import 'package:flutter/material.dart';

import '../../../../common/values/color_manager.dart';

class FilledButtonComponent extends StatefulWidget {
  final String buttonText;
  final Color fontColor;
  final VoidCallback onPressed;
  final double minWidth;
  final double minHeight;
  final Color filledColor;
  final Widget? icon;

  const FilledButtonComponent({
    Key? key,
    required this.buttonText,
    this.fontColor = FZColors.onPrimary,
    required this.onPressed,
    required this.minWidth,
    required this.minHeight,
    this.filledColor = FZColors.primary,
    this.icon,
  }) : super(key: key);

  @override
  State<FilledButtonComponent> createState() => _FilledButtonComponentState();
}

class _FilledButtonComponentState extends State<FilledButtonComponent> {
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
    );
    return ElevatedButton(
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

///  demo: Use FilledButtonComponent in your project
///  1. create a new StatefulWidget, for example called: NextButton89
///  2. in your NextButton89's build: return FilledButtonComponent, you can set your values in FilledButtonComponent()
///  3. Then you can use NextButton89 in everywhere in your project.
class NextButton89 extends StatefulWidget {
  final VoidCallback onPressed;

  const NextButton89({Key? key, required this.onPressed}) : super(key: key);

  @override
  State<NextButton89> createState() => _NextButton89State();
}

class _NextButton89State extends State<NextButton89> {
  @override
  Widget build(BuildContext context) {
    /// set your values in FilledButtonComponent()
    return FilledButtonComponent(
      buttonText: 'Filled Button',
      onPressed: widget.onPressed,
      minWidth: 200,
      minHeight: 40,
    );
  }
}
