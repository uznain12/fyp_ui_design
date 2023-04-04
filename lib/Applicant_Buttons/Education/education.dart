import 'package:flutter/material.dart';
import 'package:fyp_ui_design/Applicant_Buttons/Education/addeducation.dart';
import 'package:fyp_ui_design/Applicant_Buttons/profile.dart';

class EducationButton extends StatelessWidget {
  final String Title;
  final String Major;
  final String Board;
  final String Year;
  const EducationButton({
    Key? key,
    required this.Title,
    required this.Major,
    required this.Board,
    required this.Year,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/register.png'), fit: BoxFit.cover)),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Stack(children: [
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
                  padding: const EdgeInsets.only(top: 110, left: 90),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          width: 5,
                          color: Colors.black,
                          style: BorderStyle.solid),
                    ),
                    child: const Text(
                      'EDUCATION',
                      style: TextStyle(
                          fontFamily: 'RobotoSlab-Black',
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.w900),
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 300, left: 20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 0),
                        child: Text(
                          "Title: $Title",
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 0),
                        child: Text(
                          "Major: $Major",
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 0),
                        child: Text(
                          "Board: $Board",
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 0),
                        child: Text(
                          "Year: $Year",
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 700, left: 300),
                child: Container(
                  color: Colors.grey,
                  width: 40,
                  height: 40,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AddEcucation()));
                    },
                    child: Icon(
                      Icons.add_box,
                      size: 40,
                    ),
                  ),
                ),
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
                            builder: (context) => ApplicantProfile()));
                  },
                  child: const Text(
                    'Back',
                    style: TextStyle(fontSize: 27, color: Colors.black),
                  ),
                ),
              ),
            ])));
  }
}
