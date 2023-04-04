import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fyp_ui_design/Applicant_Buttons/Education/education.dart';
import 'package:fyp_ui_design/Applicant_Buttons/Personal/personal.dart';
import 'package:fyp_ui_design/Dashboards/applicant.dart';

class ApplicantProfile extends StatefulWidget {
  const ApplicantProfile({super.key});

  @override
  State<ApplicantProfile> createState() => _ApplicantProfileState();
}

class _ApplicantProfileState extends State<ApplicantProfile> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/register.png'), fit: BoxFit.cover)),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Stack(
              children: [
                Container(
                  color: Colors.white,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 650),
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.blue.shade900,
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(50),
                              bottomRight: Radius.circular(50)))),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 110, left: 135),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 5,
                            color: Colors.black,
                            style: BorderStyle.solid),
                      ),
                      child: const Text(
                        'PROFILE',
                        style: TextStyle(
                            fontFamily: 'RobotoSlab-Black',
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.w900),
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 770),
                  child: Container(
                      decoration: const BoxDecoration(
                          color: Color(0xFFFBE7C6),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(50),
                              topLeft: Radius.circular(50)))),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 280),
                  child: Column(children: [
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 0, left: 25),
                        ),
                        Container(
                          color: Colors.black,
                          height: 40,
                          width: 160,
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PesonalButton(
                                            city: '',
                                            firstName: '',
                                            lastName: '',
                                            email: '',
                                            date: '',
                                            contact: '',
                                            gval: '',
                                          )));
                            },
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.grey.shade200,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(9.9),
                                  side: const BorderSide(
                                      color: Colors.black, width: 5.0),
                                )),
                            child: const Text(
                              'Personal',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'RobotoSlab-Black',
                                  color: Colors.black,
                                  fontWeight: FontWeight.w900),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 0, left: 25),
                        ),
                        Container(
                          color: Colors.black,
                          height: 40,
                          width: 160,
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => EducationButton(
                                            Board: '',
                                            Major: '',
                                            Year: '',
                                            Title: '',
                                          )));
                            },
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.grey.shade200,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(9.9),
                                  side: const BorderSide(
                                      color: Colors.black, width: 5.0),
                                )),
                            child: const Text(
                              'Education',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'RobotoSlab-Black',
                                  color: Colors.black,
                                  fontWeight: FontWeight.w900),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 0, left: 25),
                        ),
                        Container(
                          color: Colors.black,
                          height: 40,
                          width: 160,
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.grey.shade200,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(9.9),
                                  side: const BorderSide(
                                      color: Colors.black, width: 5.0),
                                )),
                            child: const Text(
                              'Experience',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'RobotoSlab-Black',
                                  color: Colors.black,
                                  fontWeight: FontWeight.w900),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 0, left: 25),
                        ),
                        Container(
                          color: Colors.black,
                          height: 40,
                          width: 160,
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.grey.shade200,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(9.9),
                                  side: const BorderSide(
                                      color: Colors.black, width: 5.0),
                                )),
                            child: const Text(
                              'Others',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'RobotoSlab-Black',
                                  color: Colors.black,
                                  fontWeight: FontWeight.w900),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(top: 60, left: 60),
                          child: Icon(
                            Icons.add_box,
                            size: 30,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 60, left: 10),
                          child: Text('Attach Your Cv',
                              style: TextStyle(
                                  fontSize: 22,
                                  fontFamily: 'RobotoSlab-Black',
                                  color: Colors.black,
                                  fontWeight: FontWeight.w900,
                                  decoration: TextDecoration.underline)),
                        ),
                      ],
                    )
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 700, left: 15),
                  child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.grey.shade100,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9.9),
                          side: const BorderSide(
                            color: Colors.black,
                            width: 2.0,
                          ),
                        )),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EmployeeDashboard()));
                    },
                    child: const Text(
                      'Back',
                      style: TextStyle(fontSize: 27, color: Colors.black),
                    ),
                  ),
                ),
              ],
            )));
  }
}
