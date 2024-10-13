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
          title: const Text(
            'NA5-Assembly Consolidation',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.indigo.shade900,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
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
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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

  String getCurrentDate() => DateFormat('dd-MM-yyyy').format(DateTime.now());
  String getCurrentTime() => DateFormat('hh:mm a').format(DateTime.now());
  String getCurrentDay() => DateFormat('EEEE').format(DateTime.now());

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
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildInfoBox('Date', getCurrentDate()),
                  _buildInfoBox('Time', getCurrentTime()),
                  _buildInfoBox('Day', getCurrentDay()),
                ],
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _selectMonth(context),
                child: AbsorbPointer(
                  child: TextFormField(
                    controller: monthController,
                    style: const TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: InputDecoration(
                      labelText: 'Select Date',
                      labelStyle: const TextStyle(
                        fontWeight: FontWeight.bold, // Make the label text bold
                        color: Colors.black, // Change label color to black
                      ),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.black87,
                            width: 2.0), // Set border color and width
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.black87,
                            width: 2.0), // Set focused border color and width
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.black87,
                            width: 2.0), // Set enabled border color and width
                      ),
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
                style: const TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  labelText: 'Level',
                  labelStyle: const TextStyle(
                    fontWeight: FontWeight.bold, // Make the label text bold
                    color: Colors.black, // Change label color to black
                  ),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.black87,
                        width: 2.0), // Set border color and width
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.black87,
                        width: 2.0), // Set focused border color and width
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.black87,
                        width: 2.0), // Set enabled border color and width
                  ),
                ),
                hint: Text(
                  'Select Level',
                  style: TextStyle(
                    color: Colors.black, // Black color
                    fontWeight: FontWeight.bold, // Bold text
                  ),
                ),
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
                    child: Text(
                      value,
                      style: TextStyle(
                        color: Colors.black, // Black color for dropdown items
                        fontWeight:
                            FontWeight.bold, // Bold text for dropdown items
                      ),
                    ),
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
                style: const TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  labelText: 'Std',
                  labelStyle: const TextStyle(
                    fontWeight: FontWeight.bold, // Make the label text bold
                    color: Colors.black, // Change label color to black
                  ),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.black87,
                        width: 2.0), // Set border color and width
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.black87,
                        width: 2.0), // Set focused border color and width
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.black87,
                        width: 2.0), // Set enabled border color and width
                  ),
                ),
                hint: Text(
                  'Select Level',
                  style: TextStyle(
                    color: Colors.black, // Black color
                    fontWeight: FontWeight.bold, // Bold text
                  ),
                ),
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
                    child: Text(
                      value,
                      style: TextStyle(
                        color: Colors.black, // Black color for dropdown items
                        fontWeight:
                            FontWeight.bold, // Bold text for dropdown items
                      ),
                    ),
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
                style: const TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  labelText: 'Subject',
                  labelStyle: const TextStyle(
                    fontWeight: FontWeight.bold, // Make the label text bold
                    color: Colors.black, // Change label color to black
                  ),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.black87,
                        width: 2.0), // Set border color and width
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.black87,
                        width: 2.0), // Set focused border color and width
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.black87,
                        width: 2.0), // Set enabled border color and width
                  ),
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
                style: const TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  labelText: 'Topic Discussed',
                  labelStyle: const TextStyle(
                    fontWeight: FontWeight.bold, // Make the label text bold
                    color: Colors.black, // Change label color to black
                  ),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.black87,
                        width: 2.0), // Set border color and width
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.black87,
                        width: 2.0), // Set focused border color and width
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.black87,
                        width: 2.0), // Set enabled border color and width
                  ),
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
                style: const TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  labelText: 'Target Group',
                  labelStyle: const TextStyle(
                    fontWeight: FontWeight.bold, // Make the label text bold
                    color: Colors.black, // Change label color to black
                  ),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.black87,
                        width: 2.0), // Set border color and width
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.black87,
                        width: 2.0), // Set focused border color and width
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.black87,
                        width: 2.0), // Set enabled border color and width
                  ),
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
                style: const TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  labelText: 'Addressed By',
                  labelStyle: const TextStyle(
                    fontWeight: FontWeight.bold, // Make the label text bold
                    color: Colors.black, // Change label color to black
                  ),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.black87,
                        width: 2.0), // Set border color and width
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.black87,
                        width: 2.0), // Set focused border color and width
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.black87,
                        width: 2.0), // Set enabled border color and width
                  ),
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
                style: const TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  labelText: 'Guest Details',
                  labelStyle: const TextStyle(
                    fontWeight: FontWeight.bold, // Make the label text bold
                    color: Colors.black, // Change label color to black
                  ),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.black87,
                        width: 2.0), // Set border color and width
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.black87,
                        width: 2.0), // Set focused border color and width
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.black87,
                        width: 2.0), // Set enabled border color and width
                  ),
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
                style: const TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  labelText: 'No of Participation',
                  labelStyle: const TextStyle(
                    fontWeight: FontWeight.bold, // Make the label text bold
                    color: Colors.black, // Change label color to black
                  ),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.black87,
                        width: 2.0), // Set border color and width
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.black87,
                        width: 2.0), // Set focused border color and width
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.black87,
                        width: 2.0), // Set enabled border color and width
                  ),
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
                style: const TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  labelText: 'No of Peroids',
                  labelStyle: const TextStyle(
                    fontWeight: FontWeight.bold, // Make the label text bold
                    color: Colors.black, // Change label color to black
                  ),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.black87,
                        width: 2.0), // Set border color and width
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.black87,
                        width: 2.0), // Set focused border color and width
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.black87,
                        width: 2.0), // Set enabled border color and width
                  ),
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
                style: const TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  labelText: 'Students Feedback',
                  labelStyle: const TextStyle(
                    fontWeight: FontWeight.bold, // Make the label text bold
                    color: Colors.black, // Change label color to black
                  ),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.black87,
                        width: 2.0), // Set border color and width
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.black87,
                        width: 2.0), // Set focused border color and width
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.black87,
                        width: 2.0), // Set enabled border color and width
                  ),
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
                  backgroundColor: Colors.indigo.shade900,
                ),
                child: const Text(
                  'Save as Draft',
                  style:
                      TextStyle(color: Colors.white), // Text color set to black
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
                  backgroundColor: Colors.indigo.shade900,
                ),
                child: const Text(
                  'Submit',
                  style:
                      TextStyle(color: Colors.white), // Text color set to black
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildInfoBox(String label, String value) {
  return Container(
    padding: const EdgeInsets.all(8.0),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.black87, width: 2.0),
      borderRadius: BorderRadius.circular(8.0),
    ),
    child: Column(
      children: [
        Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 4),
        Text(value, style: const TextStyle(fontSize: 16)),
      ],
    ),
  );
}
