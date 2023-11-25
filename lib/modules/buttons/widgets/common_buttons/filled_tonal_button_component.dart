import 'package:flutter/material.dart';

import '../../../../common/values/color_manager.dart';

class FilledTonalButtonComponent extends StatefulWidget {
  final String buttonText;
  final Color fontColor;
  final VoidCallback onPressed;
  final double minWidth;
  final double minHeight;
  final Color filledColor;
  final Widget? icon;

  const FilledTonalButtonComponent({
    Key? key,
    required this.buttonText,
    this.fontColor = FZColors.onSecondaryContainer,
    required this.onPressed,
    required this.minWidth,
    required this.minHeight,
    this.filledColor = FZColors.secondaryContainer,
    this.icon,
  }) : super(key: key);

  @override
  State<FilledTonalButtonComponent> createState() => _FilledTonalButtonComponentState();
}

class _FilledTonalButtonComponentState extends State<FilledTonalButtonComponent> {
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

///  demo: Use FilledTonalButtonComponent in your project
///  1. create a new StatefulWidget, for example called: NextFilledTonalButton90
///  2. in your NextFilledTonalButton90's build: return FilledTonalButtonComponent, you can set your values in FilledTonalButtonComponent()
///  3. Then you can use NextFilledTonalButton90 in everywhere in your project.
class NextFilledTonalButton90 extends StatefulWidget {
  final VoidCallback onPressed;

  const NextFilledTonalButton90({Key? key, required this.onPressed}) : super(key: key);

  @override
  State<NextFilledTonalButton90> createState() => _NextFilledTonalButton90State();
}

class _NextFilledTonalButton90State extends State<NextFilledTonalButton90> {
  @override
  Widget build(BuildContext context) {
    /// set your values in FilledTonalButtonComponent()
    return FilledTonalButtonComponent(
      buttonText: 'Filled Tonal Button',
      onPressed: widget.onPressed,
      minWidth: 220,
      minHeight: 40,
    );
  }
}
