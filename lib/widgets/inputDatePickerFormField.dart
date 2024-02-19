import 'package:flutter/material.dart';

class DatePickerWidget extends StatefulWidget {
  const DatePickerWidget({super.key});

  @override
  State<DatePickerWidget> createState() => _DatePickerWidgetState();
}

class _DatePickerWidgetState extends State<DatePickerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text("DatePicker Widget"),
      ),
      body: Center(
        child: InputDatePickerFormField(
            firstDate: DateTime(2024),
            lastDate: DateTime(2025),
          initialDate: DateTime.now(),
          errorFormatText: 'Enter valid text',
          errorInvalidText: "Enter valid date",
          keyboardType: TextInputType.datetime,

          acceptEmptyDate: false,
          onDateSubmitted: (value) {

            SnackBar(content:   Text("Date Selected :$value"),
            behavior: SnackBarBehavior.floating,
            width: 20,
            backgroundColor: Colors.green,
            duration: Durations.short1,);
          },
          onDateSaved: (value) {
            SnackBar(content:   Text("Date Selected :$value"),
              width: 20,
              backgroundColor: Colors.green,
              duration: Durations.short1,);
          },

        ),
      ),

    );
  }
}
