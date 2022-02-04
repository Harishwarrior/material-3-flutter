import 'package:flutter/material.dart';

class MaterialThreeDemo extends StatelessWidget {
  const MaterialThreeDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Material 3 demo"),
      ),
      body: const Center(
        child: Text("Material 3 demo"),
      ),
      // use NavigationBar instead of BottomNavigationBar
      bottomNavigationBar: NavigationBar(
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
