import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class nobag_day extends StatefulWidget {
  const nobag_day ({super.key});

  @override
  State<nobag_day> createState() => _nobag_dayState();
}

class _nobag_dayState extends State<nobag_day> {
  TextEditingController datePicker = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 20.0,
        backgroundColor: const Color.fromARGB(255, 3, 63, 113),
        title: const Text(
            'NO BAG DAY',
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
                        labelText: 'Standard',
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
                        labelText: 'Subject',
                        labelStyle: TextStyle(
                          fontSize: 19,
                          color: Colors.blue,
                        ),
                        border: OutlineInputBorder()
                    ),
                  ),
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
                        labelText: 'Topic',
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
                        labelText: 'Activities Done',
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
                        labelText: 'No of Activities executed',
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
                        labelText: 'No of participation',
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
                        labelText: 'Remarks',
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
                        labelText: 'Concerns (if any)',
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
                        labelText: 'Learning outcome',
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
      )
    );
  }
}

