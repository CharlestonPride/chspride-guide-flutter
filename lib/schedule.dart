import 'package:flutter/material.dart';

import 'drawer.dart';

class SchedulePage extends StatefulWidget {
  const SchedulePage({Key? key}) : super(key: key);

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _SchedulePageState extends State<SchedulePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Sunday',
      style: optionStyle,
    ),
    Text(
      'Monday',
      style: optionStyle,
    ),
    Text(
      'Tuesday',
      style: optionStyle,
    ),
    Text(
      'Wenday',
      style: optionStyle,
    ),
    Text(
      'Thursday',
      style: optionStyle,
    ),
    Text(
      'Friday',
      style: optionStyle,
    ),
    Text(
      'Saturday',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Schedule of Events'),
      ),
      drawer: MyDrawer(),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        selectedIconTheme: IconThemeData(opacity: 0.0, size: 0),
        unselectedIconTheme: IconThemeData(opacity: 0.0, size: 0),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Su',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'M',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Tu',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'We',
            backgroundColor: Colors.pink,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Th',
            backgroundColor: Colors.pink,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'F',
            backgroundColor: Colors.pink,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'S',
            backgroundColor: Colors.pink,
          )
        ],
        currentIndex: _selectedIndex,
        selectedFontSize: 20,
        onTap: _onItemTapped,
      ),
    );
  }
}
