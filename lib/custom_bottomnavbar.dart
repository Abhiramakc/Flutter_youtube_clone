import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  _CustomBottomNavigationBarState createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int selectedIndex = 0;
  Color selectedItemColor = Colors.white;


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(color: Colors.black,blurRadius: 5.0)
          ]
      ),
      child: BottomNavigationBar(
        elevation: 100.0,
        currentIndex: selectedIndex,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.play_arrow), label: 'Shorts'),
          BottomNavigationBarItem(icon: Icon(Icons.add_circle_outline, size: 30.0,), label: 'Add'),
          BottomNavigationBarItem(icon: Icon(Icons.subscriptions), label: 'Subscriptions'),
          BottomNavigationBarItem(icon: Icon(Icons.video_library_outlined,), label: 'Library')
        ],
        onTap: (index) {setState(() {
          selectedIndex = index;
          selectedItemColor = Colors.white;
        });},
        unselectedItemColor: Colors.white54,
        selectedItemColor: selectedItemColor,
      ),
    );
  }
}