import 'dart:convert';
import 'dart:math';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fyp_ui_design/Applicant_Buttons/Personal/personal.dart';
import 'package:fyp_ui_design/Models/jobpost_model.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;

class ApplicantApplyJob extends StatefulWidget {
  const ApplicantApplyJob({super.key});

  @override
  State<ApplicantApplyJob> createState() => _ApplicantApplyJobState();
}

class _ApplicantApplyJobState extends State<ApplicantApplyJob> {
  List<jobpostmodel> postlist = [];
  Future<List<jobpostmodel>> getapi() async {
    final responce = await http.get(
        Uri.parse('http://192.168.1.102/HrmFypApi/api/ApplicantInfo/JobGet'));
    var data = jsonDecode(responce.body.toString());
    if (responce.statusCode == 200) {
      postlist.clear();
      for (Map<dynamic, dynamic> i in data) {
        Map<String, dynamic> jsonMap =
            i.map((key, value) => MapEntry(key.toString(), value));
        postlist.add(jobpostmodel.fromJson(jsonMap));
      }

      return postlist;
    } else {
      return postlist;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text(
            'Apply For Job',
            style: TextStyle(
                fontFamily: 'RobotoSlab-Black',
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.w900),
          ),
        ),
        body: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Expanded(
                  child: FutureBuilder(
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
                                                "          Title:  ${postlist[index].jTitle}"),
                                            SizedBox(width: 10),
                                            Text(
                                                "(${postlist[index].nov.toString()})"),
                                          ],
                                        ),
                                        Text(postlist[index].dueDate.toString())
                                      ],
                                    )),
                              );
                            },
                          );
                        }
                      }),
                )
              ],
            ),
          ),
        ));
  }
}
