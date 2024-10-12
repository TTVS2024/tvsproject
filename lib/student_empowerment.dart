import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class student_empowerment extends StatefulWidget {
  const student_empowerment({super.key});

  @override
  State<student_empowerment> createState() => _student_empowermentState();
}

class _student_empowermentState extends State<student_empowerment> {
  TextEditingController datePicker = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 20.0,
        backgroundColor: const Color.fromARGB(255, 3, 63, 113),
        title: Text(
            'STUDENT EMPOWERMENT',
            style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.w700)
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Form(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20.0),
            child: Column(
                children:[
                  const SizedBox(height: 20),
                  TextField(
                    controller: datePicker,
                    decoration: InputDecoration(
                        labelText: 'Date',
                        labelStyle: TextStyle(
                          fontSize: 19,
                          color: Colors.blue,
                        ),
                        border: OutlineInputBorder()
                    ),
                    onTap: () async {
                      DateTime? datetime = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime.now(),
                      );
                      if (datetime != null) {
                        String formattedDate = DateFormat('yyyy-MM-dd').format(datetime);
                        setState(() {
                          datePicker.text = formattedDate;
                        });
                      }
                    },
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'Level',
                        labelStyle: TextStyle(
                          fontSize: 19,
                          color: Colors.blue,
                        ),
                        border: OutlineInputBorder()
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'STD',
                        labelStyle: TextStyle(
                          fontSize: 19,
                          color: Colors.blue,
                        ),
                        border: OutlineInputBorder()
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'Topic',
                        labelStyle: TextStyle(
                          fontSize: 19,
                          color: Colors.blue,
                        ),
                        border: OutlineInputBorder()
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'Details',
                        labelStyle: TextStyle(
                          fontSize: 19,
                          color: Colors.blue,
                        ),
                        border: OutlineInputBorder()
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'Activities',
                        labelStyle: TextStyle(
                          fontSize: 19,
                          color: Colors.blue,
                        ),
                        border: OutlineInputBorder()
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'Resource Person',
                        labelStyle: TextStyle(
                          fontSize: 19,
                          color: Colors.blue,
                        ),
                        border: OutlineInputBorder()
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'Entry by(Catalyst member name)',
                        labelStyle: TextStyle(
                          fontSize: 19,
                          color: Colors.blue,
                        ),
                        border: OutlineInputBorder()
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'Remarks if any',
                        labelStyle: TextStyle(
                          fontSize: 19,
                          color: Colors.blue,
                        ),
                        border: OutlineInputBorder()
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    child: Text('Save as draft'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: (){},),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    child: Text('Submit'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: (){},)
                ]
            ),
          ),
        ),
      ),
    );
  }
}
