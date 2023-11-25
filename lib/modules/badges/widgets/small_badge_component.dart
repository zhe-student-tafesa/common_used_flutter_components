import 'package:flutter/material.dart';

import '../../../common/values/color_manager.dart';

class SmallBadgeComponent extends StatelessWidget {
  const SmallBadgeComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Badge(
      smallSize: 6,
      largeSize: 16,
      textStyle: TextStyle(fontSize: 11),
      isLabelVisible: false,
      child: Container(
        width: 6,
        height: 6,
        decoration: BoxDecoration(
          color: FZColors.error,
          borderRadius: BorderRadius.circular(3),
        ),
      ),
    );
  }
}
