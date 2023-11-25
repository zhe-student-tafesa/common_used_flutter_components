import 'package:flutter/material.dart';

final int startYear = DateTime.now().year;

class DateRangePickerWidget extends StatefulWidget {
  final String? restorationId;
  const DateRangePickerWidget({Key? key, this.restorationId}) : super(key: key);

  @override
  State<DateRangePickerWidget> createState() => _DateRangePickerWidgetState();
}

class _DateRangePickerWidgetState extends State<DateRangePickerWidget> with RestorationMixin {
  /// initial picked range:   _startDate ~ _endDate
  final RestorableDateTimeN _startDate = RestorableDateTimeN(DateTime(startYear));
  final RestorableDateTimeN _endDate = RestorableDateTimeN(DateTime(startYear, 1, 5));

  late final RestorableRouteFuture<DateTimeRange?> _restorableDateRangePickerRouteFuture = RestorableRouteFuture<DateTimeRange?>(
    onComplete: _selectDateRange,
    onPresent: (NavigatorState navigator, Object? arguments) {
      return navigator.restorablePush(_dateRangePickerRoute, arguments: <String, dynamic>{
        'initialStartDate': _startDate.value?.millisecondsSinceEpoch,
        'initialEndDate': _endDate.value?.millisecondsSinceEpoch,
      });
    },
  );

  void _selectDateRange(DateTimeRange? newSelectedDate) {
    if (newSelectedDate != null) {
      setState(() {
        /// 11 set new value
        _startDate.value = newSelectedDate.start;
        _endDate.value = newSelectedDate.end;
        debugPrint('${_startDate.value}  To ${_endDate.value}');
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: OutlinedButton(
          onPressed: () {
            _restorableDateRangePickerRouteFuture.present();
          },
          child: const Text('Open Date Range Picker'),
        ),
      ),
    );
  }

  @override
  String? get restorationId => widget.restorationId;

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_startDate, 'start_date');
    registerForRestoration(_endDate, 'end_date');
    registerForRestoration(_restorableDateRangePickerRouteFuture, 'date_picker_route_future');
  }

  static Route<DateTimeRange?> _dateRangePickerRoute(
    BuildContext context,
    Object? arguments,
  ) {
    return DialogRoute<DateTimeRange?>(
      context: context,
      builder: (BuildContext context) {
        return DateRangePickerDialog(
          restorationId: 'date_picker_dialog',
          initialDateRange: _initialDateTimeRange(arguments! as Map<dynamic, dynamic>),
          currentDate: DateTime.now(),

          /// the date range we can choose
          firstDate: DateTime(startYear - 2),
          lastDate: DateTime(startYear + 3),
        );
      },
    );
  }

  static DateTimeRange? _initialDateTimeRange(Map<dynamic, dynamic> arguments) {
    if (arguments['initialStartDate'] != null && arguments['initialEndDate'] != null) {
      return DateTimeRange(
        start: DateTime.fromMillisecondsSinceEpoch(arguments['initialStartDate'] as int),
        end: DateTime.fromMillisecondsSinceEpoch(arguments['initialEndDate'] as int),
      );
    }

    return null;
  }
}
