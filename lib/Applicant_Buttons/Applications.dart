import 'package:flutter/material.dart';
import 'package:fyp_ui_design/Applicant_Buttons/Personal/personal.dart';
import 'package:intl/intl.dart';

class ApplicantApplyApplications extends StatefulWidget {
  const ApplicantApplyApplications({super.key});

  @override
  State<ApplicantApplyApplications> createState() =>
      _ApplicantApplyApplicationsState();
}

class _ApplicantApplyApplicationsState
    extends State<ApplicantApplyApplications> {
  String gval = "none";
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: const Text(
          'APPLICATIONS',
          style: TextStyle(
              fontFamily: 'RobotoSlab-Black',
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.w900),
        ),
      ),
      body: Stack(children: [
        Container(
          color: Colors.white,
        ),
        SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50, left: 20),
                    child: Container(
                      height: 40,
                      width: 50,
                      // ignore: prefer_const_constructors
                      child: Image(
                          height: 200,
                          width: 200,
                          // ignore: prefer_const_constructors
                          image: AssetImage('images/jobicon.png')),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 50, left: 30),
                    child: Text(
                      "Professor \n     2-feb-2023 \n             No Reply",
                      style: TextStyle(
                          fontSize: 25, fontFamily: 'RobotoSlab-Black'),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50, left: 20),
                    child: Container(
                      height: 40,
                      width: 50,
                      // ignore: prefer_const_constructors
                      child: Image(
                          height: 200,
                          width: 200,
                          // ignore: prefer_const_constructors
                          image: AssetImage('images/jobicon.png')),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 50, left: 30),
                    child: Text(
                      "",
                      style: TextStyle(
                          fontSize: 25, fontFamily: 'RobotoSlab-Black'),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50, left: 20),
                    child: Container(
                      height: 40,
                      width: 50,
                      // ignore: prefer_const_constructors
                      child: Image(
                          height: 200,
                          width: 200,
                          // ignore: prefer_const_constructors
                          image: AssetImage('images/jobicon.png')),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 50, left: 30),
                    child: Text(
                      " Lab Attendant \n   Due Date:15-Feb-2023",
                      style: TextStyle(
                          fontSize: 25, fontFamily: 'RobotoSlab-Black'),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50, left: 20),
                    child: Container(
                      height: 40,
                      width: 50,
                      // ignore: prefer_const_constructors
                      child: Image(
                          height: 200,
                          width: 200,
                          // ignore: prefer_const_constructors
                          image: AssetImage('images/jobicon.png')),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 50, left: 30),
                    child: Text(
                      "Librerian(2)\n   Due date:11-Feb-2023",
                      style: TextStyle(
                          fontSize: 25, fontFamily: 'RobotoSlab-Black'),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50, left: 20),
                    child: Container(
                      height: 40,
                      width: 50,
                      // ignore: prefer_const_constructors
                      child: Image(
                          height: 200,
                          width: 200,
                          // ignore: prefer_const_constructors
                          image: AssetImage('images/jobicon.png')),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 50, left: 30),
                    child: Text(
                      "Guard(2) \n   Due Date:12-Feb-2023",
                      style: TextStyle(
                          fontSize: 25, fontFamily: 'RobotoSlab-Black'),
                    ),
                  )
                ],
              ),
            ],
          ),
        )
      ]),
    ));
  }
}
