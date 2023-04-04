// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fyp_ui_design/Applicant_Buttons/Applications.dart';
import 'package:fyp_ui_design/Applicant_Buttons/Jobs.dart';
import 'package:fyp_ui_design/Applicant_Buttons/profile.dart';
import 'package:fyp_ui_design/Models/login_model.dart';

import 'package:http/http.dart';

import 'package:http/http.dart' as http;
import 'package:json_annotation/json_annotation.dart';

class User {
  final String username;
  final String password;

  User({required this.username, required this.password});
}

class EmployeeDashboard extends StatefulWidget {
  const EmployeeDashboard({super.key});

  @override
  State<EmployeeDashboard> createState() => _EmployeeDashboardState();
}

class _EmployeeDashboardState extends State<EmployeeDashboard> {
  List<LoginModel> postlist = [];
  Future<List<LoginModel>> getapi() async {
    final responce = await http
        .get(Uri.parse('http://192.168.1.108/HrmFypApi/api/UserLogin/Login'));
    var data = jsonDecode(responce.body.toString());
    if (responce.statusCode == 200) {
      postlist.clear();
      for (Map<dynamic, dynamic> i in data) {
        Map<String, dynamic> jsonMap =
            i.map((key, value) => MapEntry(key.toString(), value));
        postlist.add(LoginModel.frommap(jsonMap));
      }

      return postlist;
    } else {
      return postlist;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/register.png'), fit: BoxFit.cover)),
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blue.shade400,
            ),
            drawer: Drawer(
              width: 300,
              // ignore: sort_child_properties_last
              child: ListView(
                padding: EdgeInsets.zero,
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
                    title: const Text('Log Out'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ApplicantApplyApplications(),
                        ),
                      );
                    },
                  ),
                ],
              ),
              backgroundColor: Colors.white,
              elevation: 4.0,
            ),
            body: Stack(
              children: [
                Container(
                  color: Colors.white,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 600),
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.blue.shade900,
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(50),
                              bottomRight: Radius.circular(50)))),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 40, left: 110),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 5,
                            color: Colors.black,
                            style: BorderStyle.solid),
                      ),
                      child: const Text(
                        '    Dashboard \n Applicant side',
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
                  child: Column(children: [
                    FutureBuilder(
                        future: getapi(),
                        builder: (context, snapshot) {
                          if (!snapshot.hasData) {
                            return Text("Loading");
                          } else {
                            return ListView.builder(
                              itemCount: postlist.length,
                              itemBuilder: (context, index) {
                                return Card(
                                  child: Container(
                                      width: 300,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade100,
                                        borderRadius: BorderRadius.circular(8),
                                        boxShadow: const [
                                          BoxShadow(
                                            color: Colors.black,
                                            offset: Offset(0, 8),
                                            blurRadius: 8,
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                  "          Title:  ${postlist[index].fname}"),
                                              SizedBox(width: 10),
                                              Text(
                                                  "(${postlist[index].lname.toString()})"),
                                            ],
                                          ),
                                          Text(postlist[index].email.toString())
                                        ],
                                      )),
                                );
                              },
                            );
                          }
                        }),
                  ]),
                )
              ],
            )));
  }
}
