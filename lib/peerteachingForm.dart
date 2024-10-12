import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class peerteaching extends StatelessWidget {
  const peerteaching({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Peer Teaching'),
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
  TextEditingController topicController = TextEditingController();
  TextEditingController subjectController = TextEditingController();
  TextEditingController contentsdeliveredController = TextEditingController();
  TextEditingController handledbyController = TextEditingController();
  TextEditingController noofobserversController = TextEditingController();
  TextEditingController noofstudentattendController = TextEditingController();
  TextEditingController enteredbyController = TextEditingController();

  // Dropdown values
  String? selectedLevel;
  String? selectedStd;
  String? selectedsec;

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
              SizedBox(height: 10),
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
                controller: subjectController,
                decoration: InputDecoration(
                  labelText: 'Subject',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter this field';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              DropdownButtonFormField<String>(
                value: selectedsec,
                decoration: InputDecoration(
                  labelText: 'Sec',
                  border: OutlineInputBorder(),
                ),
                hint: Text('Select Sec'),
                items: ['A', 'B', 'C', 'D', 'E', 'F']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    selectedsec = newValue;
                  });
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please select the sec';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: topicController,
                decoration: InputDecoration(
                  labelText: 'Topic',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter this field';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: contentsdeliveredController,
                decoration: InputDecoration(
                  labelText: 'Contents Delivered',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter this field';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: handledbyController,
                decoration: InputDecoration(
                  labelText: 'Handled By',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter this field';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: noofobserversController,
                decoration: InputDecoration(
                  labelText: 'No of Observers',
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
              SizedBox(height: 10),
              TextFormField(
                controller: noofstudentattendController,
                decoration: InputDecoration(
                  labelText: 'No of Students Attended',
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
              SizedBox(height: 10),
              TextFormField(
                controller: enteredbyController,
                decoration: InputDecoration(
                  labelText: 'Entered By',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter this field';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Save as Draft Logic
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Form saved as draft')),
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
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Form Submitted')),
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
