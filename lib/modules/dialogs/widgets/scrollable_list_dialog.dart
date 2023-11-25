import 'package:common_used_flutter_components/modules/dialogs/widgets/your_choices.dart';
import 'package:flutter/material.dart';

import '../../../common/values/color_manager.dart';
import '../../../models/choice_model.dart';

class ScrollableListDialog extends StatefulWidget {
  final String title;
  final String description;
  final String firstButton;
  final String secondButton;

  final Function() onTapCancel;
  final Function() onTapOk;

  final double? height;
  final List<Choice> choices;

  const ScrollableListDialog({
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
  State<ScrollableListDialog> createState() => _ScrollableListDialogState();
}

class _ScrollableListDialogState extends State<ScrollableListDialog> {
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
        height: widget.height ?? 350,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Container(
                width: double.infinity,
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  widget.title,
                  style: const TextStyle(fontSize: 24, color: FZColors.primaryBlack),
                  textAlign: TextAlign.start,
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
            const Divider(height: 1, thickness: 1),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: YourChoiceWidget(
                  valueChanged: (List<int> selectedIndex) {
                    widget.choices.forEach((choice) {
                      if (selectedIndex.contains(choice.id)) {
                        choice.isSelected = true;
                      } else {
                        choice.isSelected = false;
                      }
                    });
                    setState(() {});
                  },
                  choices: widget.choices,
                ),
              ),
            ),
            const Divider(height: 1, thickness: 1),
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
