import 'package:flutter/material.dart';

import '../../../common/values/color_manager.dart';
import '../../../models/dropdown_item_model.dart';

class DropdownChoiceWidget extends StatefulWidget {
  final List<DropdownItem> choices;
  final ValueChanged<int> valueChanged;
  const DropdownChoiceWidget({Key? key, required this.valueChanged, required this.choices}) : super(key: key);

  @override
  State<DropdownChoiceWidget> createState() => _DropdownChoiceWidgetState();
}

class _DropdownChoiceWidgetState extends State<DropdownChoiceWidget> {
  int currentIndex = -1;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
        boxShadow: const [
          BoxShadow(offset: Offset(0, 1), blurRadius: 3, color: Color.fromRGBO(00, 0, 0, 0.15), spreadRadius: 1.0),
        ],
      ),
      child: ListView.builder(
        padding: const EdgeInsets.only(bottom: 7, top: 7),
        itemCount: widget.choices.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              if (!widget.choices[index].isSelected) {
                /// previous not selected: add
                currentIndex = index;
                clearAllTrue();
                widget.choices[index].isSelected = true;
              } else {
                currentIndex = -1;
                widget.choices[index].isSelected = false;
              }
              setState(() {});
              widget.valueChanged(currentIndex);
            },
            //widget.choices[index].isSelected
            child: Container(
              width: double.infinity,
              height: 48,
              padding: EdgeInsets.only(left: 12),
              child: Text(widget.choices[index].name, style: const TextStyle(fontSize: 14, color: FZColors.primaryBlack)),
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: (widget.choices[index].isSelected) ? FZColors.selectedPink : FZColors.primaryWhite,
              ),
            ),
          );
        },
      ),
    );
  }

  void clearAllTrue() {
    for (var choices in widget.choices) {
      choices.isSelected = false;
    }
  }
}
