
import 'package:flutter/material.dart';

import 'package:poll_creation_app/poll_creation_screen/poll_creation_screen.dart';
import 'package:poll_creation_app/utils/utils.dart';

class BottomNavBar
    extends StatefulWidget {
  const BottomNavBar(
      {super.key});

  @override
  State<BottomNavBar>
      createState() =>
          _BottomNavBarState();
}

class _BottomNavBarState
    extends State<
        BottomNavBar> {
  int _selectedIndex =
      0;

  static final List<Widget>
      _widgetOptions =
      <Widget>[
         PollCreationScreen(),
    Text(
        'home'),
   
  ];

  void _onItemTapped(
      int index) {
    setState(
        () {
      _selectedIndex =
          index;
    });
  }

  @override
  Widget build(
      BuildContext
          context) {
    return Scaffold(
      body:
          Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar:
          BottomNavigationBar(
        items:  <BottomNavigationBarItem>[
         
          BottomNavigationBarItem(
            icon: ShaderMask(
            shaderCallback: (Rect bounds) {
              return LinearGradient(
                colors: [kwhite, kblack], 
                begin: Alignment.bottomRight,
                end: Alignment.bottomLeft,
              ).createShader(bounds);
            },
            child: Icon(
              Icons.add,
              size: 35,
              color: Colors.white,
            ),
          ),
        
      
            label: '',
          ),
           BottomNavigationBarItem(
            icon: ShaderMask(
            shaderCallback: (Rect bounds) {
              return LinearGradient(
                colors: const [kwhite, kblack], 
                begin: Alignment.bottomRight,
                end: Alignment.bottomLeft,
              ).createShader(bounds);
            },
            child: Container(
              height: 30,
              decoration: BoxDecoration(
                color: Colors.transparent,
                gradient: LinearGradient(colors: const [kwhite,kblack]),
                image: DecorationImage(image:AssetImage("assets/images/poll.png"))),)
          ),
        
      
            label: '',
          ),
         
          
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: kgrey,
        showUnselectedLabels: true,
        unselectedItemColor: kblack,
        onTap: _onItemTapped,
        backgroundColor: kblack,
      ),
    );
  }
}