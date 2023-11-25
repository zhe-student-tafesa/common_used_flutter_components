import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

import '../extentions/enums.dart';
import 'color_manager.dart';

enum TextThemType {
  headline1,
  headline2,
  headline3,
  headline4,
  headline5,
  headline6,
  subtitle1,
  subtitle2,
  bodyText1,
  bodyText2,
  infoText1,
  linkBodyText1,
  linkBodyText2,
  formTextHeading,
  underline,
  light,
  regular,
  medium,
  semiBold,
  bold
}

class FZTextStyle {
  static TextStyle? getTextStyle(BuildContext context, {TextThemType? textThemeType, double? fontSize, Color? color, FontWeight? fontWeight}) {
    TextStyle? textStyle;

    switch (textThemeType) {
      case TextThemType.headline1:
        textStyle = Theme.of(context).textTheme.headline1?.copyWith(color: color).copyWith(fontSize: fontSize).copyWith(fontWeight: fontWeight);
        break;
      case TextThemType.headline2:
        textStyle = Theme.of(context).textTheme.headline2?.copyWith(color: color).copyWith(fontSize: fontSize).copyWith(fontWeight: fontWeight);
        break;
      case TextThemType.headline3:
        textStyle = Theme.of(context).textTheme.headline3?.copyWith(color: color).copyWith(fontSize: fontSize).copyWith(fontWeight: fontWeight);
        break;
      case TextThemType.headline4:
        textStyle = Theme.of(context).textTheme.headline4?.copyWith(color: color).copyWith(fontSize: fontSize).copyWith(fontWeight: fontWeight);
        break;
      case TextThemType.headline5:
        textStyle = Theme.of(context).textTheme.headline5?.copyWith(color: color).copyWith(fontSize: fontSize).copyWith(fontWeight: fontWeight);

        break;
      case TextThemType.headline6:
        textStyle = Theme.of(context).textTheme.headline6?.copyWith(color: color).copyWith(fontSize: fontSize).copyWith(fontWeight: fontWeight);
        break;
      case TextThemType.subtitle1:
        textStyle = Theme.of(context).textTheme.subtitle1?.copyWith(color: color).copyWith(fontSize: fontSize).copyWith(fontWeight: fontWeight);

        break;
      case TextThemType.subtitle2:
        textStyle = Theme.of(context).textTheme.subtitle2?.copyWith(color: color).copyWith(fontSize: fontSize).copyWith(fontWeight: fontWeight);

        break;
      case TextThemType.bodyText1:
        textStyle = Theme.of(context).textTheme.bodyText1?.copyWith(color: color).copyWith(fontSize: fontSize).copyWith(fontWeight: fontWeight);

        break;
      case TextThemType.bodyText2:
        textStyle = Theme.of(context).textTheme.bodyText2?.copyWith(color: color).copyWith(fontSize: fontSize).copyWith(fontWeight: fontWeight);

        break;
      case TextThemType.infoText1:
        textStyle = TextStyle(fontSize: 12, fontWeight: FontWeightNames.regular, color: (color == null) ? FZColors.darkBlack : color);
        break;
      case TextThemType.linkBodyText1:
        textStyle = TextStyle(fontSize: 14, fontWeight: FontWeightNames.regular, color: (color == null) ? FZColors.primaryWhite : color)
            .copyWith(fontSize: fontSize)
            .copyWith(fontWeight: fontWeight);
        break;
      case TextThemType.linkBodyText2:
        textStyle = TextStyle(fontSize: 14, fontWeight: FontWeightNames.medium, color: (color == null) ? FZColors.darkBlack : color)
            .copyWith(fontSize: fontSize)
            .copyWith(fontWeight: fontWeight);
        break;
      case TextThemType.formTextHeading:
        textStyle = Theme.of(context).textTheme.headline4;
        break;
      case TextThemType.underline:
        textStyle = TextStyle(
                fontSize: 12,
                fontWeight: FontWeightNames.regular,
                color: (color == null) ? FZColors.primaryWhite : color,
                decoration: TextDecoration.underline)
            .copyWith(fontSize: fontSize)
            .copyWith(fontWeight: fontWeight);

        break;
      case TextThemType.light:
        textStyle = TextStyle(fontSize: fontSize, fontWeight: FontWeightNames.light, color: (color == null) ? FZColors.primaryWhite : color)
            .copyWith(fontSize: fontSize)
            .copyWith(fontWeight: fontWeight);

        break;
      case TextThemType.regular:
        textStyle = TextStyle(fontSize: fontSize, fontWeight: FontWeightNames.regular, color: (color == null) ? FZColors.primaryWhite : color)
            .copyWith(fontSize: fontSize)
            .copyWith(fontWeight: fontWeight);
        break;
      case TextThemType.medium:
        textStyle = TextStyle(fontSize: fontSize, fontWeight: FontWeightNames.medium, color: (color == null) ? FZColors.primaryWhite : color)
            .copyWith(fontSize: fontSize)
            .copyWith(fontWeight: fontWeight);
        break;
      case TextThemType.semiBold:
        textStyle = TextStyle(fontSize: fontSize, fontWeight: FontWeightNames.semiBold, color: (color == null) ? FZColors.primaryWhite : color)
            .copyWith(fontSize: fontSize)
            .copyWith(fontWeight: fontWeight);

        break;
      case TextThemType.bold:
        textStyle = TextStyle(fontSize: fontSize, fontWeight: FontWeightNames.bold, color: (color == null) ? FZColors.primaryWhite : color)
            .copyWith(fontSize: fontSize)
            .copyWith(fontWeight: fontWeight);

        break;
      default:
        textStyle = Theme.of(context).textTheme.headline1?.copyWith(fontSize: fontSize).copyWith(fontWeight: fontWeight);
        break;
    }

    return textStyle;
  }
}
