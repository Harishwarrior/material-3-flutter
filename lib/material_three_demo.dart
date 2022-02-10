import 'package:flutter/material.dart';
import 'package:material3/views/home_screen.dart';
import 'package:material3/views/playlist_screen.dart';
import 'package:material3/views/profile_screen.dart';

class MaterialThreeDemo extends StatefulWidget {
  const MaterialThreeDemo({Key? key}) : super(key: key);

  @override
  State<MaterialThreeDemo> createState() => _MaterialThreeDemoState();
}

class _MaterialThreeDemoState extends State<MaterialThreeDemo> {
  int currentIndex = 0;

  List<Widget> screens = [
    HomeScreen(),
    PlaylistScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Material 3 demo"),
      ),
      body: screens.elementAt(currentIndex),
      // use NavigationBar instead of BottomNavigationBar
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentIndex,
        onDestinationSelected: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        // NavigationBar takes destinations instead of items
        destinations: const [
          // also it uses NavigationDestination instead of BottomNavigationBarItem
          NavigationDestination(
            label: "Home",
            icon: Icon(Icons.home),
          ),
          NavigationDestination(
            label: "Playlist",
            icon: Icon(Icons.music_note),
          ),
          NavigationDestination(
            label: "Profile",
            icon: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
