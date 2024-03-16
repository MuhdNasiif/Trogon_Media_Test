import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trogon_media_test2/screens/homescreen/homescreen.dart';
import 'package:trogon_media_test2/screens/mycourse/course.dart';

class ProgramGrid extends StatelessWidget {
  const ProgramGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 164,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(11)),
      child: Column(
        children: [
          Image.asset("assets/hisham 8.png"),
          const Text(
            "Plus One Entrance Oriented Tuition",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}

//-----------------------------------------------------------------------------
class BottomNavigationBarTrogon extends StatelessWidget {
  const BottomNavigationBarTrogon({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedFontSize: 10,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.grid_view_outlined,
          ),
          label: 'My Course',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.notifications,
          ),
          label: 'Notification',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.wifi,
          ),
          label: 'Feed',
        ),
      ],
      onTap: (int index) {
        switch (index) {
          case 0:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomeScreen()),
            );
            break;
          case 1:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyCoursePage()),
            );
            break;
        }
      },
    );
  }
}
