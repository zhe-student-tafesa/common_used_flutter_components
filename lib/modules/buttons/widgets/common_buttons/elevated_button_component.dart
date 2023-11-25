import 'package:flutter/material.dart';

import '../../../../common/values/color_manager.dart';

class ElevatedButtonComponent extends StatefulWidget {
  final String buttonText;
  final Color fontColor;
  final VoidCallback onPressed;
  final double minWidth;
  final double minHeight;
  final Color filledColor;
  final Widget? icon;

  const ElevatedButtonComponent({
    Key? key,
    required this.buttonText,
    this.fontColor = FZColors.primary,
    required this.onPressed,
    this.minWidth = 120,
    this.minHeight = 40,
    this.filledColor = FZColors.surface,
    this.icon,
  }) : super(key: key);

  @override
  State<ElevatedButtonComponent> createState() => _ElevatedButtonComponentState();
}

class _ElevatedButtonComponentState extends State<ElevatedButtonComponent> {
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
      elevation: MaterialStateProperty.all(1.0),
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
          Flexible(
            child: Text(
              widget.buttonText,
              style: TextStyle(color: widget.fontColor, fontSize: 14.0, fontWeight: FontWeight.w700),
            ),
          ),
        ],
      ),
    );
  }
}

///  demo: Use ElevatedButtonComponent in your project
///  1. create a new StatefulWidget, for example called: LoginButton340
///  2. in your LoginButton340's build: return ElevatedButtonComponent, you can set your values in ElevatedButtonComponent()
///  3. Then you can use LoginButton340 in everywhere in your project.

class LoginButton340 extends StatefulWidget {
  final VoidCallback onPressed;

  const LoginButton340({Key? key, required this.onPressed}) : super(key: key);

  @override
  State<LoginButton340> createState() => _LoginButton340State();
}

class _LoginButton340State extends State<LoginButton340> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    /// set your values in ElevatedButtonComponent()
    return ElevatedButtonComponent(
      buttonText: 'Elevated button',
      minHeight: 40,
      minWidth: 340,
      icon: const Icon(
        Icons.add,
        color: FZColors.primary,
      ),
      onPressed: widget.onPressed,
    );
  }
}
