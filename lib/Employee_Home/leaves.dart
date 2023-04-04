import 'package:flutter/material.dart';
import 'package:fyp_ui_design/Applicant_Buttons/Personal/personal.dart';
import 'package:intl/intl.dart';

class EmployeeLeaveScreen extends StatefulWidget {
  const EmployeeLeaveScreen({super.key});

  @override
  State<EmployeeLeaveScreen> createState() => _EmployeeLeaveScreenState();
}

//Drop down list

// Controllers

class _EmployeeLeaveScreenState extends State<EmployeeLeaveScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 60),
          child: Text(
            'LEAVES',
            style: TextStyle(
                fontFamily: 'RobotoSlab-Black',
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.w900),
          ),
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
                      color: Colors.black,
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
                      "5-NOV-2022 \n   Sick Leave",
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
                      color: Colors.black,
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
                      "11-NOV-2022 \n   Casual Leave",
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
                      color: Colors.black,
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
                      "3-Dec-2022 \n   Earned Leave",
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
                      color: Colors.black,
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
                      "19-Dec-2022 \n   Casual Leave",
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
                      color: Colors.black,
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
                      "1-January-2022 \n   Earned Leave",
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
