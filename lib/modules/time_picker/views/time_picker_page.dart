import 'package:common_used_flutter_components/common/values/string_manager.dart';
import 'package:flutter/material.dart';

class TimePickerPage extends StatefulWidget {
  const TimePickerPage({Key? key}) : super(key: key);

  @override
  State<TimePickerPage> createState() => _TimePickerPageState();
}

class _TimePickerPageState extends State<TimePickerPage> {
  TimeOfDay _time = const TimeOfDay(hour: 7, minute: 15);

  void _selectTime() async {
    final TimeOfDay? newTime = await showTimePicker(
      context: context,
      initialTime: _time,
    );
    if (newTime != null) {
      setState(() {
        _time = newTime;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(FZStrings.timePicker),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _selectTime,
              child: const Text('SELECT TIME'),
            ),
            const SizedBox(height: 8),
            Text(
              'Selected time: ${_time.format(context)}',
            ),
          ],
        ),
      ),
    );
  }
}