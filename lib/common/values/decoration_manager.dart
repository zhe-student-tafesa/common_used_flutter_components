import 'package:flutter/cupertino.dart';

import 'color_manager.dart';

class FZDecoration {

  static BoxDecoration standardBackground(){
    return gradientDecoration(colors: [FZColors.primaryWhite, FZColors.lighterGray] , radius: 0);
  }

  static BoxDecoration gradientDecoration({List<Color>? colors, double? radius}) {
    return BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: colors ?? [FZColors.primaryBlack, FZColors.secondaryGray],
      ),
      borderRadius: BorderRadius.all(Radius.circular(radius ?? 22)),
    );
  }

  static BoxDecoration colorDecoration({Color? color, double? radius}) {
    return BoxDecoration(color: color ?? FZColors.primaryOrange, borderRadius: BorderRadius.all(Radius.circular(radius ?? 22)));
  }

}
