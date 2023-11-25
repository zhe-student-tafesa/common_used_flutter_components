import 'package:flutter/material.dart';

import '../../../common/values/color_manager.dart';

class LargeBadgeComponent extends StatelessWidget {
  final String labelText;

  const LargeBadgeComponent({Key? key, required this.labelText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Badge(
      smallSize: 6,
      largeSize: 16,
      // textStyle: TextStyle(fontSize: 11),
      // padding: EdgeInsets.all(8),
      alignment: const AlignmentDirectional(1, 0),
      label: Text(labelText),
      isLabelVisible: true,

      child: Container(
        width: 16,
        height: 16,
        decoration: BoxDecoration(
          color: FZColors.error,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
