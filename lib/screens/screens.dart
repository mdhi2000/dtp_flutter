import 'package:dtp_flutter/screens/form.dart';
import 'package:dtp_flutter/screens/home.dart';
import 'package:flutter/material.dart';

class Screens extends StatefulWidget {
  const Screens({super.key});

  @override
  State<Screens> createState() => _ScreensState();
}

class _ScreensState extends State<Screens> {
  int _selectedIndex = 0;
  
   List<Widget> screens = [];

  void setPageIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  _ScreensState() {
  screens = <Widget>[
      FormsList(
        setPage: setPageIndex,
      ),
      FormWidget(
        setPage: setPageIndex,
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: screens.elementAt(_selectedIndex));
  }
}
