import 'package:flutter/material.dart';
import 'package:trogon_media_test2/screens/homescreen/components.dart';
import 'package:trogon_media_test2/screens/mycourse/course.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(
            Icons.menu,
            color: Colors.grey,
          ),
          actions: const [
            Icon(
              Icons.notifications,
              color: Colors.blue,
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 164,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(11)),
                  child: Image.asset(
                    "assets/hisham 3.png",
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Our Programmes",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ProgramGrid(),
                    ProgramGrid(),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ProgramGrid(),
                    ProgramGrid(),
                  ],
                ),
                Image.asset("assets/Group 36439.png")
              ],
            ),
          ),
        ),
       bottomNavigationBar: BottomNavigationBarTrogon(),
        );
  }
}
   
