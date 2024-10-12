import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class assembly_details extends StatefulWidget {
  const assembly_details({super.key});

  @override
  State<assembly_details> createState() => _assembly_detailsState();
}

class _assembly_detailsState extends State<assembly_details> {
  TextEditingController datePicker = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 20.0,
        backgroundColor: const Color.fromARGB(255, 3, 63, 113),
        title: Text(
            'ASSEMBLY DETAILS',
            style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.w700)
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0,right: 10.0),
          child: Column(
            children: <Widget>[
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
                  labelText: 'General/Class Assembly',
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
                  labelText: 'Level',
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
                  labelText: 'Sec',
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
                  labelText: 'AN/FN',
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
                  labelText: 'Theme',
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
                  labelText: 'Details',
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
                  labelText: 'Entered by(Catalyst member name)',
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
                  labelText: 'Remarks if any',
                  labelStyle: TextStyle(
                    fontSize: 19,
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
