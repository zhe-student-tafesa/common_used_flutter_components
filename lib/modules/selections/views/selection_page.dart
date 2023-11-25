import 'package:common_used_flutter_components/common/values/color_manager.dart';
import 'package:common_used_flutter_components/common/values/string_manager.dart';
import 'package:flutter/material.dart';

enum Fruits { apple, banana }

class SelectionPage extends StatefulWidget {
  const SelectionPage({Key? key}) : super(key: key);

  @override
  State<SelectionPage> createState() => _SelectionPageState();
}

class _SelectionPageState extends State<SelectionPage> {
  Fruits? _selectedFruit = Fruits.apple;
  bool isChecked = false;
  bool isRadioOne = true;
  bool isRadioTwo = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(FZStrings.selections),
      ),
      body: Column(
        children: [
          ListTile(
            title: const Text('Apple'),
            leading: Radio<Fruits>(
              value: Fruits.apple,
              groupValue: _selectedFruit,
              onChanged: (Fruits? value) {
                setState(() {
                  _selectedFruit = value;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Banana'),
            leading: Radio<Fruits>(
              value: Fruits.banana,
              groupValue: _selectedFruit,
              onChanged: (Fruits? value) {
                setState(() {
                  _selectedFruit = value;
                });
              },
            ),
          ),
          const Divider(thickness: 2),
          ListTile(
            title: const Text('Check box'),
            leading: Checkbox(
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value ?? false;
                });
              },
            ),
          ),
          const Divider(thickness: 2),
          Row(
            children: [
              const SizedBox(width: 30),
              Container(
                width: 52,
                height: 32,
                alignment: isRadioOne ? Alignment.centerRight : Alignment.centerLeft,
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(56),
                  color: isRadioOne ? FZColors.selectedFontBlue : FZColors.radioGrey,
                ),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      isRadioOne = !isRadioOne;
                    });
                  },
                  child: Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: isRadioOne ? FZColors.radioButtonSelected : FZColors.radioGreySelected,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 50),
              Container(
                width: 52,
                height: 32,
                alignment: isRadioTwo ? Alignment.centerRight : Alignment.centerLeft,
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(56),
                  color: isRadioTwo ? FZColors.selectedFontBlue : FZColors.radioGrey,
                ),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      isRadioTwo = !isRadioTwo;
                    });
                  },
                  child: Container(
                    height: 24,
                    width: 24,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: isRadioTwo ? FZColors.radioButtonSelected : FZColors.radioGreySelected,
                    ),
                    child: Icon(isRadioTwo ? Icons.check : Icons.close, color: isRadioTwo ? FZColors.selectedFontBlue : FZColors.radioGrey, size: 15),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
