import 'package:flutter/material.dart';

import '../../../../../common/values/color_manager.dart';
import '../../../../../common/values/decoration_manager.dart';
import '../../../../../common/widgets/fz_text.dart';
import '../../../common/extentions/enums.dart';
import '../../../common/values/image_manager.dart';

enum ButtonThemType {
  primary1,
  primary2,
  primary3,
  primary4,
  secondary1,
  secondary2,
  secondary3,
}

class FZButton {
  static Widget primary(
    String text, {
    required VoidCallback onTap,
    double? paddingTop,
    double? paddingBottom,
    double? paddingLeft,
    double? paddingRight,
    Color? bgColor,
    String? keyName,
  }) {
    return Padding(
      padding: EdgeInsets.fromLTRB(paddingLeft ?? 20, paddingTop ?? 20, paddingRight ?? 20, paddingBottom ?? 0), // Default top padding is  25
      child: FZButtonWidget(
        text: text,
        buttonThemType: ButtonThemType.primary1,
        onTap: onTap,
        decoration: FZDecoration.colorDecoration(color: bgColor ?? FZColors.primaryPink, radius: 20),
        keyName: keyName,
      ),
    );
  }

  static Widget primary2(String text,
      {required VoidCallback onTap, double? paddingTop, double? paddingBottom, double? paddingLeft, double? paddingRight}) {
    return Padding(
      padding: EdgeInsets.fromLTRB(paddingLeft ?? 20, paddingTop ?? 25, paddingRight ?? 20, paddingBottom ?? 0), // Default top padding is  25
      child: FZButtonWidget(
        text: text,
        buttonThemType: ButtonThemType.primary2,
        onTap: onTap,
        decoration: FZDecoration.colorDecoration(color: FZColors.brighterGray, radius: 5),
      ),
    );
  }

  static Widget primary3(String text, Widget icon,
      {required VoidCallback onTap,
      double? paddingTop,
      double? paddingBottom,
      double? paddingLeft,
      double? paddingRight,
      double? space,
      Color? textColor,
      double? fontSize,
      TextAlign? textAlign,
      required MainAxisAlignment mainAxisAlignment}) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.fromLTRB(paddingLeft ?? 0, paddingTop ?? 0, paddingRight ?? 0, paddingBottom ?? 0),
        child: Row(
          mainAxisAlignment: mainAxisAlignment,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FZText.subTitle1(text,
                fontSize: fontSize ?? 13.0,
                fontWeight: FontWeightNames.semiBold,
                color: textColor ?? FZColors.primaryBlack,
                textAlign: textAlign ?? TextAlign.center),
            SizedBox(
              width: space ?? 5,
            ),
            Center(child: icon)
          ],
        ),
      ),
    );
  }

  static Widget secondary1(String text,
      {required VoidCallback onTap, double? paddingTop, double? paddingBottom, double? paddingLeft, double? paddingRight}) {
    return Padding(
      padding: EdgeInsets.fromLTRB(paddingLeft ?? 20, paddingTop ?? 10, paddingRight ?? 20, paddingBottom ?? 0), // Default top padding is  25
      child: FZButtonWidget(
        text: text,
        buttonThemType: ButtonThemType.secondary1,
        onTap: onTap,
        decoration: FZDecoration.colorDecoration(color: FZColors.magnolia, radius: 5),
      ),
    );
  }

  static Widget secondary2(String text,
      {required VoidCallback onTap, double? paddingTop, double? paddingBottom, double? paddingLeft, double? paddingRight}) {
    return Padding(
      padding: EdgeInsets.fromLTRB(paddingLeft ?? 20, paddingTop ?? 10, paddingRight ?? 20, paddingBottom ?? 0), // Default top padding is  25
      child: FZButtonWidget(
        text: text,
        buttonThemType: ButtonThemType.secondary2,
        onTap: onTap,
        decoration: FZDecoration.colorDecoration(color: FZColors.brighterGray, radius: 5),
      ),
    );
  }

  static Widget secondary3(String text,
      {required VoidCallback onTap, double? paddingTop, double? paddingBottom, double? paddingLeft, double? paddingRight}) {
    return Padding(
      padding: EdgeInsets.fromLTRB(paddingLeft ?? 0, paddingTop ?? 10, paddingRight ?? 0, paddingBottom ?? 0), // Default top padding is  25
      child: FZButtonWidget(
        text: text,
        buttonThemType: ButtonThemType.secondary3,
        onTap: onTap,
        decoration: FZDecoration.colorDecoration(color: FZColors.lightBlue, radius: 20),
      ),
    );
  }
}

