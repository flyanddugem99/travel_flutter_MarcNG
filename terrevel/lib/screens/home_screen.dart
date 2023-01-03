import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/destination_carousel.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  List<IconData> _icons = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.personWalking,
    FontAwesomeIcons.personBiking
    //we create icons for the row widget below the text
  ];

  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
        print(_selectedIndex);
      },
      //GestureDetector itu kalau misal kita pencet icon,nanti indexnya keluar
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          color: _selectedIndex == index
              ? Theme.of(context).colorScheme.secondary
              : Color(0xFFE7EBEE),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Icon(
          _icons[index],
          size: 25.0,
          color: _selectedIndex == index
              ? Theme.of(context).primaryColor
              : Color(0xFFB4C1C4),
        ),
      ),
    );
    //container will be the area outside of the icons, row icons
    //BorderRadius is for the shape of the outside of the icons
    //_icons[index] is passing the index from the fontawesomeicons above
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ListView(
          padding: const EdgeInsets.symmetric(
              vertical: 30.0), // padding for vertical
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                  left: 20.0,
                  right: 120.0), // padding for left and right side of the text
              child: Text(
                'What would you like to find?',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: _icons
                    .asMap()
                    .entries
                    .map(
                      (MapEntry map) => _buildIcon(map.key),
                    )
                    .toList()
                //we convert our _icons to map so we use asMap() method
                //entries is an iterable of map entry
                //then we convert the map to list by using toList() method
                //MainAxisAlignment.spaceAround is for the space between the icons
                ),
            SizedBox(height: 20.0),
            DestinationCarousel(),
          ]),
    ));
  }
}
