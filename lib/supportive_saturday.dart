import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class supportive_saturday extends StatefulWidget {
  const supportive_saturday({super.key});

  @override
  State<supportive_saturday> createState() => _supportive_saturdayState();
}

class _supportive_saturdayState extends State<supportive_saturday> {
  TextEditingController datePicker = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 20.0,
        backgroundColor: const Color.fromARGB(255, 3, 63, 113),
        title: const Text(
            'SUPPORTIVE SATURDAY',
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
                    decoration: const InputDecoration(
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
                  const TextField(
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
                  const TextField(
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
                  const TextField(
                    decoration: InputDecoration(
                        labelText: 'No Of Supportive',
                        labelStyle: TextStyle(
                          fontSize: 19,
                          color: Colors.blue,
                        ),
                        border: OutlineInputBorder()
                    ),
                  ),
                  const SizedBox(height: 20),
                  const TextField(
                    decoration: InputDecoration(
                        labelText: 'Discussion Topic',
                        labelStyle: TextStyle(
                          fontSize: 19,
                          color: Colors.blue,
                        ),
                        border: OutlineInputBorder()
                    ),
                  ),
                  const SizedBox(height: 20),
                  const TextField(
                    decoration: InputDecoration(
                        labelText: 'Type Of Activity Executed',
                        labelStyle: TextStyle(
                          fontSize: 19,
                          color: Colors.blue,
                        ),
                        border: OutlineInputBorder()
                    ),
                  ),
                  const SizedBox(height: 20),
                  const TextField(
                    decoration: InputDecoration(
                        labelText: 'FeedBack',
                        labelStyle: TextStyle(
                          fontSize: 19,
                          color: Colors.blue,
                        ),
                        border: OutlineInputBorder()
                    ),
                  ),
                  const SizedBox(height: 20),
                  const TextField(
                    decoration: InputDecoration(
                        labelText: 'Class Handled',
                        labelStyle: TextStyle(
                          fontSize: 19,
                          color: Colors.blue,
                        ),
                        border: OutlineInputBorder()
                    ),
                  ),
                  const SizedBox(height: 20),
                  const TextField(
                    decoration: InputDecoration(
                        labelText: 'Aids Used',
                        labelStyle: TextStyle(
                          fontSize: 19,
                          color: Colors.blue,
                        ),
                        border: OutlineInputBorder()
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: (){},
                    child: Text('Save as draft'),),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: (){},
                    child: Text('Submit'),)
                ]
            ),
          ),
        ),
      ),
    );
  }
}