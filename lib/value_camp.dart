import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'assembly_details.dart';
class value_camp extends StatefulWidget {
  const value_camp({super.key});

  @override
  State<value_camp> createState() => _value_campState();
}

class _value_campState extends State<value_camp> {
  TextEditingController datePicker = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 20.0,
        backgroundColor: const Color.fromARGB(255, 3, 63, 113),
        title: Text(
            'VALUE CAMP',
            style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.w700)
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(left: 10,right: 10),
          child: Column(
            children: <Widget>[
              const SizedBox(height: 20.0),
              ElevatedButton(
                child: Text('ASSEMBLY DETAILS'),
                onPressed: (){
                  Navigator.push(
                    context,MaterialPageRoute(builder: (context)=>assembly_details()),
                  );
                },
              ),
              const SizedBox(height: 20.0),
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
              const SizedBox(height: 20.0),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Level',
                  labelStyle: TextStyle(
                    fontSize: 19.0,
                    color: Colors.blue,
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20.0),
              TextField(
                decoration: InputDecoration(
                  labelText: 'STD',
                  labelStyle: TextStyle(
                    fontSize: 19,
                    color: Colors.blue,
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20.0),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Shift',
                  labelStyle: TextStyle(
                    fontSize: 19,
                    color: Colors.blue,
                  ),
                  border: OutlineInputBorder()
                ),
              ),
              const SizedBox(height: 20.0),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Topic/Value',
                  labelStyle: TextStyle(
                    fontSize: 19.0,
                    color: Colors.blue,
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20.0),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Addressed By',
                  labelStyle: TextStyle(
                    fontSize: 19.0,
                    color: Colors.blue,
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20.0),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Details',
                  labelStyle: TextStyle(
                    fontSize: 19.0,
                    color: Colors.blue,
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20.0),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Venue',
                  labelStyle: TextStyle(
                    fontSize: 19.0,
                    color: Colors.blue,
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20.0),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Activity',
                  labelStyle: TextStyle(
                    fontSize: 19.0,
                    color: Colors.blue,
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20.0),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Duration',
                  labelStyle: TextStyle(
                    fontSize: 19.0,
                    color: Colors.blue,
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20.0),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Learning Outcome',
                  labelStyle: TextStyle(
                    fontSize: 19.0,
                    color: Colors.blue,
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20.0),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Remarks',
                  labelStyle: TextStyle(
                    fontSize: 19.0,
                    color: Colors.blue,
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20.0),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Entered By',
                  labelStyle: TextStyle(
                    fontSize: 19.0,
                    color: Colors.blue,
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                child: Text('Save as draft'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
                onPressed: (){},
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                child: Text('Submit'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
                onPressed: (){},
              )
            ],
          ),
        ),
      ),
    );
  }
}
