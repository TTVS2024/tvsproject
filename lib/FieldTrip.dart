import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class FieldTrip extends StatelessWidget {
  const FieldTrip({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Field Trip Details'),
          backgroundColor: Colors.blue,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: const FieldTripForm(),
      ),
    );
  }
}

class FieldTripForm extends StatefulWidget {
  const FieldTripForm({super.key});

  @override
  _FieldTripFormState createState() => _FieldTripFormState();
}

class _FieldTripFormState extends State<FieldTripForm> {
  final _formKey = GlobalKey<FormState>();

  // TextEditingControllers for capturing input
  TextEditingController monthController = TextEditingController();
  TextEditingController timingController = TextEditingController();
  TextEditingController transportController = TextEditingController();
  TextEditingController placesController = TextEditingController();
  TextEditingController outcomeController = TextEditingController();
  TextEditingController studentsController = TextEditingController();
  TextEditingController durationController = TextEditingController();
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
        monthController.text = DateFormat('dd MMMM yyyy').format(picked);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.white,
            Colors.blue.shade100,
            Colors.blue.shade600,
          ],
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
              // Month Field with Calendar Picker
              GestureDetector(
                onTap: () => _selectMonth(context),
                child: AbsorbPointer(
                  child: TextFormField(
                    controller: monthController,
                    decoration: const InputDecoration(
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
              const SizedBox(height: 10),

              // Level Dropdown
              DropdownButtonFormField<String>(
                value: selectedLevel,
                decoration: const InputDecoration(
                  labelText: 'Level',
                  border: OutlineInputBorder(),
                ),
                hint: const Text('Select Level'),
                items: ['Level 1', 'Level 2', 'Level 3', 'Level 4', 'Level 5', 'Level 6']
                    .map<DropdownMenuItem<String>>((String value) {
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
              const SizedBox(height: 10),

              // Std Dropdown
              DropdownButtonFormField<String>(
                value: selectedStd,
                decoration: const InputDecoration(
                  labelText: 'Std',
                  border: OutlineInputBorder(),
                ),
                hint: const Text('Select Std'),
                items: ['LKG', 'UKG', 'I', 'II', 'III', 'IV', 'V', 'VI', 'VII', 'VIII', 'IX', 'X', 'XI', 'XII']
                    .map<DropdownMenuItem<String>>((String value) {
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
              const SizedBox(height: 10),

              // Shift Dropdown
              DropdownButtonFormField<String>(
                value: selectedShift,
                decoration: const InputDecoration(
                  labelText: 'Shift',
                  border: OutlineInputBorder(),
                ),
                hint: const Text('Select Shift'),
                items: ['FN', 'AN'].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    selectedShift = newValue;
                  });
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please select the shift';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),

              // Timing Field
              TextFormField(
                controller: timingController,
                decoration: const InputDecoration(
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
              const SizedBox(height: 10),

              // Mode of Transport Field
              TextFormField(
                controller: transportController,
                decoration: const InputDecoration(
                  labelText: 'Mode of Transport',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the mode of transport';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),

              // Places Visited Field
              TextFormField(
                controller: placesController,
                decoration: const InputDecoration(
                  labelText: 'Places Visited',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the places visited';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),

              // Learning Outcome Field
              TextFormField(
                controller: outcomeController,
                decoration: const InputDecoration(
                  labelText: 'Learning Outcome',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the learning outcome';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),

              // No. of Students Field
              TextFormField(
                controller: studentsController,
                decoration: const InputDecoration(
                  labelText: 'No of Students',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the number of students';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),

              // Duration Field
              TextFormField(
                controller: durationController,
                decoration: const InputDecoration(
                  labelText: 'Duration',
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
              const SizedBox(height: 10),

              // Remarks Field
              TextFormField(
                controller: remarksController,
                decoration: const InputDecoration(
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
              const SizedBox(height: 20),

              // Save as Draft Button
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Form saved as draft')),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white, // White button for draft
                ),
                child: const Text(
                  'Save as Draft',
                  style: TextStyle(color: Colors.black), // Text color set to black
                ),
              ),
              const SizedBox(height: 10),

              // Submit Button
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Form Submitted')),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white, // White button for submit
                ),
                child: const Text(
                  'Submit',
                  style: TextStyle(color: Colors.black), // Text color set to black
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
