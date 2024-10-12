import 'package:flutter/material.dart';

import 'package:intl/intl.dart'; // For date formatting

class EnrichmentForm extends StatelessWidget {
  const EnrichmentForm({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Enrichment Class '),
          backgroundColor: Colors.blue,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: EnrichmentFormState(),
      ),
    );
  }
}

class EnrichmentFormState extends StatefulWidget {
  const EnrichmentFormState({super.key});

  @override
  _EnrichmentFormState createState() => _EnrichmentFormState();
}

class _EnrichmentFormState extends State<EnrichmentFormState> {
  final _formKey = GlobalKey<FormState>();

  // TextEditingControllers for capturing input
  TextEditingController monthController = TextEditingController();
  TextEditingController timingController = TextEditingController();
  TextEditingController subjectController = TextEditingController();
  TextEditingController planController = TextEditingController();
  TextEditingController periodController = TextEditingController();
  TextEditingController remarksController = TextEditingController();

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

            // Time Picker Field

            SizedBox(height: 10),

            // Event Name Field
            TextFormField(
              controller: subjectController,
              decoration: InputDecoration(
                labelText: 'Subject Name',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter the Subject name';
                }
                return null;
              },
            ),
            SizedBox(height: 10),

            //plan field
            TextFormField(
              controller: planController,
              decoration: InputDecoration(
                labelText: 'Plan to be Executed',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter the Plan';
                }
                return null;
              },
            ),
            SizedBox(height: 10),
            //period controller
            TextFormField(
              controller: periodController,
              decoration: InputDecoration(
                labelText: 'No of periods per week',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter the no of periods';
                }
                return null;
              },
            ),
            SizedBox(height: 10),

            // Remarks Field
            TextFormField(
              controller: remarksController,
              decoration: InputDecoration(
                labelText: 'Remarks',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter remarks';
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
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Form Submitted')),
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
