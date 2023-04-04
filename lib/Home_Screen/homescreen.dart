import 'package:flutter/material.dart';

import 'package:fyp_ui_design/Login_Screens/login.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/login.png'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            const Padding(
                padding: EdgeInsets.symmetric(vertical: 90, horizontal: 200)),
            const Image(
                height: 200, width: 200, image: AssetImage('images/hrm.png')),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                    width: 2, color: Colors.black, style: BorderStyle.solid),
              ),
              padding: const EdgeInsets.only(top: 10),
              child: const Text(
                'BIIT HRM SYSTEM',
                style: TextStyle(fontSize: 30, fontFamily: 'Rowdies-Bold'),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Container(
              padding: const EdgeInsets.only(top: 0),
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
                border: Border.all(
                    width: 2, color: Colors.black, style: BorderStyle.solid),
              ),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: const Text("Get Started",
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'RobotoSlab-VariableFont_wght',
                          color: Colors.black,
                          decoration: TextDecoration.underline))),
            )
          ],
        ),
      ),
    );
  }
}
