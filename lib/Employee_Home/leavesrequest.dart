import 'package:flutter/material.dart';
import 'package:fyp_ui_design/Applicant_Buttons/Personal/personal.dart';
import 'package:intl/intl.dart';

class EmployeeLeaveReqScreen extends StatefulWidget {
  const EmployeeLeaveReqScreen({super.key});

  @override
  State<EmployeeLeaveReqScreen> createState() => _EmployeeLeaveReqScreenState();
}

//Drop down list
// first strin for title only
String _selectedValue = 'Leave Type';

String? selectedvalue;
List<String> Leaves = ["Sick", "Earn", "Casual", "Annual"];
List<DropdownMenuItem<String>> getMenuItems() {
  List<DropdownMenuItem<String>> menulist = [];
  Leaves.forEach((element) {
    DropdownMenuItem<String> item = DropdownMenuItem<String>(
      child: Text(
        element,
        style: TextStyle(fontSize: 20, color: Colors.black),
      ),
      value: element,
    );
    menulist.add(item);
  });
  return menulist;
}

// Controllers

TextEditingController lnamecontroller = new TextEditingController();

TextEditingController _fromdatecontroller = new TextEditingController();
TextEditingController _todatecontroller = new TextEditingController();

class _EmployeeLeaveReqScreenState extends State<EmployeeLeaveReqScreen> {
  String gval = "none";
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: const Text(
          'Leave Request',
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
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 50),
                child: Container(
                  height: 50,
                  width: 380,
                  child: InputDecorator(
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade100,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      contentPadding: const EdgeInsets.all(10),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                          hint: Text(_selectedValue),
                          style: TextStyle(fontSize: 20),
                          isExpanded: true,
                          value: selectedvalue,
                          items: getMenuItems(),
                          onChanged: (value) {
                            setState(() {
                              selectedvalue = value.toString();
                              // selectedvalue="America";
                            });
                          }),
                    ),
                  ),
                ),
              ),
              Container(
                height: 70,
                width: 410,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
                  child: TextFormField(
                    controller: _fromdatecontroller,
                    style: TextStyle(fontSize: 15),
                    decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        labelText: 'From Date',
                        hintText: 'Please Select Date',
                        icon: Icon(Icons.calendar_today_rounded),
                        hintStyle: TextStyle(fontSize: 15),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        labelStyle:
                            TextStyle(fontSize: 25, color: Colors.black),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onTap: () async {
                      DateTime? pickeddate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2050));
                      if (pickeddate != null) {
                        setState(() {
                          DateTime now = DateTime.now();
                          _fromdatecontroller.text =
                              DateFormat('dd-MM-yyyy').format(now);
                        });
                      }
                    },
                  ),
                ),
              ),
              Container(
                height: 70,
                width: 410,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
                  child: TextFormField(
                    controller: _todatecontroller,
                    style: TextStyle(fontSize: 15),
                    decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        labelText: 'To Date',
                        hintText: 'Please Select Date',
                        icon: Icon(Icons.calendar_today_rounded),
                        hintStyle: TextStyle(fontSize: 15),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        labelStyle:
                            TextStyle(fontSize: 25, color: Colors.black),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onTap: () async {
                      DateTime? pickeddate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2050));
                      if (pickeddate != null) {
                        setState(() {
                          DateTime now = DateTime.now();
                          _todatecontroller.text =
                              DateFormat('dd-MM-yyyy').format(now);
                        });
                      }
                    },
                  ),
                ),
              ),
              Container(
                height: 70,
                width: 410,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
                  child: TextFormField(
                    controller: lnamecontroller,
                    style: TextStyle(fontSize: 15),
                    decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        labelText: 'Reason',
                        hintText: '',
                        hintStyle: TextStyle(fontSize: 15),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        labelStyle:
                            TextStyle(fontSize: 25, color: Colors.black),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 280, right: 25, top: 20),
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
                      onPressed: () {},
                      child: const Text(
                        'Submit',
                        style: TextStyle(fontSize: 27, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ]),
    ));
  }
}
