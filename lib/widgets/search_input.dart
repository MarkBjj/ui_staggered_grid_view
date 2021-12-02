import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchInput extends StatefulWidget {
  @override
  _SearchInputState createState() => _SearchInputState();
}

class _SearchInputState extends State<SearchInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.white54,
        borderRadius: BorderRadius.circular(11.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            spreadRadius: 2.0,
            blurRadius: 7.0,
            offset: Offset(0, 3.0),
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Container(
            margin: EdgeInsets.fromLTRB(6.0, 6.0, 6.0, 2.0),
            child: IconButton(
                // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                icon: const FaIcon(FontAwesomeIcons.search),
                onPressed: () {
                  print("Search Input");
                }),
          ),
          label: const Text('Search'),
          border: InputBorder.none,
          hintText: 'search here',
        ),
      ),
    );
  }
}
