import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class LabActivities extends StatelessWidget {
  const LabActivities({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Lab Activities'),
          backgroundColor: Colors.blue,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: const LabActivitiesForm(),
      ),
    );
  }
}

class LabActivitiesForm extends StatefulWidget {
  const LabActivitiesForm({super.key});

  @override
  _LabActivitiesFormState createState() => _LabActivitiesFormState();
}

class _LabActivitiesFormState extends State<LabActivitiesForm> {
  final _formKey = GlobalKey<FormState>();

  // TextEditingControllers for capturing input
  TextEditingController monthController = TextEditingController();
  TextEditingController subjectController = TextEditingController();
  TextEditingController plannedController = TextEditingController();
  TextEditingController executedController = TextEditingController();
  TextEditingController periodsController = TextEditingController();
  TextEditingController otherThanController = TextEditingController();

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

              // Planned Field
              TextFormField(
                controller: plannedController,
                decoration: const InputDecoration(
                  labelText: 'Planned Activities',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the planned activities';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),

              // Executed Field
              TextFormField(
                controller: executedController,
                decoration: const InputDecoration(
                  labelText: 'Executed Activities',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the executed activities';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),

              // No. of Periods per Week Field
              TextFormField(
                controller: periodsController,
                decoration: const InputDecoration(
                  labelText: 'No. of Periods per Week',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the number of periods per week';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),

              // Other than Field
              TextFormField(
                controller: otherThanController,
                decoration: const InputDecoration(
                  labelText: 'Other than',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the activities';
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
                  backgroundColor: Colors.white,
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
