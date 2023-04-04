import 'package:flutter/material.dart';
import 'package:fyp_ui_design/Applicant_Buttons/Education/education.dart';
import 'package:intl/intl.dart';

class AddEcucation extends StatefulWidget {
  const AddEcucation({super.key});

  @override
  State<AddEcucation> createState() => _AddEcucationState();
}

TextEditingController _datecontroller = new TextEditingController();

//Drop down list
// first strin for title only
String _titleValue = 'Title';

String? titlevalue;
List<String> TitleList = ["Matric", "Inter", "Graduation", "Master"];
List<DropdownMenuItem<String>> getMenuItems() {
  List<DropdownMenuItem<String>> menulist = [];
  TitleList.forEach((element) {
    DropdownMenuItem<String> item = DropdownMenuItem<String>(
      child: Text(
        element,
        style: const TextStyle(fontSize: 20, color: Colors.black),
      ),
      value: element,
    );
    menulist.add(item);
  });
  return menulist;
}

//
//
//
String _majorValue = 'Major';

String? major;
List<String> MajorList = ["Fsc", "Ics", "O-Level", "Bsc"];
List<DropdownMenuItem<String>> majorMenuItems() {
  List<DropdownMenuItem<String>> menulist = [];
  MajorList.forEach((element) {
    DropdownMenuItem<String> item = DropdownMenuItem<String>(
      child: Text(
        element,
        style: const TextStyle(fontSize: 20, color: Colors.black),
      ),
      value: element,
    );
    menulist.add(item);
  });
  return menulist;
}

///
///
////
String _selectedBoard = 'Board';

String? sboard;
List<String> boardlist = ["Rawalpindi", "Faderal", "Gujarkhan ", "Karachi"];
List<DropdownMenuItem<String>> boardMenuItems() {
  List<DropdownMenuItem<String>> menulist = [];
  boardlist.forEach((element) {
    DropdownMenuItem<String> item = DropdownMenuItem<String>(
      child: Text(
        element,
        style: const TextStyle(fontSize: 20, color: Colors.black),
      ),
      value: element,
    );
    menulist.add(item);
  });
  return menulist;
}
// Controllers

class _AddEcucationState extends State<AddEcucation> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      appBar: AppBar(
        title: const Text(
          'ADD EDUCATION',
          style: TextStyle(
              fontFamily: 'RobotoSlab-Black',
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.w900),
        ),
      ),
      backgroundColor: Colors.transparent,
      body: Stack(children: [
        Container(
          color: Colors.white,
        ),
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 150),
            child: Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 10)),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
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
                            hint: Text(_titleValue),
                            style: TextStyle(fontSize: 20),
                            isExpanded: true,
                            value: titlevalue,
                            items: getMenuItems(),
                            onChanged: (value) {
                              setState(() {
                                titlevalue = value.toString();
                                // selectedvalue="America";
                              });
                            }),
                      ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 10)),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
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
                            hint: Text(_majorValue),
                            style: TextStyle(fontSize: 20),
                            isExpanded: true,
                            value: major,
                            items: majorMenuItems(),
                            onChanged: (value) {
                              setState(() {
                                major = value.toString();
                                // selectedvalue="America";
                              });
                            }),
                      ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 10)),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
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
                            hint: Text(_selectedBoard),
                            style: TextStyle(fontSize: 20),
                            isExpanded: true,
                            value: sboard,
                            items: getMenuItems(),
                            onChanged: (value) {
                              setState(() {
                                sboard = value.toString();
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
                    padding:
                        const EdgeInsets.only(top: 20, left: 30, right: 30),
                    child: TextFormField(
                      controller: _datecontroller,
                      style: TextStyle(fontSize: 15),
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          labelText: 'Year',
                          hintText: 'Select Completed Year',
                          icon: Icon(Icons.calendar_today_rounded),
                          hintStyle: TextStyle(fontSize: 15),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          labelStyle: TextStyle(fontSize: 20),
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
                            _datecontroller.text =
                                DateFormat('yyyy').format(now);
                          });
                        }
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 500, left: 20, right: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EducationButton(
                        Title: _titleValue,
                        Major: _majorValue,
                        Board: _selectedBoard,
                        Year: _datecontroller.text,
                      ),
                    ),
                  );
                },
                child: const Text(
                  'Save',
                  style: TextStyle(fontSize: 27, color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ]),
    ));
  }
}
