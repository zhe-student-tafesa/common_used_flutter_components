import 'package:common_used_flutter_components/common/values/string_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SlidersPage extends StatefulWidget {
  const SlidersPage({Key? key}) : super(key: key);

  @override
  State<SlidersPage> createState() => _SlidersPageState();
}

class _SlidersPageState extends State<SlidersPage> {
  double value1 = 10;
  double value2 = 20;
  double startValue = 0;
  double endValue = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(FZStrings.sliders),
      ),
      body: Column(
        children: [
          Slider(
            min: 0.0,
            max: 100.0,
            value: value1,
            onChanged: (value) {
              setState(() {
                value1 = value;
              });
            },
          ),
          const SizedBox(height: 30),
          CupertinoSlider(
            min: 0.0,
            max: 100.0,
            value: value2,
            onChanged: (value) {
              setState(() {
                value2 = value;
              });
            },
          ),
          const SizedBox(height: 30),
          RangeSlider(
            min: 0.0,
            max: 100.0,
            values: RangeValues(startValue, endValue),
            onChanged: (values) {
              setState(() {
                startValue = values.start;
                endValue = values.end;
              });
            },
          ),
        ],
      ),
    );
  }
}