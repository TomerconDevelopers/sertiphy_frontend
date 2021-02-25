import 'package:flutter/material.dart';
import '../globals.dart';

bottomnav()=>
    BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      selectedItemColor: primcol,
      unselectedItemColor: Colors.black,
      selectedFontSize: 14,
      unselectedFontSize: 14,
      onTap: (value) {
        // Respond to item press.
      },
      items: [
        BottomNavigationBarItem(
          title: Text('Home'),
          icon: Icon(Icons.home_outlined),
        ),
        BottomNavigationBarItem(
          title: Text('Quotes'),
          icon: Icon(Icons.music_note),
        ),
        BottomNavigationBarItem(
          title: Text('videos'),
          icon: Icon(Icons.videocam_outlined),
        ),
        BottomNavigationBarItem(
          title: Text('Settings'),
          icon: Icon(Icons.settings_outlined),
        ),
      ],
    );