import 'package:flutter/material.dart';

enum Calendar { day, week, month }

class SingleSelectSegmentedButtonComponent extends StatefulWidget {
  final Function(String selectedItem) itemChanged;

  const SingleSelectSegmentedButtonComponent({Key? key, required this.itemChanged}) : super(key: key);

  @override
  State<SingleSelectSegmentedButtonComponent> createState() => _SingleSelectSegmentedButtonComponentState();
}

class _SingleSelectSegmentedButtonComponentState extends State<SingleSelectSegmentedButtonComponent> {
  Calendar calendarView = Calendar.day;

  @override
  Widget build(BuildContext context) {
    double _height = 38;
    return SegmentedButton<Calendar>(
      segments: <ButtonSegment<Calendar>>[
        ButtonSegment<Calendar>(
          value: Calendar.day,
          label: Container(
            width: calendarView == Calendar.day ? 40 : 100,
            height: _height,
            alignment: calendarView == Calendar.day ? const Alignment(-0.5, 0) : Alignment.center,
            child: const Text(
              'Day',
              style: TextStyle(fontSize: 14),
            ),
          ),
        ),
        ButtonSegment<Calendar>(
          value: Calendar.week,
          label: Container(
              width: calendarView == Calendar.week ? 40 : 100,
              height: _height,
              alignment: calendarView == Calendar.week ? Alignment.centerLeft : Alignment.center,
              child: const Text(
                'Week',
                style: TextStyle(fontSize: 14),
              )),
        ),
        ButtonSegment<Calendar>(
          value: Calendar.month,
          label: Container(
              width: calendarView == Calendar.month ? 50 : 100,
              height: _height,
              alignment: calendarView == Calendar.month ? Alignment.centerLeft : Alignment.center,
              child: const Text(
                'Month',
                style: TextStyle(fontSize: 14),
              )),
        ),
      ],
      selected: <Calendar>{calendarView},
      onSelectionChanged: (Set<Calendar> newSelection) {
        setState(() {
          // By default there is only a single segment that can be
          // selected at one time, so its value is always the first
          // item in the selected set.
          calendarView = newSelection.first;
          widget.itemChanged(calendarView.name);
        });
      },
    );
  }
}
