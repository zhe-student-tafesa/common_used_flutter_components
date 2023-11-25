import 'package:flutter/material.dart';

import '../../../common/values/image_manager.dart';
import '../../../models/email_detail_model.dart';

class YourEmailChoiceWidget extends StatefulWidget {
  final List<EmailDetail> choices;
  final ValueChanged<List<int>> valueChanged;
  const YourEmailChoiceWidget({Key? key, required this.valueChanged, required this.choices}) : super(key: key);

  @override
  State<YourEmailChoiceWidget> createState() => _YourEmailChoiceWidgetState();
}

class _YourEmailChoiceWidgetState extends State<YourEmailChoiceWidget> {
  List<int> _selectedChoices = [];
  @override
  void initState() {
    super.initState();
    for (var choice in widget.choices) {
      if (choice.isSelected && choice.id != null) {
        _selectedChoices.add(choice.id);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.choices.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            if (!widget.choices[index].isSelected && !_selectedChoices.contains(widget.choices[index].id)) {
              /// previous not selected: add
              /// click none
              if (!_selectedChoices.contains(widget.choices[index].id)) {
                _selectedChoices.add(widget.choices[index].id);
              }
              widget.choices[index].isSelected = true;
            } else {
              if (_selectedChoices.contains(widget.choices[index].id)) {
                _selectedChoices.remove(widget.choices[index].id);
              }
              widget.choices[index].isSelected = false;
            }
            setState(() {});
            widget.valueChanged(_selectedChoices);
          },
          child: Row(
            children: [
              Image.asset(
                widget.choices[index].imgName,
                height: 32,
                width: 32,
              ),
              const SizedBox(
                width: 20,
                height: 56,
              ),
              Text(widget.choices[index].email),
              const Spacer(),
              widget.choices[index].isSelected
                  ? const FZImage(
                      FZMediaNames.selectedSvg,
                      width: 25,
                      height: 25,
                    )
                  : const FZImage(
                      FZMediaNames.unselectedSvg,
                      width: 25,
                      height: 25,
                    ),
            ],
          ),
        );
      },
    );
  }
}
