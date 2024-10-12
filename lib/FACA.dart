import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class FaCaDetails extends StatelessWidget {
  const FaCaDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('FA-CA Details'),
          backgroundColor: Colors.blue,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: FaCaDetailsForm(),
      ),
    );
  }
}

class FaCaDetailsForm extends StatefulWidget {
  const FaCaDetailsForm({super.key});

  @override
  _FaCaDetailsFormState createState() => _FaCaDetailsFormState();
}

class _FaCaDetailsFormState extends State<FaCaDetailsForm> {
  final _formKey = GlobalKey<FormState>();

  // TextEditingControllers for capturing input
  TextEditingController monthController = TextEditingController();
  TextEditingController subjectController = TextEditingController();
  TextEditingController caFaController = TextEditingController();
  TextEditingController plannedController = TextEditingController();
  TextEditingController actualController = TextEditingController();
  TextEditingController topicController = TextEditingController();
  TextEditingController durationController = TextEditingController();
  TextEditingController remarksController = TextEditingController();
  TextEditingController outcomeController = TextEditingController();

  // Dropdown values
  String? selectedLevel;
  String? selectedStd;

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
    } else {
      setState(() {
        monthController.text = '';
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
              // Month Field with Calendar Picker
              GestureDetector(
                onTap: () => _selectMonth(context),
                child: AbsorbPointer(
                  child: TextFormField(
                    controller: monthController,
                    decoration: const InputDecoration(
                      labelText: 'Select Month',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please select the month';
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

              // Subject Field
              TextFormField(
                controller: subjectController,
                decoration: const InputDecoration(
                  labelText: 'Subject',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the subject';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),

              // CA/FA Field
              TextFormField(
                controller: caFaController,
                decoration: const InputDecoration(
                  labelText: 'CA/FA',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter CA/FA details';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),

              // Planned Field
              TextFormField(
                controller: plannedController,
                decoration: const InputDecoration(
                  labelText: 'Planned',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter planned activities';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),

              // Actual Field
              TextFormField(
                controller: actualController,
                decoration: const InputDecoration(
                  labelText: 'Actual',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter actual activities';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),

              // Topic Field
              TextFormField(
                controller: topicController,
                decoration: const InputDecoration(
                  labelText: 'Topic',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the topic';
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
                  labelText: 'Remarks (if any)',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10),

              // Outcome Field
              TextFormField(
                controller: outcomeController,
                decoration: const InputDecoration(
                  labelText: 'Outcome',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the outcome';
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
                  backgroundColor: Colors.white,
                ),
                child: const Text(
                  'Save as Draft',
                  style: TextStyle(color: Colors.black),
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
                  backgroundColor: Colors.white,
                ),
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
