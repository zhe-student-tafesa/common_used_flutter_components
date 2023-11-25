import 'package:flutter/material.dart';

import '../values/text_style_manager.dart';

class FZText {
  static Widget heading1(String text,
      {TextAlign? textAlign,
      double? paddingTop,
      double? paddingBottom,
      double? paddingLeft,
      double? paddingRight,
      Color? color,
      double? fontSize,
      FontWeight? fontWeight,
      int? maxLines}) {
    return FZTextWidget(
      text: text,
      textThemeStyle: TextThemType.headline1,
      textAlign: textAlign,
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
      maxLines: maxLines,
      edgeInsets: EdgeInsets.fromLTRB(paddingLeft ?? 0, paddingTop ?? 0, paddingRight ?? 0, paddingBottom ?? 0),
    );
  }

  static Widget heading2(String text,
      {TextAlign? textAlign,
      double? paddingTop,
      double? paddingBottom,
      double? paddingLeft,
      double? paddingRight,
      Color? color,
      double? fontSize,
      FontWeight? fontWeight,
      int? maxLines}) {
    return FZTextWidget(
        text: text,
        textThemeStyle: TextThemType.headline2,
        textAlign: textAlign,
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        maxLines: maxLines,
        edgeInsets: EdgeInsets.fromLTRB(paddingLeft ?? 0, paddingTop ?? 0, paddingRight ?? 0, paddingBottom ?? 0));
  }

  static Widget heading3(String text,
      {TextAlign? textAlign,
      double? paddingTop,
      double? paddingBottom,
      double? paddingLeft,
      double? paddingRight,
      Color? color,
      double? fontSize,
      FontWeight? fontWeight,
      int? maxLines}) {
    return FZTextWidget(
        text: text,
        textThemeStyle: TextThemType.headline3,
        textAlign: textAlign,
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        maxLines: maxLines,
        edgeInsets: EdgeInsets.fromLTRB(paddingLeft ?? 0, paddingTop ?? 0, paddingRight ?? 0, paddingBottom ?? 0));
  }

  static Widget heading4(String text,
      {TextAlign? textAlign,
      double? paddingTop,
      double? paddingBottom,
      double? paddingLeft,
      double? paddingRight,
      Color? color,
      double? fontSize,
      FontWeight? fontWeight,
      int? maxLines}) {
    return FZTextWidget(
        text: text,
        textThemeStyle: TextThemType.headline4,
        textAlign: textAlign,
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        maxLines: maxLines,
        edgeInsets: EdgeInsets.fromLTRB(paddingLeft ?? 0, paddingTop ?? 0, paddingRight ?? 0, paddingBottom ?? 0));
  }

  static Widget heading5(String text,
      {TextAlign? textAlign,
      double? paddingTop,
      double? paddingBottom,
      double? paddingLeft,
      double? paddingRight,
      Color? color,
      double? fontSize,
      FontWeight? fontWeight,
      int? maxLines}) {
    return FZTextWidget(
        text: text,
        textThemeStyle: TextThemType.headline5,
        textAlign: textAlign,
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        edgeInsets: EdgeInsets.fromLTRB(paddingLeft ?? 0, paddingTop ?? 0, paddingRight ?? 0, paddingBottom ?? 0),
        maxLines: maxLines);
  }

  static Widget heading6(String text,
      {TextAlign? textAlign,
      double? paddingTop,
      double? paddingBottom,
      double? paddingLeft,
      double? paddingRight,
      Color? color,
      double? fontSize,
      FontWeight? fontWeight,
      int? maxLines}) {
    return FZTextWidget(
        text: text,
        textThemeStyle: TextThemType.headline6,
        textAlign: textAlign,
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        edgeInsets: EdgeInsets.fromLTRB(paddingLeft ?? 0, paddingTop ?? 0, paddingRight ?? 0, paddingBottom ?? 0),
        maxLines: maxLines);
  }

  static Widget subTitle1(String text,
      {TextAlign? textAlign,
      double? paddingTop,
      double? paddingBottom,
      double? paddingLeft,
      double? paddingRight,
      Color? color,
      double? fontSize,
      FontWeight? fontWeight,
      int? maxLines}) {
    return FZTextWidget(
        text: text,
        textThemeStyle: TextThemType.subtitle1,
        textAlign: textAlign,
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        edgeInsets: EdgeInsets.fromLTRB(paddingLeft ?? 0, paddingTop ?? 0, paddingRight ?? 0, paddingBottom ?? 0),
        maxLines: maxLines);
  }

  static Widget subTitle2(String text,
      {TextAlign? textAlign,
      double? paddingTop,
      double? paddingBottom,
      double? paddingLeft,
      double? paddingRight,
      Color? color,
      double? fontSize,
      FontWeight? fontWeight,
      int? maxLines}) {
    return FZTextWidget(
        text: text,
        textThemeStyle: TextThemType.subtitle2,
        textAlign: textAlign,
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        maxLines: maxLines,
        edgeInsets: EdgeInsets.fromLTRB(paddingLeft ?? 0, paddingTop ?? 0, paddingRight ?? 0, paddingBottom ?? 0));
  }

  static Widget infoText1(String text,
      {TextAlign? textAlign,
      double? paddingTop,
      double? paddingBottom,
      double? paddingLeft,
      double? paddingRight,
      Color? color,
      double? fontSize,
      FontWeight? fontWeight,
      int? maxLines}) {
    return FZTextWidget(
        text: text,
        textThemeStyle: TextThemType.infoText1,
        textAlign: textAlign,
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        maxLines: maxLines,
        edgeInsets: EdgeInsets.fromLTRB(paddingLeft ?? 0, paddingTop ?? 0, paddingRight ?? 0, paddingBottom ?? 0));
  }

