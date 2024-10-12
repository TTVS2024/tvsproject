import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class sdg_details extends StatefulWidget {
  const sdg_details({super.key});

  @override
  State<sdg_details> createState() => _sdg_detailsState();
}

class _sdg_detailsState extends State<sdg_details> {
  TextEditingController datePicker = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 20.0,
        backgroundColor: const Color.fromARGB(255, 3, 63, 113),
        title: Text('SDG DETAILS',
            style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.w700)),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Form(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Column(children: [
              const SizedBox(height: 20),
              TextField(
                controller: datePicker,
                decoration: InputDecoration(
                    labelText: 'Date',
                    labelStyle: TextStyle(
                      fontSize: 19,
                      color: Colors.blue,
                    ),
                    border: OutlineInputBorder()),
                onTap: () async {
                  DateTime? datetime = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime.now(),
                  );
                  if (datetime != null) {
                    String formattedDate =
                    DateFormat('yyyy-MM-dd').format(datetime);
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
                    border: OutlineInputBorder()),
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                    labelText: 'STD',
                    labelStyle: TextStyle(
                      fontSize: 19,
                      color: Colors.blue,
                    ),
                    border: OutlineInputBorder()),
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                    labelText: 'Department/Subject',
                    labelStyle: TextStyle(
                      fontSize: 19,
                      color: Colors.blue,
                    ),
                    border: OutlineInputBorder()),
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                    labelText: 'Topic for Discussion',
                    labelStyle: TextStyle(
                      fontSize: 19,
                      color: Colors.blue,
                    ),
                    border: OutlineInputBorder()),
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                    labelText: 'Class Handled by',
                    labelStyle: TextStyle(
                      fontSize: 19,
                      color: Colors.blue,
                    ),
                    border: OutlineInputBorder()),
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                    labelText: 'Learning Outcome',
                    labelStyle: TextStyle(
                      fontSize: 19,
                      color: Colors.blue,
                    ),
                    border: OutlineInputBorder()),
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                    labelText: 'Aids Used',
                    labelStyle: TextStyle(
                      fontSize: 19,
                      color: Colors.blue,
                    ),
                    border: OutlineInputBorder()),
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                    labelText: 'New Innovative',
                    labelStyle: TextStyle(
                      fontSize: 19,
                      color: Colors.blue,
                    ),
                    border: OutlineInputBorder()),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                child: Text('Save as draft'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {},
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                child: Text('Submit'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {},
              )
            ]),
          ),
        ),
      ),
    );
  }
}