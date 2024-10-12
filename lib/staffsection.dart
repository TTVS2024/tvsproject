import 'package:flutter/material.dart';
import 'Event.dart';
import 'FACA.dart';
import 'FieldTrip.dart';
import 'LabAct.dart';
import 'LiveWork.dart';
import 'assemblyconsolidationForm.dart';
import 'careerguidanceForm.dart';
import 'classprojectsForm.dart';
import 'competitionForm.dart';
import 'dayboarding.dart';
import 'enrichment.dart';
import 'nobag_day.dart';
import 'online_class.dart';
import 'open_house.dart';
import 'parents_involvement.dart';
import 'peerteachingForm.dart';
import 'qualitycircleForm.dart';
import 'sdg_details.dart';
import 'selflearningForm.dart';
import 'social_project.dart';
import 'staff_leave_details.dart';
import 'student_empowerment.dart';
import 'supportive_saturday.dart';
import 'value_camp.dart';
class staff extends StatefulWidget {
  final String staffId;
  const staff({Key?key,required this.staffId}):super(key:key);

  @override
  State<staff> createState() => _staffState();
}

class _staffState extends State<staff> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 20.0,
        backgroundColor: const Color.fromARGB(255, 3, 63, 113),
        title: Text(
            'TTS-DMS',
            style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.w700)
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Form(
          child: Padding(
            padding: const EdgeInsets.only(left: 30.0,right: 30.0),
            child: Column(
              children: <Widget>[


                Container(
                  width: double.infinity,
                  height: 40,

                    child: Card(
                      color: Colors.white38,
                      child: Center(
                        child: Text(
                          'LOGGED IN AS ${widget.staffId}',
                          style: TextStyle(color: Colors.blue[900],fontSize: 13,fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                ),
                const SizedBox(height: 40),
                Container(
                  width: double.infinity,
                  height: 40,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,MaterialPageRoute(builder: (context)=>assemblyconsole()),
                      );
                    },
                    child: Card(
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          'ASSEMBLY CONSOLIDATION',
                          style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w700),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 40,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,MaterialPageRoute(builder: (context)=>careerguidance()),
                      );
                    },
                    child: Card(
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          'CAREER GUIDANCE/TALK',
                          style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w700),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 40,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,MaterialPageRoute(builder: (context)=>competition()),
                      );
                    },
                    child: Card(
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          'COMPETITION DETAILS',
                          style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w700),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 40,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,MaterialPageRoute(builder: (context)=>classprojects()),
                      );
                    },
                    child: Card(
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          'CLASS PROJECTS',
                          style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w700),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 40,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,MaterialPageRoute(builder: (context)=>DayBoardingForm()),
                      );
                    },
                    child: Card(
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          'DAY BOARDING',
                          style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w700),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 40,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,MaterialPageRoute(builder: (context)=>EnrichmentForm()),
                      );
                    },
                    child: Card(
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          'ENRICHMENT CLASS',
                          style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w700),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 40,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,MaterialPageRoute(builder: (context)=>EventsForm()),
                      );
                    },
                    child: Card(
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          'EVENT (STUDENT EMPOWERMENT)',
                          style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w700),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 40,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,MaterialPageRoute(builder: (context)=>FaCaDetails()),
                      );
                    },
                    child: Card(
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          'FA-CA DETAILS',
                          style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w700),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 40,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,MaterialPageRoute(builder: (context)=>FieldTrip()),
                      );
                    },
                    child: Card(
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          'FIELD TRIP',
                          style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w700),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 40,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,MaterialPageRoute(builder: (context)=>LabActivities()),
                      );
                    },
                    child: Card(
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          'LAB ACTIVITIES',
                          style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w700),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 40,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,MaterialPageRoute(builder: (context)=>LiveWorksheetDetails()),
                      );
                    },
                    child: Card(
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          'LIVE WORKSHEET',
                          style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w700),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 40,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,MaterialPageRoute(builder: (context)=>nobag_day()),
                      );
                    },
                    child: Card(
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          'NO BAG DAY',
                          style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w700),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 40,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,MaterialPageRoute(builder: (context)=>open_house()),
                      );
                    },
                    child: Card(
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          'OPEN HOUSE',
                          style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w700),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 40,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,MaterialPageRoute(builder: (context)=>online_class()),
                      );
                    },
                    child: Card(
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          'ONLINE CLASS',
                          style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w700),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 40,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,MaterialPageRoute(builder: (context)=>parents_involvement()),
                      );
                    },
                    child: Card(
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          'PARENTS INVOLVEMENT',
                          style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w700),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 40,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,MaterialPageRoute(builder: (context)=>peerteaching()),
                      );
                    },
                    child: Card(
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          'PEER TEACHING',
                          style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w700),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 40,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,MaterialPageRoute(builder: (context)=>qualitycircle()),
                      );
                    },
                    child: Card(
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          'QUALITY CIRCLE',
                          style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w700),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 40,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,MaterialPageRoute(builder: (context)=>selflearning()),
                      );
                    },
                    child: Card(
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          'SELF LEARNING',
                          style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w700),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 40,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,MaterialPageRoute(builder: (context)=>social_project()),
                      );
                    },
                    child: Card(
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          'SOCIAL PROJECT',
                          style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w700),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 40,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,MaterialPageRoute(builder: (context)=>staff_leave_details()),
                      );
                    },
                    child: Card(
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          'STAFF LEAVE DETAILS',
                          style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w700),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 40,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,MaterialPageRoute(builder: (context)=>student_empowerment()),
                      );
                    },
                    child: Card(
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          'STUDENT EMPOWERMENT',
                          style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w700),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 40,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,MaterialPageRoute(builder: (context)=>supportive_saturday()),
                      );
                    },
                    child: Card(
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          'SUPPORTIVE SATURDAY',
                          style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w700),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 40,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,MaterialPageRoute(builder: (context)=>sdg_details()),
                      );
                    },
                    child: Card(
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          'SDG DETAILS',
                          style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w700),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 40,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,MaterialPageRoute(builder: (context)=>value_camp()),
                      );
                    },
                    child: Card(
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          'VALUE CAMP',
                          style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w700),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}