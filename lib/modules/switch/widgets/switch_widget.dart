import 'package:flutter/material.dart';

class SwitchWidget extends StatefulWidget {
  final bool value;
  final ValueChanged<bool> onChanged;
  final Widget? activeWidget;
  final Widget? deActiveWidget;
  const SwitchWidget({
    super.key,
    required this.value,
    required this.onChanged,
    this.activeWidget,
    this.deActiveWidget,
  });

  @override
  State<SwitchWidget> createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  bool switchValue = true;

  @override
  void initState() {
    switchValue = widget.value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 52,
      height: 32,
      padding: EdgeInsets.symmetric(horizontal: switchValue ? 4 : 6),
      alignment: switchValue ? Alignment.centerRight : Alignment.centerLeft,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade600, width: switchValue ? 0 : 2),
        borderRadius: BorderRadius.circular(56),
        color: switchValue ? Colors.green.shade900 : Colors.grey.shade300,
      ),
      child: InkWell(
        onTap: () {
          setState(() {
            switchValue = !switchValue;
          });
          widget.onChanged(switchValue);
        },
        child: switchValue ? widget.activeWidget != null ? widget.activeWidget! : Container(
          height: 24,
          width: 24,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: Icon(Icons.check, color: Colors.green.shade900, size: 16),
        ) : widget.deActiveWidget != null ? widget.deActiveWidget! : Container(
          height: 15,
          width: 15,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey.shade600,
          ),
        ),
      ),
    );
  }
}