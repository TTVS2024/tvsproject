import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class careerguidance extends StatelessWidget {
  const careerguidance({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('NA11-Career Guidance/Talk'),
          backgroundColor: Colors.blue,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: WorksheetForm(),
      ),
    );
  }
}

class WorksheetForm extends StatefulWidget {
  const WorksheetForm({super.key});

  @override
  _WorksheetFormState createState() => _WorksheetFormState();
}

class _WorksheetFormState extends State<WorksheetForm> {
  final _formKey = GlobalKey<FormState>();

  // TextEditingControllers for capturing input
  TextEditingController monthController = TextEditingController();
  TextEditingController subjectController = TextEditingController();
  TextEditingController topicdiscussedController = TextEditingController();
  TextEditingController targetgroupController = TextEditingController();
  TextEditingController addressedbyController = TextEditingController();
  TextEditingController guestdetailController = TextEditingController();
  TextEditingController studentsfeedfackController = TextEditingController();
  TextEditingController noofparticipationController = TextEditingController();
  TextEditingController noofperoidsController = TextEditingController();

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
        // Format the picked date into 'dd MMMM yyyy'
        monthController.text = DateFormat('dd MMMM yyyy').format(picked);
      });
    } else {
      // If the user cancels the date picker, make sure no error is thrown.
      setState(() {
        monthController.text = ''; // Optionally clear the field
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
              const SizedBox(height: 10),
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
              const SizedBox(height: 10),
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
              const SizedBox(height: 10),
              TextFormField(
                controller: subjectController,
                decoration: InputDecoration(
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
              TextFormField(
                controller: topicdiscussedController,
                decoration: InputDecoration(
                  labelText: 'Topic Discussed',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter this field';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: targetgroupController,
                decoration: InputDecoration(
                  labelText: 'Target Group',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter this field';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: addressedbyController,
                decoration: InputDecoration(
                  labelText: 'Addressed By',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter this field';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: guestdetailController,
                decoration: InputDecoration(
                  labelText: 'Guest Details',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter this field';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: noofparticipationController,
                decoration: InputDecoration(
                  labelText: 'No of Participation',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter this field';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: noofperoidsController,
                decoration: InputDecoration(
                  labelText: 'No of Peroids',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter this field';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: studentsfeedfackController,
                decoration: InputDecoration(
                  labelText: 'Students Feedback',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter this field';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Save as Draft Logic
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Form saved as draft')),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                child: const Text(
                  'Save as Draft',
                  style:
                      TextStyle(color: Colors.black), // Text color set to black
                ),
              ),
              const SizedBox(height: 10),
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
                  style:
                      TextStyle(color: Colors.black), // Text color set to black
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
