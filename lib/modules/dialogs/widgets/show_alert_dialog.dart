import 'package:flutter/material.dart';

import '../../../common/values/color_manager.dart';

class ShowAlertDialog extends StatelessWidget {
  final String title;
  const ShowAlertDialog({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          backgroundColor: FZColors.brighterWhite,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28.0),
          ),
          title: title.isNotEmpty
              ? Text(
                  title,
                  style: TextStyle(fontSize: 24),
                )
              : Container(),
          content: const Text(
            'A dialog is a type of modal window that appears in front of app content to provide critical information, or prompt for a decision to'
            ' be made.',
            style: TextStyle(fontSize: 14),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(
                context,
                'Cancel',
              ),
              child: const Text(
                'Cancel',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: FZColors.selectedFontBlue),
              ),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text(
                'OK',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: FZColors.selectedFontBlue),
              ),
            ),
          ],
        ),
      ),
      child: const Text('Show Dialog'),
    );
  }
}
