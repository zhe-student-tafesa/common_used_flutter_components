import 'package:common_used_flutter_components/common/values/color_manager.dart';
import 'package:common_used_flutter_components/common/values/string_manager.dart';
import 'package:flutter/material.dart';

class TextFieldsPage extends StatelessWidget {
  const TextFieldsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(FZStrings.textFields),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Text',
                suffixIcon: Icon(Icons.cancel, color: FZColors.primaryBlack),
                prefixIcon: Icon(Icons.home, color: FZColors.primaryBlack),
                helperText: 'Helper text',
                counterText: '000/000',
                labelText: 'Label',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                hintText: 'Text',
                suffixIcon: Icon(Icons.cancel, color: FZColors.primaryBlack),
                prefixIcon: Icon(Icons.home, color: FZColors.primaryBlack),
                helperText: 'Helper text',
                counterText: '000/000',
                labelText: 'Label',
              ),
            ),
          ),
        ],
      ),
    );
  }
}