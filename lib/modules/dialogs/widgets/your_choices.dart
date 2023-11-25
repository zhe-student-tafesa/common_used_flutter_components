import 'package:flutter/material.dart';

import '../../../common/values/image_manager.dart';
import '../../../models/choice_model.dart';

class YourChoiceWidget extends StatefulWidget {
  final List<Choice> choices;
  final ValueChanged<List<int>> valueChanged;
  const YourChoiceWidget({Key? key, required this.valueChanged, required this.choices}) : super(key: key);

  @override
  State<YourChoiceWidget> createState() => _YourChoiceWidgetState();
}

class _YourChoiceWidgetState extends State<YourChoiceWidget> {
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
              if (index == 0) {
                _selectedChoices.clear();
                _selectedChoices.add(widget.choices[0].id);
              } else {
                if (!_selectedChoices.contains(widget.choices[index].id)) {
                  _selectedChoices.add(widget.choices[index].id);
                }

                widget.choices[index].isSelected = true;
                if (_selectedChoices.contains(widget.choices[0].id)) {
                  _selectedChoices.remove(widget.choices[0].id);
                }
              }
            } else {
              _selectedChoices.remove(widget.choices[index].id);
              widget.choices[index].isSelected = false;
              if (_selectedChoices.isEmpty) {
                _selectedChoices.add(widget.choices[0].id);
              }
            }
            setState(() {});
            widget.valueChanged(_selectedChoices);
          },
          child: Row(
            children: [
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
              const SizedBox(
                width: 20,
                height: 56,
              ),
              Text(widget.choices[index].name),
            ],
          ),
        );
      },
    );
  }
}
