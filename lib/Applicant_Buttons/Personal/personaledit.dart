import 'package:flutter/material.dart';
import 'package:fyp_ui_design/Applicant_Buttons/Personal/personal.dart';
import 'package:intl/intl.dart';

class PersonalEdit extends StatefulWidget {
  const PersonalEdit({super.key});

  @override
  State<PersonalEdit> createState() => _PersonalEditState();
}

//Drop down list
// first strin for title only
String _selectedValue = 'none';

String? selectedvalue;
List<String> Cities = ["Rawalpindi", "Islambad", "Lahore", "Karachi"];
List<DropdownMenuItem<String>> getMenuItems() {
  List<DropdownMenuItem<String>> menulist = [];
  Cities.forEach((element) {
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

TextEditingController fnamecontroller = new TextEditingController();
TextEditingController lnamecontroller = new TextEditingController();
TextEditingController cniccontroller = new TextEditingController();
TextEditingController contackcontroller = new TextEditingController();
TextEditingController emailcontroller = new TextEditingController();
TextEditingController _datecontroller = new TextEditingController();

class _PersonalEditState extends State<PersonalEdit> {
  String gval = "none";
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: const Text(
          'PERSONNAL INFO',
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
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
                  child: TextFormField(
                    controller: fnamecontroller,
                    style: TextStyle(fontSize: 15),
                    decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        labelText: 'First Name',
                        hintText: 'Enter First  Name',
                        hintStyle: null,
                        prefixIcon: Icon(Icons.supervised_user_circle),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        labelStyle: TextStyle(fontSize: 20),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
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
                        labelText: 'Last Name',
                        hintText: 'Enter Last  Name',
                        hintStyle: TextStyle(fontSize: 15),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        labelStyle: TextStyle(fontSize: 20),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
              ),
              Container(
                height: 70,
                width: 410,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
                  child: TextFormField(
                    controller: cniccontroller,
                    style: TextStyle(fontSize: 15),
                    decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        labelText: 'CNIC',
                        hintText: 'Enter your CNIC Number',
                        hintStyle: TextStyle(fontSize: 15),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        labelStyle: TextStyle(fontSize: 20),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
              ),
              Container(
                height: 70,
                width: 410,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
                  child: TextFormField(
                    controller: contackcontroller,
                    style: TextStyle(fontSize: 15),
                    decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        labelText: 'Contact',
                        hintText: 'Enter Your Contact Number',
                        hintStyle: TextStyle(fontSize: 15),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        labelStyle: TextStyle(fontSize: 20),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
              ),
              Container(
                height: 70,
                width: 410,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
                  child: TextFormField(
                    controller: emailcontroller,
                    style: TextStyle(fontSize: 15),
                    decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        labelText: 'Email',
                        hintText: 'Enter Your Email Text',
                        hintStyle: TextStyle(fontSize: 15),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        labelStyle: TextStyle(fontSize: 20),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
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
                    controller: _datecontroller,
                    style: TextStyle(fontSize: 15),
                    decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        labelText: 'DOB',
                        hintText: 'Select Your Date Of Birth',
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
                              DateFormat('dd-MM-yyyy').format(now);
                        });
                      }
                    },
                  ),
                ),
              ),
              Container(
                child: Row(children: [
                  const Text(
                    'Gender :',
                    style: TextStyle(fontSize: 24),
                  ),
                  SizedBox(
                    width: 20,
                    child: RadioListTile(
                        title: Text("Male"),
                        value: "Male",
                        groupValue: gval,
                        onChanged: (val) {
                          setState(() {
                            gval = val.toString();
                          });
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 200),
                    child: SizedBox(
                      width: 20,
                      child: RadioListTile(
                          title: const Text(
                            'Female',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          value: "Female",
                          groupValue: gval,
                          onChanged: (val) {
                            setState(() {
                              gval = val.toString();
                            });
                          }),
                    ),
                  ),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25, top: 20),
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
                        Navigator.pushNamed(context, '');
                      },
                      child: const Text(
                        'Cancle',
                        style: TextStyle(fontSize: 27, color: Colors.black),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PesonalButton(
                                firstName: fnamecontroller.text,
                                lastName: lnamecontroller.text,
                                contact: contackcontroller.text,
                                email: emailcontroller.text,
                                date: _datecontroller.text,
                                city: _selectedValue,
                                gval: gval),
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
            ],
          ),
        )
      ]),
    ));
  }
}