  static Widget bodyText1(String text,
      {TextAlign? textAlign,
      double? paddingTop,
      double? paddingBottom,
      double? paddingLeft,
      double? paddingRight,
      Color? color,
      double? fontSize,
      FontWeight? fontWeight,
      int? maxLines}) {
    return FZTextWidget(
        text: text,
        textThemeStyle: TextThemType.bodyText1,
        textAlign: textAlign,
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        maxLines: maxLines,
        edgeInsets: EdgeInsets.fromLTRB(paddingLeft ?? 0, paddingTop ?? 0, paddingRight ?? 0, paddingBottom ?? 0));
  }

  static Widget bodyText2(String text,
      {TextAlign? textAlign,
      double? paddingTop,
      double? paddingBottom,
      double? paddingLeft,
      double? paddingRight,
      Color? color,
      double? fontSize,
      FontWeight? fontWeight,
      int? maxLines}) {
    return FZTextWidget(
        text: text,
        textThemeStyle: TextThemType.bodyText2,
        textAlign: textAlign,
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        maxLines: maxLines,
        edgeInsets: EdgeInsets.fromLTRB(paddingLeft ?? 0, paddingTop ?? 0, paddingRight ?? 0, paddingBottom ?? 0));
  }

  static Widget linkBodyText1(String text,
      {TextAlign? textAlign,
      double? paddingTop,
      double? paddingBottom,
      double? paddingLeft,
      double? paddingRight,
      VoidCallback? onTap,
      Color? color,
      TextStyle? textStyle,
      double? fontSize,
      FontWeight? fontWeight,
      int? maxLines}) {
    return GestureDetector(
      child: FZTextWidget(
        text: text,
        textThemeStyle: TextThemType.linkBodyText1,
        textAlign: textAlign,
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        maxLines: maxLines,
        edgeInsets: EdgeInsets.fromLTRB(paddingLeft ?? 0, paddingTop ?? 0, paddingRight ?? 0, paddingBottom ?? 0),
      ),
      onTap: onTap,
    );
  }

  static Widget linkBodyText2(String text,
      {TextAlign? textAlign,
      double? paddingTop,
      double? paddingBottom,
      double? paddingLeft,
      double? paddingRight,
      VoidCallback? onTap,
      Color? color,
      double? fontSize,
      FontWeight? fontWeight,
      int? maxLines}) {
    return GestureDetector(
      child: FZTextWidget(
        text: text,
        textThemeStyle: TextThemType.linkBodyText2,
        textAlign: textAlign,
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        maxLines: maxLines,
        edgeInsets: EdgeInsets.fromLTRB(paddingLeft ?? 0, paddingTop ?? 0, paddingRight ?? 0, paddingBottom ?? 0),
      ),
      onTap: onTap,
    );
  }

  static Widget linkBodyTextWithUnderline(String text,
      {TextAlign? textAlign,
      double? paddingTop,
      double? paddingBottom,
      double? paddingLeft,
      double? paddingRight,
      VoidCallback? onTap,
      Color? color,
      double? fontSize,
      FontWeight? fontWeight,
      int? maxLines}) {
    return GestureDetector(
      child: FZTextWidget(
        text: text,
        textThemeStyle: TextThemType.underline,
        textAlign: textAlign,
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        maxLines: maxLines,
        edgeInsets: EdgeInsets.fromLTRB(paddingLeft ?? 0, paddingTop ?? 0, paddingRight ?? 0, paddingBottom ?? 0),
      ),
      onTap: onTap,
    );
  }

  static Widget formFieldsHeading(
    String text, {
    TextAlign? textAlign,
    double? paddingTop,
    double? paddingBottom,
    double? paddingLeft,
    double? paddingRight,
    AlignmentGeometry? alignment,
  }) {
    return Align(
      alignment: alignment ?? Alignment.center,
      child: FZTextWidget(
        text: text,
        textThemeStyle: TextThemType.formTextHeading,
        textAlign: textAlign,
        edgeInsets: EdgeInsets.fromLTRB(paddingLeft ?? 0, paddingTop ?? 25, paddingRight ?? 0, paddingBottom ?? 0),
      ),
    );
  }

  static Widget lineSpace(double size) {
    return SizedBox(
      height: size,
    );
  }
}

class FZTextWidget extends StatelessWidget {
  final String text;
  final TextThemType? textThemeStyle;
  final TextAlign? textAlign;
  final EdgeInsets? edgeInsets;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final int? maxLines;
  final TextOverflow? overflow;
  const FZTextWidget(
      {Key? key,
      required this.text,
      this.textAlign,
      this.edgeInsets,
      this.textThemeStyle,
      this.color,
      this.fontSize,
      this.fontWeight,
      this.maxLines,
      this.overflow})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle? textStyle =
        FZTextStyle.getTextStyle(context, textThemeType: textThemeStyle, color: color, fontSize: fontSize, fontWeight: fontWeight);

    return Padding(
      padding: edgeInsets ?? const EdgeInsets.all(0),
      child: Text(
        text,
        style: textStyle,
        textAlign: textAlign,
        maxLines: maxLines,
        overflow: overflow ?? TextOverflow.visible,
      ),
    );
  }
}
