import 'package:flutter/material.dart';
import 'package:fyp_ui_design/Applicant_Buttons/Personal/personaledit.dart';

class PesonalButton extends StatelessWidget {
  final String firstName;
  final String lastName;
  final String contact;
  final String email;
  final String date;
  final String city;
  final String gval;

  PesonalButton(
      {Key? key,
      required this.firstName,
      required this.lastName,
      required this.contact,
      required this.email,
      required this.date,
      required this.city,
      required this.gval})
      : super(key: key);

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
                      'PERSONNAL INFO',
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
                        "First Name: $firstName",
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        "Last Name: $lastName",
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 0),
                      child: Text(
                        "Contact: $contact",
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 0),
                      child: Text(
                        "Email: $email",
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        "Date: $date",
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        "City: $city",
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
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
                              builder: (context) => PersonalEdit()));
                    },
                    child: Icon(
                      Icons.add_box,
                      size: 40,
                    ),
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25, top: 700),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
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
                            Navigator.pop(context);
                          },
                          child: const Text(
                            'Back',
                            style: TextStyle(fontSize: 27, color: Colors.black),
                          ),
                        ),
                      ]))
            ])));
  }
}
