import 'package:common_used_flutter_components/common/values/image_manager.dart';
import 'package:flutter/material.dart';

import '../../../common/values/color_manager.dart';

class PopAuthDialog extends StatelessWidget {
  final String title;
  final String firstButton;
  final String secondButton;
  final String thirdButton;
  final Function() onTapWhileUsingTheApp;
  final Function() onTapOnlyThisTime;
  final Function() onTapNotAllow;
  final double? height;

  const PopAuthDialog(
      {Key? key,
      required this.title,
      required this.firstButton,
      required this.secondButton,
      required this.thirdButton,
      required this.onTapOnlyThisTime,
      required this.onTapNotAllow,
      this.height,
      required this.onTapWhileUsingTheApp})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: AlertDialog(
      contentPadding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
      backgroundColor: FZColors.brighterWhite,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(28.0),
      ),
      content: Container(
        width: MediaQuery.of(context).size.width,
        height: height ?? 240,
        child: Column(
          children: [
            Image.asset(
              FZMediaNames.robert,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Container(
                width: double.infinity,
                alignment: Alignment.center,
                padding: const EdgeInsets.only(top: 15),
                child: Text(
                  title,
                  style: const TextStyle(fontSize: 18, color: FZColors.primaryBlack),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Divider(height: 1, thickness: 1),
            GestureDetector(
              onTap: onTapWhileUsingTheApp,
              child: Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: Container(
                  height: 45,
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Text(
                    firstButton,
                    style: const TextStyle(fontSize: 14, color: FZColors.selectedFontBlue, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
            const Divider(height: 1, thickness: 1),
            GestureDetector(
              onTap: onTapOnlyThisTime,
              child: Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: Container(
                  height: 45,
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Text(
                    secondButton,
                    style: const TextStyle(fontSize: 14, color: FZColors.selectedFontBlue, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
            const Divider(height: 1, thickness: 1),
            GestureDetector(
              onTap: onTapNotAllow,
              child: Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: Container(
                  height: 45,
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Text(
                    thirdButton,
                    style: const TextStyle(fontSize: 14, color: FZColors.selectedFontBlue, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
