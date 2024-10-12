import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // For date formatting


class DayBoardingForm extends StatelessWidget {
  const DayBoardingForm({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Day Boarding'),
          backgroundColor: Colors.blue,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: DayBoardingFormState(),
      ),
    );
  }
}

class DayBoardingFormState extends StatefulWidget {
  const DayBoardingFormState({super.key});

  @override
  _DayBoardingFormState createState() => _DayBoardingFormState();
}

class _DayBoardingFormState extends State<DayBoardingFormState> {
  final _formKey = GlobalKey<FormState>();

  // TextEditingControllers for capturing input
  TextEditingController monthController = TextEditingController();
  TextEditingController timingController = TextEditingController();
  TextEditingController subjectController = TextEditingController();
  TextEditingController teacherController = TextEditingController();
  TextEditingController periodController = TextEditingController();
  TextEditingController feedbackController = TextEditingController();
  TextEditingController durationController =
      TextEditingController(); // New Duration Field

  // Dropdown values
  String? selectedLevel;
  String? selectedStd;
  String? selectedShift;

  // Function to show Date Picker for Month selection
  Future<void> _selectMonth(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (picked != null) {
      setState(() {
        // Format the picked date into 'dd MMMM yyyy'
        monthController.text = DateFormat('dd MMMM yyyy').format(picked);
      });
    } else {
      setState(() {
        monthController.text = ''; // Optionally clear the field
      });
    }
  }

  // Function to show Time Picker for selecting timing
  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (picked != null) {
      setState(() {
        final now = DateTime.now();
        final selectedTime =
            DateTime(now.year, now.month, now.day, picked.hour, picked.minute);
        timingController.text =
            DateFormat.jm().format(selectedTime); // Formatting to AM/PM
      });
    }
  }

  // Function to calculate the end time based on timing and duration
  String? _calculateEndTime(String startTime, String duration) {
    try {
      final startDateTime = DateFormat.jm().parse(startTime);
      final durationInMinutes = int.tryParse(duration) ?? 0;
      final endDateTime =
          startDateTime.add(Duration(minutes: durationInMinutes));
      return DateFormat.jm().format(endDateTime);
    } catch (e) {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
     return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
          colors: [Colors.white, Colors.blue.shade100, Colors.blue.shade600],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        ),
        child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: ListView(
          children: [
            // Date Picker Field
            GestureDetector(
              onTap: () => _selectMonth(context),
              child: AbsorbPointer(
                child: TextFormField(
                  controller: monthController,
                  decoration: InputDecoration(
                    labelText: 'Select Date',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please select the date';
                    }
                    return null;
                  },
                ),
              ),
            ),
            SizedBox(height: 10),

            // Level Dropdown
            DropdownButtonFormField<String>(
              value: selectedLevel,
              decoration: InputDecoration(
                labelText: 'Level',
                border: OutlineInputBorder(),
              ),
              hint: Text('Select Level'),
              items: [
                'Level 1',
                'Level 2',
                'Level 3',
                'Level 4',
                'Level 5',
                'Level 6'
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  selectedLevel = newValue;
                });
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please select the level';
                }
                return null;
              },
            ),
            SizedBox(height: 10),

            // Std Dropdown
            DropdownButtonFormField<String>(
              value: selectedStd,
              decoration: InputDecoration(
                labelText: 'Std',
                border: OutlineInputBorder(),
              ),
              hint: Text('Select Std'),
              items: [
                'LKG',
                'UKG',
                'I',
                'II',
                'III',
                'IV',
                'V',
                'VI',
                'VII',
                'VIII',
                'IX',
                'X',
                'XI',
                'XII'
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  selectedStd = newValue;
                });
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please select the class';
                }
                return null;
              },
            ),
            SizedBox(height: 10),

            TextFormField(
              controller: teacherController,
              decoration: InputDecoration(
                labelText: 'No of Teachers in Charge',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter the number of teachers in charge';
                }
                return null;
              },
            ),
            SizedBox(height: 10),

            // Time Picker Field
            GestureDetector(
              onTap: () => _selectTime(context),
              child: AbsorbPointer(
                child: TextFormField(
                  controller: timingController,
                  decoration: InputDecoration(
                    labelText: 'Timing',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the timing';
                    }
                    return null;
                  },
                ),
              ),
            ),
            SizedBox(height: 10),

            // Duration Field
            TextFormField(
              controller: durationController,
              decoration: InputDecoration(
                labelText: 'Duration (in minutes)',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter the duration';
                }
                return null;
              },
            ),
            SizedBox(height: 10),

            // Period Controller

            // Feedback Field
            TextFormField(
              controller: feedbackController,
              decoration: InputDecoration(
                labelText: 'Feedback',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter feedback';
                }
                return null;
              },
            ),
            SizedBox(height: 20),

            // Save as Draft Button
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Form saved as draft')),
                );
              },
              child: Text('Save as Draft'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
              ),
            ),
            SizedBox(height: 10),

            // Submit Button
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // Calculate end time based on timing and duration
                  final endTime = _calculateEndTime(
                    timingController.text,
                    durationController.text,
                  );

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                        content: Text('Form Submitted. End Time: $endTime')),
                  );
                }
              },
              child: const Text(
                  'Submit',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
