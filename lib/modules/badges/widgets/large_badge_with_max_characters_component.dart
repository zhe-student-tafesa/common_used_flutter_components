import 'package:flutter/material.dart';

import '../../../common/values/color_manager.dart';

class LargeBadgeWithMaxCharactersComponent extends StatelessWidget {
  final String labelText;

  const LargeBadgeWithMaxCharactersComponent({Key? key, required this.labelText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Badge(
      smallSize: 6,
      largeSize: 16,
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
