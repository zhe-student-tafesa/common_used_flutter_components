import 'package:common_used_flutter_components/modules/dialogs/widgets/your_email_choice.dart';
import 'package:flutter/material.dart';

import '../../../common/values/color_manager.dart';
import '../../../common/values/image_manager.dart';
import '../../../models/email_detail_model.dart';

class HeroIconDialog extends StatefulWidget {
  final String title;
  final String description;
  final String firstButton;
  final String secondButton;

  final Function() onTapCancel;
  final Function() onTapOk;

  final double? height;
  final List<EmailDetail> choices;

  const HeroIconDialog({
    Key? key,
    required this.title,
    required this.firstButton,
    required this.secondButton,
    required this.onTapOk,
    this.height,
    required this.onTapCancel,
    required this.description,
    required this.choices,
  }) : super(key: key);

  @override
  State<HeroIconDialog> createState() => _HeroIconDialogState();
}

class _HeroIconDialogState extends State<HeroIconDialog> {
  @override
  void initState() {
    super.initState();
  }

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
        height: widget.height ?? 400,
        child: Column(
          children: [
            const FZImage(
              FZMediaNames.square,
              width: 16,
              height: 16,
            ),
            const SizedBox(height: 23),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Container(
                width: double.infinity,
                alignment: Alignment.center,
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  widget.title,
                  style: const TextStyle(fontSize: 24, color: FZColors.primaryBlack),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Container(
                width: double.infinity,
                alignment: Alignment.center,
                padding: const EdgeInsets.only(top: 15),
                child: Text(
                  widget.description,
                  style: const TextStyle(fontSize: 14, color: FZColors.primaryBlack),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: YourEmailChoiceWidget(
                  valueChanged: (List<int> selectedIndex) {
                    widget.choices.forEach((choice) {
                      if (selectedIndex.contains(choice.id)) {
                        choice.isSelected = true;
                      } else {
                        choice.isSelected = false;
                      }
                      setState(() {});
                    });
                  },
                  choices: widget.choices,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: widget.onTapCancel,
                  child: Container(
                    width: 94,
                    alignment: Alignment.center,
                    child: Container(
                      height: 45,
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Text(
                        widget.firstButton,
                        style: const TextStyle(fontSize: 14, color: FZColors.selectedFontBlue, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: widget.onTapOk,
                  child: Container(
                    width: 94,
                    alignment: Alignment.center,
                    child: Container(
                      height: 45,
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Text(
                        widget.secondButton,
                        style: const TextStyle(fontSize: 14, color: FZColors.selectedFontBlue, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 7),
          ],
        ),
      ),
    ));
  }
}
