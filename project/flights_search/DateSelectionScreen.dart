import 'package:flutter/material.dart';

class DateSelectionScreen extends StatefulWidget {
  @override
  _DateSelectionScreenState createState() => _DateSelectionScreenState();
}

class _DateSelectionScreenState extends State<DateSelectionScreen> {
  DateTime? startDate;
  DateTime? endDate;

  Future<void> _selectStartDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: startDate ?? DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2101),
    );
    if (picked != null) {
      setState(() {
        startDate = picked;
      });
    }
  }

  Future<void> _selectEndDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: endDate ?? DateTime.now(),
      firstDate: startDate ?? DateTime.now(),
      lastDate: DateTime(2101),
    );
    if (picked != null) {
      setState(() {
        endDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Select Dates')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MaterialButton(
              onPressed: () => _selectStartDate(context),
              child: Text('Select Start Date'),
            ),
            SizedBox(height: 20),
            MaterialButton(
              onPressed: () => _selectEndDate(context),
              child: Text('Select End Date'),
            ),
            SizedBox(height: 20),
            if (startDate != null &&
                endDate != null &&
                endDate!.isBefore(startDate!))
              Text('End date cannot be before start date',
                  style: TextStyle(color: Colors.red)),
          ],
        ),
      ),
    );
  }
}
