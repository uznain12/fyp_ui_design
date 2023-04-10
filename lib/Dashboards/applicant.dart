// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fyp_ui_design/Admin_Home/jobpost.dart';
import 'package:fyp_ui_design/Applicant_Buttons/Applications.dart';
import 'package:fyp_ui_design/Applicant_Buttons/Jobs.dart';
import 'package:fyp_ui_design/Applicant_Buttons/profile.dart';
import 'package:fyp_ui_design/Login_Screens/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ApplicantDashboard extends StatefulWidget {
  const ApplicantDashboard({super.key});

  @override
  State<ApplicantDashboard> createState() => _ApplicantDashboardState();
}

class _ApplicantDashboardState extends State<ApplicantDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Applicant Side"),
          centerTitle: true,
        ),
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: ListView(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                accountName: Text(
                  "   Umer Akram",
                  style: TextStyle(fontSize: 20),
                ),
                accountEmail: Text("umer123@gmail.coms"),
                currentAccountPicture: CircleAvatar(child: Text("U")),
              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text('Profile'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ApplicantProfile(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.work),
                title: const Text('Jobs'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ApplicantApplyJob(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.assignment),
                title: const Text('Applications'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ApplicantApplyApplications(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('Setting'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ApplicantApplyApplications(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text(
                  'Log Out',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () async {
                  SharedPreferences sp = await SharedPreferences.getInstance();
                  sp.clear();
                  // ignore: use_build_context_synchronously
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                  );
                },
              )
            ],
          ),
        ),
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/background.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 60, left: 110),
                child: Container(
                  height: 72,
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 5,
                        color: Colors.black,
                        style: BorderStyle.solid),
                  ),
                  child: const Text(
                    '    Dashboard \n       HR SIDE',
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
              padding: const EdgeInsets.only(top: 350),
            )
          ],
        ));
  }
}
