import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fyp_ui_design/Login_Screens/login.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'dart:convert';

class ApplicantSignupScreen extends StatefulWidget {
  const ApplicantSignupScreen({super.key});

  @override
  State<ApplicantSignupScreen> createState() => _ApplicantSignupScreenState();
}

final _formKey = GlobalKey<FormState>();
bool isApplicantChecked = false;

TextEditingController _fnamecontroller = TextEditingController();
TextEditingController _lnamecontroller = TextEditingController();
TextEditingController _cniccontroller = TextEditingController();
TextEditingController _contackcontroller = TextEditingController();
TextEditingController _emailcontroller = TextEditingController();
TextEditingController _passcontroller = TextEditingController();

void signUpYou() async {
  var url = "http://192.168.1.102/HrmFypApi/api/UserLogin/Signup";
  var data = {
    "Fname": _fnamecontroller.text,
    "Lname": _lnamecontroller.text,
    "email": _emailcontroller.text,
    "mobile": _contackcontroller.text,
    "cnic": _cniccontroller.text,
    "password": _passcontroller.text,
    "role": "applicant", // Change this to the appropriate value
  };
  var boddy = jsonEncode(data);
  var urlParse = Uri.parse(url);
  try {
    http.Response response = await http.post(urlParse,
        body: boddy, headers: {"Content-Type": "application/json"});
    var dataa = jsonDecode(response.body);
    print(dataa);
  } catch (e) {
    print('Error occurred: $e');
  }
}

class _ApplicantSignupScreenState extends State<ApplicantSignupScreen> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Signup',
          style: TextStyle(
            fontFamily: 'RobotoSlab-Black',
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.w900,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue.shade400,
      ),
      body: Container(
        width: screenWidth,
        height: screenHeight,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.grey, Colors.lightBlueAccent],
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  SizedBox(height: screenHeight * 0.04),
                  Text(
                    'Welcome To Signup Page',
                    style: TextStyle(
                      fontFamily: 'RobotoSlab-Black',
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.04),
                  TextFormField(
                    controller: _fnamecontroller,
                    style: TextStyle(fontSize: 15),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.8),
                      labelText: 'First Name',
                      hintText: 'Enter First Name',
                      prefixIcon: Icon(Icons.supervised_user_circle),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your first name';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  TextFormField(
                    controller: _lnamecontroller,
                    style: TextStyle(fontSize: 15),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.8),
                      labelText: 'Last Name',
                      hintText: 'Enter Last Name',
                      prefixIcon: Icon(Icons.supervised_user_circle),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your last name';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  TextFormField(
                    controller: _cniccontroller,
                    style: TextStyle(fontSize: 15),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.8),
                      labelText: 'CNIC',
                      hintText: 'Enter CNIC',
                      prefixIcon: Icon(Icons.credit_card),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your CNIC';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  TextFormField(
                    controller: _contackcontroller,
                    style: TextStyle(fontSize: 15),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.8),
                      labelText: 'Contact Number',
                      hintText: 'Enter Contact Number',
                      prefixIcon: Icon(Icons.phone),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your contact number';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  TextFormField(
                    controller: _emailcontroller,
                    style: TextStyle(fontSize: 15),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.8),
                      labelText: 'Email',
                      hintText: 'Enter Email',
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      }
                      if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                          .hasMatch(value)) {
                        return 'Please enter a valid email address';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  TextFormField(
                    controller: _passcontroller,
                    style: TextStyle(fontSize: 15),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.8),
                      labelText: 'Password',
                      hintText: 'Enter Password',
                      prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      }
                      if (value.length < 6) {
                        return 'Password must be at least 6 characters long';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: screenHeight * 0.04),
                  Row(
                    children: [
                      Form(
                        child: Checkbox(
                          value: isApplicantChecked,
                          onChanged: (value) {
                            setState(() {
                              isApplicantChecked = value!;
                            });
                          },
                        ),
                      ),
                      const Text(
                        'I Am An Applicant',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.0),
                  ElevatedButton(
                      // set the background color to pink

                      onPressed: () {
                        try {
                          if (_formKey.currentState!.validate() &&
                              isApplicantChecked) {
                            signUpYou();
                          } else {
                            print("Please Chechk The All Fields");
                          }
                        } catch (e) {
                          print('Error occurred: $e');
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text('Error occurred during signup.')),
                          );
                        }
                      },
                      child: Container(
                        width: 200,
                        height: 60,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.blue.shade300,
                              Colors.purple.shade300,
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            'Sign up',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ),
                      )),
                  SizedBox(height: screenHeight * 0.02),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => LoginPage())));
                    },
                    child: const Text(
                      'Already have an account? Sign In',
                      style: TextStyle(
                        fontFamily: 'RobotoSlab-Black',
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
