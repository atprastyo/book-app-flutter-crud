import 'package:flutter/material.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({
    Key? key,
    required this.selectedDateTime,
    this.dateTime,
  }) : super(key: key);

  final void Function(DateTime date) selectedDateTime;
  final DateTime? dateTime;

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  late DateTime date;

  @override
  void initState() {
    if (widget.dateTime == null) {
      date = DateTime.now();
    } else {
      date = widget.dateTime!;
    }
    super.initState();
  } //Get date from date picker

  Future<DateTime?> pickDate() async {
    return await showDatePicker(
      context: context,
      initialDate: date,
      firstDate: DateTime(1900),
      lastDate: DateTime(DateTime.now().year + 1),
    );
  }

  //Set the date that is taken from the user by date picker
  void setDate(DateTime? newDate) {
    if (newDate == null) return;

    date = DateTime(
      newDate.year,
      newDate.month,
      newDate.day,
      date.hour,
      date.minute,
    );

    widget.selectedDateTime(date);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextButton(
        onPressed: () async {
          DateTime? newDate = await pickDate();
          setDate(newDate);
          setState(() {});
        },
        child: Text(
          "${date.year} / ${date.month} / ${date.day}",
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
          textAlign: TextAlign.left,
        ),
      ),
    );
  }
}