class FZButtonWidget extends StatelessWidget {
  final String text;
  final ButtonThemType? buttonThemType;
  final BoxDecoration? decoration;
  final VoidCallback? onTap;
  final TextStyle? textStyle;
  final String? keyName;

  const FZButtonWidget({Key? key, required this.text, this.buttonThemType, this.decoration, this.onTap, this.textStyle, this.keyName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle? textStyle;
    double? height;
    double? width;
    switch (buttonThemType) {
      case ButtonThemType.primary1:
        textStyle = const TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: FZColors.primaryWhite);
        height = 40;
        break;
      case ButtonThemType.primary2:
        textStyle = const TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: FZColors.philippineGray);
        height = 40;
        break;
      case ButtonThemType.primary3:
        textStyle = const TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: FZColors.lighterGray);
        height = 40;
        break;
      case ButtonThemType.primary4:
        textStyle = textStyle;
        height = 40;
        break;
      case ButtonThemType.secondary1:
      case ButtonThemType.secondary2:
        textStyle = const TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: FZColors.lightBlack);
        height = 30;
        break;
      case ButtonThemType.secondary3:
        textStyle = const TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: FZColors.lightGreen);
        height = 30;
        width = 160;
        break;

      default:
        textStyle = Theme.of(context).textTheme.headline1;
        height = 40;
        break;
    }

    return Container(
      width: width,
      height: height,
      decoration: decoration,
      child: Material(
        child: InkWell(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          child: Center(
            child: Text(
              text,
              style: textStyle,
            ),
          ),
          onTap: onTap,
          key: Key(keyName ?? 'notGiveName'),
        ),
        color: Colors.transparent,
      ),
    );
  }
}

class CustomizeTextButton extends StatelessWidget {
  const CustomizeTextButton({
    Key? key,
    required this.title,
    this.width,
    this.height,
    this.activeBgColor,
    this.inactiveBgColor,
    this.activeBorderColor,
    this.inactiveBorderColor,
    this.radius,
    this.padding,
    this.textPadding,
    this.activeBorderWidth,
    this.inactiveBorderWidth,
    this.value,
    this.groupValue,
    this.activeStyle,
    this.inactiveStyle,
    this.activeBoxShadow,
    this.onTap,
    this.alignment = Alignment.center,
    this.imageName,
  }) : super(key: key);
  final dynamic value;
  final dynamic groupValue;
  final double? width;
  final double? height;
  final Color? activeBgColor;
  final Color? inactiveBgColor;
  final Color? activeBorderColor;
  final Color? inactiveBorderColor;
  final double? radius;
  final double? activeBorderWidth;
  final double? inactiveBorderWidth;
  final TextStyle? activeStyle;
  final TextStyle? inactiveStyle;
  final List<BoxShadow>? activeBoxShadow;
  final String title;
  final Alignment? alignment;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? textPadding;
  final String? imageName;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    bool _isSelected = value == groupValue;
    return Padding(
      padding: padding ?? const EdgeInsets.all(0),
      child: GestureDetector(
        onTap: () => onTap?.call(),
        child: Container(
          padding: padding,
          alignment: alignment,
          height: height,
          width: width,
          decoration: BoxDecoration(
              color: _isSelected ? activeBgColor ?? Colors.transparent : inactiveBgColor ?? Colors.transparent,
              border: Border.all(
                  width: _isSelected ? activeBorderWidth ?? 1 : inactiveBorderWidth ?? 1,
                  color: _isSelected ? activeBorderColor ?? Colors.transparent : inactiveBorderColor ?? Colors.transparent),
              borderRadius: BorderRadius.circular(radius ?? 0),
              boxShadow: _isSelected ? activeBoxShadow : []),
          child: Padding(
            padding: textPadding ?? const EdgeInsets.all(0),
            child: imageName != null
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (imageName != null) FZImage(imageName!),
                      if (imageName != null) const SizedBox(width: 10),
                      Text(title, style: _isSelected ? activeStyle : inactiveStyle, textAlign: TextAlign.center),
                    ],
                  )
                : Text(title, style: _isSelected ? activeStyle : inactiveStyle, textAlign: TextAlign.center),
          ),
        ),
      ),
    );
  }
}
