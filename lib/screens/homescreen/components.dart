import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trogon_media_test2/screens/feed/feedscreen.dart';
import 'package:trogon_media_test2/screens/homescreen/homescreen.dart';
import 'package:trogon_media_test2/screens/mycourse/course.dart';



//-----------------------------------------------------------------------------
class BottomNavigationBarTrogon extends StatelessWidget {
  const BottomNavigationBarTrogon({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: true,
      showUnselectedLabels: true,
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
            case 2:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  FeedScreen()),
            );
            break;
        }
      },
    );
  }
}
//-------------------------------------------------------------------------------------------
