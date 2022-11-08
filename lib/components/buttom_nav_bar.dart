import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavigationBar extends StatelessWidget {
  const BottomNavigationBar({Key? key, required List<BottomNavigationBarItem> items, required int currentIndex, required Color selectedItemColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat,
            color: Colors.grey,
          ),
          label: 'Add',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.explore,
            color: Colors.grey,
          ),
          label: 'Favourites',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings,
            color: Colors.grey,
          ),
          label: 'Profile',
        ),
      ],
      currentIndex: 0,
      selectedItemColor: Colors.black,
    );
  }
}
