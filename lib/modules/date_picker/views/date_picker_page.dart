import 'package:common_used_flutter_components/common/values/string_manager.dart';
import 'package:common_used_flutter_components/modules/date_picker/widgets/date_range_picker.dart';
import 'package:flutter/material.dart';

class DatePickerPage extends StatefulWidget {
  final String? restorationId;
  const DatePickerPage({Key? key, this.restorationId}) : super(key: key);

  @override
  State<DatePickerPage> createState() => _DatePickerPageState();
}

class _DatePickerPageState extends State<DatePickerPage> with RestorationMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(FZStrings.datePicker),
      ),
      body: Scaffold(
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              OutlinedButton(
                onPressed: () {
                  _restorableDatePickerRouteFuture.present();
                },
                child: const Text('Open Date Picker'),
              ),
              const SizedBox(
                height: 40,
              ),
              const DateRangePickerWidget(),
            ],
          ),
        ),
      ),
    );
  }

  @override
  String? get restorationId => widget.restorationId;

  /// initial date
  final RestorableDateTime _selectedDate = RestorableDateTime(DateTime.now());
  late final RestorableRouteFuture<DateTime?> _restorableDatePickerRouteFuture = RestorableRouteFuture<DateTime?>(
    onComplete: _selectDate,
    onPresent: (NavigatorState navigator, Object? arguments) {
      return navigator.restorablePush(
        _datePickerRoute,
        arguments: _selectedDate.value.millisecondsSinceEpoch,
      );
    },
  );
  static Route<DateTime> _datePickerRoute(
    BuildContext context,
    Object? arguments,
  ) {
    return DialogRoute<DateTime>(
      context: context,
      builder: (BuildContext context) {
        return DatePickerDialog(
          restorationId: 'date_picker_dialog',
          initialEntryMode: DatePickerEntryMode.calendarOnly,
          initialDate: DateTime.fromMillisecondsSinceEpoch(arguments! as int),

          /// the date range we can choose
          firstDate: DateTime(1950),
          lastDate: DateTime(2024),
        );
      },
    );
  }

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_selectedDate, 'selected_date');
    registerForRestoration(_restorableDatePickerRouteFuture, 'date_picker_route_future');
  }

  void _selectDate(DateTime? newSelectedDate) {
    if (newSelectedDate != null) {
      setState(() {
        _selectedDate.value = newSelectedDate;

        /// pop hint: at the bottom
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Selected: ${_selectedDate.value.day}/${_selectedDate.value.month}/${_selectedDate.value.year}'),
        ));
        debugPrint(' selected Date: ${_selectedDate.value}');
      });
    }
  }
}
