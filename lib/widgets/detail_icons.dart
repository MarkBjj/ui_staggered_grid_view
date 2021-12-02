import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailIcons extends StatefulWidget {
  @override
  State<DetailIcons> createState() => _DetailIconsState();
}

class _DetailIconsState extends State<DetailIcons> {
  int currentIcon = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //mark, compass, travel, hotel, share
          GestureDetector(
            onTap: () {
              setState(() {
                currentIcon = 0;
              });
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                FaIcon(
                  FontAwesomeIcons.envelope,
                  color: currentIcon == 0 ? Colors.red : Colors.green,
                  size: 22.0,
                ),
                Text(
                  'Msg',
                  style: TextStyle(
                    fontSize: 12,
                    color: currentIcon == 0 ? Colors.red : Colors.green,
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                currentIcon = 1;
              });
            },
            child: Column(
              children: [
                FaIcon(
                  FontAwesomeIcons.coffee,
                  color: currentIcon == 1 ? Colors.red : Colors.green,
                  size: 22.0,
                ),
                Text(
                  'Dining',
                  style: TextStyle(
                    fontSize: 12,
                    color: currentIcon == 1 ? Colors.red : Colors.green,
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                currentIcon = 2;
              });
            },
            child: Column(
              children: [
                FaIcon(
                  FontAwesomeIcons.planeDeparture,
                  color: currentIcon == 2 ? Colors.red : Colors.green,
                  size: 22.0,
                ),
                Text(
                  'Flights',
                  style: TextStyle(
                    fontSize: 12,
                    color: currentIcon == 2 ? Colors.red : Colors.green,
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                currentIcon = 3;
              });
            },
            child: Column(
              children: [
                FaIcon(
                  FontAwesomeIcons.hotel,
                  color: currentIcon == 3 ? Colors.red : Colors.green,
                  size: 22.0,
                ),
                Text(
                  'Hotel',
                  style: TextStyle(
                    fontSize: 12,
                    color: currentIcon == 3 ? Colors.red : Colors.green,
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                currentIcon = 4;
              });
            },
            child: Column(
              children: [
                FaIcon(
                  FontAwesomeIcons.share,
                  color: currentIcon == 4 ? Colors.red : Colors.green,
                  size: 22.0,
                ),
                Text(
                  'Share',
                  style: TextStyle(
                    fontSize: 12,
                    color: currentIcon == 4 ? Colors.red : Colors.green,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
