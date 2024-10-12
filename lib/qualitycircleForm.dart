import 'package:flutter/material.dart';


class qualitycircle extends StatelessWidget {
  const qualitycircle({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('NA4-Quality Circle'),
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
  TextEditingController teamnameController = TextEditingController();
  TextEditingController problemselectedController = TextEditingController();
  TextEditingController facilitatornameController = TextEditingController();
  TextEditingController noofstudentsController = TextEditingController();

  // Dropdown values
  String? selectedStd;
  String? selectedsec;

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
                controller: teamnameController,
                decoration: InputDecoration(
                  labelText: 'Team Name',
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
                controller: problemselectedController,
                decoration: InputDecoration(
                  labelText: 'Problem Selected',
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
                controller: facilitatornameController,
                decoration: InputDecoration(
                  labelText: 'Facilitator Name',
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
                controller: noofstudentsController,
                decoration: InputDecoration(
                  labelText: 'No of Students',
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
