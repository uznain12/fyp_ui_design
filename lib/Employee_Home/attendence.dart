import 'package:flutter/material.dart';
import 'package:fyp_ui_design/Applicant_Buttons/Personal/personal.dart';
import 'package:intl/intl.dart';

class EmployeeAttendenceScreen extends StatefulWidget {
  const EmployeeAttendenceScreen({super.key});

  @override
  State<EmployeeAttendenceScreen> createState() =>
      _EmployeeAttendenceScreenState();
}

//Drop down list
// first strin for title only

// Controllers

TextEditingController fnamecontroller = new TextEditingController();
TextEditingController lnamecontroller = new TextEditingController();
TextEditingController cniccontroller = new TextEditingController();
TextEditingController contackcontroller = new TextEditingController();
TextEditingController emailcontroller = new TextEditingController();
TextEditingController _datecontroller = new TextEditingController();

class _EmployeeAttendenceScreenState extends State<EmployeeAttendenceScreen> {
  String gval = "none";
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: const Text(
          'ATTENDANCE',
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
                          image: AssetImage('images/Right-Arrow.png')),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 50, left: 30),
                    child: Text(
                      "5-NOV-2022 \n   8:30 to 4:30",
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
                          image: AssetImage('images/Right-Arrow.png')),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 50, left: 30),
                    child: Text(
                      "11-NOV-2022 \n   11:30 to 4:30",
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
                          image: AssetImage('images/Right-Arrow.png')),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 50, left: 30),
                    child: Text(
                      "3-Dec-2022 \n   10:30 to 3:30",
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
                          image: AssetImage('images/Right-Arrow.png')),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 50, left: 30),
                    child: Text(
                      "19-Dec-2022 \n   9:30 to 4:30",
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
                          image: AssetImage('images/Right-Arrow.png')),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 50, left: 30),
                    child: Text(
                      "1-January-2022 \n   12:30 to 4:30",
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
